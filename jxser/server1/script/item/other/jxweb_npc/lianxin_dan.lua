Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");

function main(nItemIndex) 
if GetItemParam(nItemIndex, 1) == 0 or GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","N�n v�t ph�m �� qua k� ") 
return 0 
end 

if IsCharged() ~= 1 then 
Talk(1,"","�� sung tr� gi� nh�n v�t m�i c� th� s� d�ng n�n v�t ph�m .") 
return 1 
end 

if GetLevel() < 50 then 
Talk(1,"","C�p b�c ch�a �� 50 , luy�n n�a t�p �i ") 
return 1 
end 

IpResetTask(); 

if GetTask(TASKID_USE_TIMES) >= 6 then 
Talk(1,"","M�i ng��i ch� c� th� s� d�ng n�n v�t ph�m nhi�u nh�t v� 6 l�n ") 
return 1 
end 

if CalcFreeItemCellCount() < 2 then 
Talk(1,"", format("Trang b� ch� tr�ng ch�a �� %d c� , xin/m�i l�n n�a an b�i .", 2)) 
return 1 
end 

if GetTask(TASKID_CUR_EXP) >= MAX_EXP then 
Talk(1,"","Ng��i �� ��t t�i th��ng h�n 1500000000 kinh nghi�m tr� gi� , kh�ng th� s� ti�p t�c s� d�ng .") 
return 1 
end 

local nAddExp = ITEM_EXP 
	if GetTask(TASKID_CUR_EXP) + ITEM_EXP > MAX_EXP then
nAddExp = MAX_EXP - GetTask(TASKID_CUR_EXP) 
end 

	SetTask(TASKID_CUR_EXP, GetTask(TASKID_CUR_EXP) + nAddExp)
	SetTask(TASKID_USE_TIMES, GetTask(TASKID_USE_TIMES) + 1)
AddOwnExp(nAddExp) 
Msg2Player("Ng�i ��t ���c "..nAddExp.." kinh nghi�m tr� gi� .") 
end