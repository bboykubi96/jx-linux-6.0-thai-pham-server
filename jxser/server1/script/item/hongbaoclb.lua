Include("\\script\\lib\\awardtemplet.lua")

tbItemAward = { 
{szName = " tö m·ng linh ", tbProp = {6, 1, 2350, 1, 0, 0}, nRate = 0.01}, 
{szName = " huyÒn viªn lµm ", tbProp = {6, 1, 2351, 1, 0, 0}, nRate = 0.05}, 
{szName = " th­¬ng lang lµm ", tbProp = {6, 1, 2352, 1, 0, 0}, nRate = 1}, 
{szName = " v©n léc lµm ", tbProp = {6, 1, 2353, 1, 0, 0}, nRate = 3}, 
{szName = " hçn nguyªn linh lé ", tbProp = {6, 1, 2312, 1, 0, 0}, nRate = 10}, 
{szName = " ®¹i lùc hoµn ", tbProp = {6, 0, 3, 1, 0, 0}, nRate = 5}, 
{szName = " nhanh chãng hoµn ", tbProp = {6, 0, 6, 1, 0, 0}, nRate = 5}, 
{szName = " hoµng kim chi qu¶ ", tbProp = {6, 1, 907, 1, 0, 0}, nRate = 10, nExpiredTime = 10080}, 
{szName = " ngµn n¨m hoµng kim chi qu¶ ", tbProp = {6, 1, 2270, 1, 0, 0}, nRate = 20}, 
{szName = " v¹n n¨m hoµng kim chi qu¶ ", tbProp = {6, 1, 2271, 1, 0, 0}, nRate = 7.94}, 
{szName = " tr¨m n¨m hoµng kim chi qu¶ ", tbProp = {6, 1, 2269, 1, 0, 0}, nRate = 30}, 
{szName = " thÇn bİ qu¸ng th¹ch ", tbProp = {6, 1, 398, 1, 0, 0}, nRate = 1}, 
{szName = " huyÒn thËt ®an ", tbProp = {6, 1, 1678, 1, 0, 0}, nRate = 5, tbParam={15e8}}, 
{szName = " tİm bÇm thËt ®an ", tbProp = {6, 1, 2263, 1, 0, 0}, nRate = 2, tbParam={20e8}}, 
} 

tbExpAward = {szName = "# kinh nghiÖm trŞ gi¸ ", nExp_tl = 50000000} 

TASK_USECOUNT = 2789 
TASK_MONTH = 2790 


function main(nItemIndex) 
local nMonth =tonumber(GetLocalDate("%m")) 

local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex))); 
local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M")); 
if n_cur_date > n_item_date then 
Msg2Player("Nªn vËt phÈm qua sö dông kú , tù ®éng biÕn mÊt .") 
return 0; 
end 

if CalcFreeItemCellCount() < 1 then 
Talk(1, "","§¹i hiÖp ®İch trang bŞ ch­a ®ñ 1 c¸ chç trèng !."); 
return 1 
end 

if (GetTask(TASK_MONTH) ~= nMonth) then 
SetTask(TASK_MONTH, nMonth) 
SetTask(TASK_USECOUNT, 0) 
end 

if (GetTask(TASK_USECOUNT) < 9) then 
		SetTask(TASK_USECOUNT, GetTask(TASK_USECOUNT)+1)
tbAwardTemplet:GiveAwardByList(tbExpAward ,"§¹t ®­îc bao tiÒn l× x× c©u l¹c bé "); 
tbAwardTemplet:GiveAwardByList(tbItemAward ,"§¹t ®­îc bao tiÒn l× x× c©u l¹c bé "); 
return 0 
else 
Msg2Player("VËt phÈm nhiÒu nhÊt chØ cã thÓ mét th¸ng sö dông 9 lÇn !") 
return 1 
end 

end 