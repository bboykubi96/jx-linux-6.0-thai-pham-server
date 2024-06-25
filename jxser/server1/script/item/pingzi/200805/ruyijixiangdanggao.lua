Include("\\script\\lib\\awardtemplet.lua")
Include ("\\script\\lib\\pay.lua")
Include("\\script\\event\\pingzi\\200805\\head.lua")
ruyijixiangdangao_tbItemList= 

{ 
[1761] = {szName=" nh­ ý b¸nh ngät ", nExp = 1500000 }, 
[1762] = {szName=" c¸t t­êng b¸nh ngät ", nExp = 3000000 }, 

} 

function main(nItemIndex) 
pingzi0805:ResetTask() 
local nItemData = 20080731; 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
local nCurExp = GetTask(pingzi0805.TSK_ExpLimit) 
if nDate > nItemData then 
Msg2Player("VËt phÈm qua sö dông kú , tù ®éng biÕn mÊt .") 
return 0; 
end 

local _, _, nId = GetItemProp(nItemIndex); 

if GetLevel() < 50 or IsCharged() == 0 then 
Say("50 cÊp ®· sung trÞ gi¸ nhµ ch¬i míi cã thÓ sö dông .", 0) 
return 1; 
end 

if nCurExp >= pingzi0805.nMaxExpLimit then 
Say("§· ®¹t lÇn nµy ho¹t ®éng kinh nghiÖm th­îng h¹n , kh«ng thÓ tiÕp tôc sö dông .", 0) 
return 1 
end 
local tbItem = ruyijixiangdangao_tbItemList[nId] 
tbAwardTemplet:GiveAwardByList(tbItem,"Chóc mõng vâ l©m truyÒn kú 3 tuæi ch¼n b¸nh ngät .") 
	SetTask(pingzi0805.TSK_ExpLimit, nCurExp + tbItem.nExp)
return 0 
end 

function GetDesc(nItemIndex) 
local nYear = 2008 
local nMonth = 07 
local nDay = 31 
if nYear == 0 and nMonth == 0 and nDay == 0 then 
return "<color=red> vËt phÈm ®· qua sö dông kú <color>" 
end 
return format("<color=green> sö dông kú h¹n g: %d-%d-%d<color>",nDay, nMonth, nYear) 
end