Include("\\script\\item\\shengdan_jieri\\200811\\head.lua");

function main() 
christmas_resettask(); 
if (GetTask(christmas_bingjing_taskid) == 300000) then 
Say("��i hi�p �� s� d�ng ��i b�ng tinh li�u , kh�ng th� ti�p t�c s� d�ng .", 0); 
return 1; 
end 
SetTask(christmas_bingjing_taskid, 200000); 
Say("Tr��c m�t ��i hi�p c� th� ��t ���c cao nh�t kinh nghi�m v� 20 �c ", 0); 
end