-- script viet hoa By http://tranhba.com  b¸nh Trung thu 
-- script viet hoa By http://tranhba.com zhongchaolong 
-- script viet hoa By http://tranhba.com  tİnh chÊt # 
-- script viet hoa By http://tranhba.com  cã thÓ # vøt , giao dŞch , bµy s¹p , b¸n ®iÕm #0 hai # , ®iÖp gia 
-- script viet hoa By http://tranhba.com  vËt phÈm th­îng ®İch nãi râ # 
-- script viet hoa By http://tranhba.com “ mét lo¹i b×nh th­êng b¸nh Trung thu ” 
-- script viet hoa By http://tranhba.com  ph­¬ng ph¸p sö dông # bªn ph¶i kiÖn ®iÓm kİch sö dông 
-- script viet hoa By http://tranhba.com  sö dông chÆn chØ thêi gian # 2008 n¨m 10 th¸ng 31 ngµy 24 ®iÓm 
-- script viet hoa By http://tranhba.com  h¹n chÕ # 
-- script viet hoa By http://tranhba.com 50 cÊp trë lªn sung trŞ gi¸ nhµ ch¬i míi cã thÓ sö dông 
-- script viet hoa By http://tranhba.com  mçi vai trß nhiÒu nhÊt chØ cã thÓ th«ng qua sö dông # ng¾m hµng th¸ng bİnh # ®¹t ®­îc 2 øc kinh nghiÖm 





Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")

function main(nItemIndex) 
zhongqiu0808_ResetTask() 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > zhongqiu0808_ItemEndTime then 
Say("Nªn vËt phÈm ®· qua sö dông kú .",0) 
return 0; 
end 

if nCellFreeLimit ~= nil and CalcFreeItemCellCount() < nCellFreeLimit then 
Say(format("V× tr¸nh khái tµi s¶n tæn thÊt , xin/mêi b¶o ®¶m trang bŞ cßn l¹i %d chç trèng .", nCellFreeLimit),0) 
return 1 
end 

if zhongqiu0808_PlayerLimit() ~= 1 then 

Say("Yªu cÇu cÇn 50 cÊp trë lªn th¶ sung trŞ gi¸ ", 0) 
return 1 
end 
local nCurExp = GetTask(zhongqiu0808_TSK_jiansanyue) 

	if nCurExp >= zhongqiu0808_TSKV_jiansanyue * (GetTask(zhongqiu0808_TSK_mingyuejiu) + 1) then
		Say(format("Ê¹ÓÃ¸ÃÎïÆ·ÒÑ´ïÉÏÏŞ%u ¾­Ñé.", 1e6 * zhongqiu0808_TSKV_jiansanyue * (GetTask(zhongqiu0808_TSK_mingyuejiu) + 1) ), 0)
return 1 
end 


tbAwardTemplet:GiveAwardByList(zhongqiuyubing_tbAward, format("%s", GetItemName(nItemIndex)) ) 
	SetTask(zhongqiu0808_TSK_jiansanyue, nCurExp + floor(zhongqiuyubing_tbAward[1].nExp/1e6))
end
