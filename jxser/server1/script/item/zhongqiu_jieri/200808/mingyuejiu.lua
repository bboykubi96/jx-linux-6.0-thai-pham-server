-- script viet hoa By http://tranhba.com zhongchaolong 
-- script viet hoa By http://tranhba.com  tr�ng s�ng r��u 
-- script viet hoa By http://tranhba.com  vai tr� s� d�ng tr�ng s�ng say r��u s� g�p hai ph�t tri�n th�ng qua 2 trung b�nh Trung thu # th�y h�ng th�ng b�nh # c�ng # ng�m tr�ng b�nh Trung thu # ��ch kinh nghi�m h�n ch� # t� 15 �c ��n 30 �c kinh nghi�m . 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")
function main() 
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
if GetTask(zhongqiu0808_TSK_mingyuejiu) == 1 then 
Say("Ng�i �� s� d�ng n�n ��o c� li�u .") 
return 1 
end 

SetTask(zhongqiu0808_TSK_mingyuejiu, 1) 
Msg2Player("S� d�ng tr�ng s�ng say r��u , x�y th�ng trung thu b�nh Trung thu c�ng ng�m tr�ng trung thu b�nh Trung thu ��ch kinh nghi�m th��ng h�n �em t�ng ��n 30 �c .") 
end
