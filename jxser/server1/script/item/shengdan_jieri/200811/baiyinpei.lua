Include("\\script\\item\\shengdan_jieri\\200811\\head.lua");

function main() 
christmas_resettask(); 
if (GetLevel() < 50 or GetExtPoint(0) < 1) then 
Say("Nh� ch�i c�n sung tr� gi� c�ng v�i ��t t�i 50 c�p tr� l�n m�i c� th� s� d�ng b�ch kim b�i .", 0); 
end 
	if (GetTask(christmas_yupei_taskid) + 10000000 <= 200000000) then	
		SetTask(christmas_yupei_taskid, GetTask(christmas_yupei_taskid) + 10000000);
AddOwnExp(10000000); 
else 
Say("�� ��t kinh nghi�m th��ng h�n , kh�ng th� s� d�ng n�a b�ch kim b�i li�u .", 0); 
return 1; 
end 
end