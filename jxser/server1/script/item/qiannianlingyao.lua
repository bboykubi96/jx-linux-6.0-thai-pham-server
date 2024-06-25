IncludeLib("SETTING") 

TSK_Lingyao_Date = 2640 

function main() 
if ((GetLevel() < 50 or GetExtPoint(0) == 0)and ST_IsTransLife() ~= 1) then 
Say("50 cÊp trë lªn cïng víi sung trÞ gi¸ ®Ých míi cã thÓ sö dông ", 0); 
return 1 
end 

ndate = tonumber(GetLocalDate("%y%m%d")); 
if (ndate ~= GetTask(TSK_Lingyao_Date)) then 
SetTask(TSK_Lingyao_Date, ndate); 
AddOwnExp(10000000); 
else 
Say("Mçi ngµy chØ cã thÓ sö dông 1 c¸ ngµn n¨m linh d­îc ", 0); 
return 1 
end 
local nLastTime = FormatTime2Number(GetCurServerTime()); 
Msg2Player(nLastTime) 
end 