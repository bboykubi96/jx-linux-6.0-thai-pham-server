-- script viet hoa By http://tranhba.com zhongchaolong 

-- script viet hoa By http://tranhba.com  chiÕn c«ng 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")

function main(nItemIndex) 
zhongqiu0808_ResetTask() 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > zhongqiu0808_ItemEndTime then 
Say("Nªn vËt phÈm ®· qua kú .",0) 
return 0; 
end 
if zhongqiu0808_PlayerLimit() ~= 1 then 

Say("Ph¶i lµ 50 cÊp trë lªn sung trÞ gi¸ nhµ ch¬i ", 0) 
return 1 
end 

if nCellFreeLimit ~= nil and CalcFreeItemCellCount() < nCellFreeLimit then 
Say(format("V× tr¸nh khái tµi s¶n tæn thÊt , xin/mêi b¶o ®¶m trang bÞ cßn l¹i %d chç trèng .", nCellFreeLimit),0) 
return 1 
end 

local nCurExp = GetTask(zhongqiu0808_TSK_ZhangGongExp) 

if nCurExp >= zhongqiu0808_TSKV_ZhangGongMaxExp then 
Say(format("Sö dông nªn vËt phÈm ®· ®¹t th­îng h¹n %d kinh nghiÖm .", zhongqiu0808_TSKV_ZhangGongMaxExp), 0) 
return 1 
end 


tbAwardTemplet:GiveAwardByList(tbItemAward, format("%s", GetItemName(nItemIndex)) ) 
	SetTask(zhongqiu0808_TSK_ZhangGongExp, nCurExp + tbItemAward[1].nExp)
end
