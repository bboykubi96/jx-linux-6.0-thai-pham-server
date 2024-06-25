-- script viet hoa By http://tranhba.com  ng¾m th¸ng 
-- script viet hoa By http://tranhba.com zhongchaolong 
-- script viet hoa By http://tranhba.com  tÝnh chÊt # 
-- script viet hoa By http://tranhba.com  cã thÓ # vøt , giao dÞch , bµy s¹p , b¸n ®iÕm #0 hai # , ®iÖp gia 
-- script viet hoa By http://tranhba.com  vËt phÈm th­îng ®Ých nãi râ # 
-- script viet hoa By http://tranhba.com “ mét lo¹i b×nh th­êng b¸nh Trung thu ” 
-- script viet hoa By http://tranhba.com  ph­¬ng ph¸p sö dông # bªn ph¶i kiÖn ®iÓm kÝch sö dông 
-- script viet hoa By http://tranhba.com  sö dông chÆn chØ thêi gian # 2008 n¨m 10 th¸ng 31 ngµy 24 ®iÓm 
-- script viet hoa By http://tranhba.com  h¹n chÕ # 
-- script viet hoa By http://tranhba.com 50 cÊp trë lªn sung trÞ gi¸ nhµ ch¬i míi cã thÓ sö dông 
-- script viet hoa By http://tranhba.com  mçi vai trß nhiÒu nhÊt chØ cã thÓ th«ng qua sö dông # ng¾m hµng th¸ng bÝnh # ®¹t ®­îc 2 øc kinh nghiÖm 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")
function main(nItemIndex) 

zhongqiu0808_ResetTask() 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > zhongqiu0808_ItemEndTime then 
Say("Nªn vËt phÈm ®· qua sö dông kú .",0) 
return 0; 
end 
if zhongqiu0808_PlayerLimit() ~= 1 then 

Say("Yªu cÇu 50 cÊp trë lªn th¶ ®· sung trÞ gi¸ ", 0) 
return 1 
end 
local nCurExp = GetTask(zhongqiu0808_TSK_Wangyue) 
if nCurExp >= zhongqiu0808_TSKV_Wangyue then 
Say(format("Sö dông nªn vËt phÈm ®· ®¹t th­îng h¹n %d kinh nghiÖm .", zhongqiu0808_TSKV_Wangyue), 0) 
return 1 
end 

local tbAward = {nExp = 500000} 
tbAwardTemplet:GiveAwardByList(tbAward, format("%s", GetItemName(nItemIndex)) ) 
	SetTask(zhongqiu0808_TSK_Wangyue, nCurExp + tbAward.nExp)
end
