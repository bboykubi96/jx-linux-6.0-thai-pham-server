-- script viet hoa By http://tranhba.com zhongchaolong 

-- script viet hoa By http://tranhba.com  chi�n c�ng 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")

function main(nItemIndex) 
zhongqiu0808_ResetTask() 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > zhongqiu0808_ItemEndTime then 
Say("N�n v�t ph�m �� qua k� .",0) 
return 0; 
end 
if zhongqiu0808_PlayerLimit() ~= 1 then 

Say("Ph�i l� 50 c�p tr� l�n sung tr� gi� nh� ch�i ", 0) 
return 1 
end 

if nCellFreeLimit ~= nil and CalcFreeItemCellCount() < nCellFreeLimit then 
Say(format("V� tr�nh kh�i t�i s�n t�n th�t , xin/m�i b�o ��m trang b� c�n l�i %d ch� tr�ng .", nCellFreeLimit),0) 
return 1 
end 

local nCurExp = GetTask(zhongqiu0808_TSK_ZhangGongExp) 

if nCurExp >= zhongqiu0808_TSKV_ZhangGongMaxExp then 
Say(format("S� d�ng n�n v�t ph�m �� ��t th��ng h�n %d kinh nghi�m .", zhongqiu0808_TSKV_ZhangGongMaxExp), 0) 
return 1 
end 


tbAwardTemplet:GiveAwardByList(tbItemAward, format("%s", GetItemName(nItemIndex)) ) 
	SetTask(zhongqiu0808_TSK_ZhangGongExp, nCurExp + tbItemAward[1].nExp)
end
