Include("\\script\\item\\newyear_2009\\head.lua");

function main() 
newyear0901_resettask(); 
local ndate = tonumber(GetLocalDate("%Y%m%d")); 
if (ndate >= newyear0901_lazhu_expiredtime) then 
Msg2Player("N�n v�t ph�m �� qua k� ."); 
return 0; 
end 
SetTask(newyear0901_TSK_GetExpUpLimit, 300000); 
Say("��i hi�p c� th� ��t ���c ��ch kinh nghi�m tr� gi� cao nh�t v� 30 �c ", 0); 
end