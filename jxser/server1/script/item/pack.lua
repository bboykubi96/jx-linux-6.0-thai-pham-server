-- script viet hoa By http://tranhba.com  long n®m Æ›ch b‰c qu«n ∏o 
-- script viet hoa By http://tranhba.com by xiaoyang(2004\12\25) 

Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel) 
local curCamp = nt_getCamp() 
Uworld1000 = nt_getTask(1000) 
Uworld1001 = nt_getTask(1001) -- script viet hoa By http://tranhba.com  ch›nh ph∏i 
Uworld1002 = nt_getTask(1002) 
Uworld1003 = nt_getTask(1003) 
Uworld183 = nt_getTask(183) 
Uworld186 = nt_getTask(186) 
Uworld189 = nt_getTask(189) 

if ( Uworld183 == 10 ) then 
AddItem(6,1,132,1,0,0,0) 
AddEventItem(455) 
nt_setTask(183,20) 
elseif ( Uworld186 == 10 ) then 
AddItem(6,1,133,1,0,0,0)-- script viet hoa By http://tranhba.com  trung lÀp 
AddEventItem(456) 
nt_setTask(186,20) 
elseif ( Uworld189 == 10 ) then 
AddItem(6,1,134,1,0,0,0) 
AddEventItem(506) -- script viet hoa By http://tranhba.com  tµ ph∏i 
nt_setTask(189,20) 
else 
return 1; 
end 
if ( Uworld1000 == 440 ) then 
nt_setTask(1000,1000) 
end 
return 0; 
end
