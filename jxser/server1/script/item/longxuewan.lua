Include("\\script\\missions\\challengeoftime\\include.lua")
TSK_Longxuewan_Date = 2641 
TSK_Longxuewan_Use = 2642 
function main() 
-- script viet hoa By http://tranhba.com  if (GetLevel() < 90 or GetExtPoint(0) == 0) then 
-- script viet hoa By http://tranhba.com  Say("Nh� ch�i c�n 90 c�p tr� l�n th� �� sung tr� gi� m�i c� th� s� d�ng ", 0); 
-- script viet hoa By http://tranhba.com  return 1 
-- script viet hoa By http://tranhba.com  end 

ndate = tonumber(GetLocalDate("%y%m%d")); 
if (ndate ~= GetTask(TSK_Longxuewan_Date)) then 
SetTask(TSK_Longxuewan_Date, ndate); 
SetTask(TSK_Longxuewan_Use, 0); 
if (ndate ~= GetTask(1551)) then 
SetTask(1551, ndate); 
SetTask(1550, COUNT_LIMIT); 
end 
end 

if(GetTask(TSK_Longxuewan_Use) >= 2) then 
Say("M�i ng�y ch� c� th� s� d�ng 2 c� long huy�t ho�n ", 0); 
return 1 
end 


	SetTask(1550, GetTask(1550) + 1);
	SetTask(TSK_Longxuewan_Use, GetTask(TSK_Longxuewan_Use) + 1);
Say("Nhi�u ��t ���c m�t l�n tham gia ho�t ��ng ��ch c� h�i < khi�u chi�n th�i gian >!", 0); 
end
