IncludeLib("SETTING") 

TSK_Lingyao_Date = 2640 

function main() 
if ((GetLevel() < 50 or GetExtPoint(0) == 0)and ST_IsTransLife() ~= 1) then 
Say("50 c�p tr� l�n c�ng v�i sung tr� gi� ��ch m�i c� th� s� d�ng ", 0); 
return 1 
end 

ndate = tonumber(GetLocalDate("%y%m%d")); 
if (ndate ~= GetTask(TSK_Lingyao_Date)) then 
SetTask(TSK_Lingyao_Date, ndate); 
AddOwnExp(10000000); 
else 
Say("M�i ng�y ch� c� th� s� d�ng 1 c� ng�n n�m linh d��c ", 0); 
return 1 
end 
local nLastTime = FormatTime2Number(GetCurServerTime()); 
Msg2Player(nLastTime) 
end 