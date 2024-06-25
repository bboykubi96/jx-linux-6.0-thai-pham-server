Include("\\script\\missions\\challengeoftime\\include.lua")
TSK_Longxuewan_Date = 2641 
TSK_Longxuewan_Use = 2642 
function main() 
-- script viet hoa By http://tranhba.com  if (GetLevel() < 90 or GetExtPoint(0) == 0) then 
-- script viet hoa By http://tranhba.com  Say("Nhµ ch¬i cÇn 90 cÊp trë lªn th¶ ®· sung trÞ gi¸ míi cã thÓ sö dông ", 0); 
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
Say("Mçi ngµy chØ cã thÓ sö dông 2 c¸ long huyÕt hoµn ", 0); 
return 1 
end 


	SetTask(1550, GetTask(1550) + 1);
	SetTask(TSK_Longxuewan_Use, GetTask(TSK_Longxuewan_Use) + 1);
Say("NhiÒu ®¹t ®­îc mét lÇn tham gia ho¹t ®éng ®Ých c¬ héi < khiªu chiÕn thêi gian >!", 0); 
end
