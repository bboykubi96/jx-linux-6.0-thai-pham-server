-- script viet hoa By http://tranhba.com  ng�m th�ng 
-- script viet hoa By http://tranhba.com zhongchaolong 
-- script viet hoa By http://tranhba.com  t�nh ch�t # 
-- script viet hoa By http://tranhba.com  c� th� # v�t , giao d�ch , b�y s�p , b�n �i�m #0 hai # , �i�p gia 
-- script viet hoa By http://tranhba.com  v�t ph�m th��ng ��ch n�i r� # 
-- script viet hoa By http://tranhba.com � m�t lo�i b�nh th��ng b�nh Trung thu � 
-- script viet hoa By http://tranhba.com  ph��ng ph�p s� d�ng # b�n ph�i ki�n �i�m k�ch s� d�ng 
-- script viet hoa By http://tranhba.com  s� d�ng ch�n ch� th�i gian # 2008 n�m 10 th�ng 31 ng�y 24 �i�m 
-- script viet hoa By http://tranhba.com  h�n ch� # 
-- script viet hoa By http://tranhba.com 50 c�p tr� l�n sung tr� gi� nh� ch�i m�i c� th� s� d�ng 
-- script viet hoa By http://tranhba.com  m�i vai tr� nhi�u nh�t ch� c� th� th�ng qua s� d�ng # ng�m h�ng th�ng b�nh # ��t ���c 2 �c kinh nghi�m 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")
function main(nItemIndex) 

zhongqiu0808_ResetTask() 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > zhongqiu0808_ItemEndTime then 
Say("N�n v�t ph�m �� qua s� d�ng k� .",0) 
return 0; 
end 
if zhongqiu0808_PlayerLimit() ~= 1 then 

Say("Y�u c�u 50 c�p tr� l�n th� �� sung tr� gi� ", 0) 
return 1 
end 
local nCurExp = GetTask(zhongqiu0808_TSK_Wangyue) 
if nCurExp >= zhongqiu0808_TSKV_Wangyue then 
Say(format("S� d�ng n�n v�t ph�m �� ��t th��ng h�n %d kinh nghi�m .", zhongqiu0808_TSKV_Wangyue), 0) 
return 1 
end 

local tbAward = {nExp = 500000} 
tbAwardTemplet:GiveAwardByList(tbAward, format("%s", GetItemName(nItemIndex)) ) 
	SetTask(zhongqiu0808_TSK_Wangyue, nCurExp + tbAward.nExp)
end
