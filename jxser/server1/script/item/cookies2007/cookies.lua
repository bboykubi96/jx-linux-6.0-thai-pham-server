-- script viet hoa By http://tranhba.com 2007 ®Çu th¸ng ba ba -- script viet hoa By http://tranhba.com  thiªu bÝnh 
-- script viet hoa By http://tranhba.com  hoµn mü thiªu bÝnh 6,1,1395,1,0,0 
-- script viet hoa By http://tranhba.com  b×nh th­êng thiªu bÝnh 6,1,1396,1,0,0 
-- script viet hoa By http://tranhba.com  kh«ng thôc ®Ých thiªu bÝnh 6,1,1397,1,0,0 

Include("\\script\\event\\cookies2007\\head.lua");

function main(nItemIdx) 
if (checkcookies2007Date(20070506) ~= 1) then 
Say("Nªn bÝnh ®· qua sö dông kú , nhanh lªn mét chót vøt bá ", 0); 
return 0; 
end; 

if (checkcookies2007Limit() ~= 1) then 
Say("ThËt lµ ng­îng ngïng , chØ cã nhµ ch¬i <color=yellow>50 cÊp trë lªn th¶ sung trÞ gi¸ <color> míi cã thÓ ¨n bÝnh .", 0); 
return 1; 
end; 

local ng, nd, np = GetItemProp(nItemIdx); 
local nexp = 1; 
if (np == 1395) then 
nexp = 800000; 
elseif (np == 1396) then 
nexp = 500000; 
elseif (np == 1397) then 
nexp = 300000; 
else 
print("Error!! It's not Rose for Valentine 2007!!"); 
return 1; 
end; 

local ncurexp = GetTask(TSK_33_COOKIES_ADDEXP); 
if (ncurexp >= 300000000) then 
Say("Ngµi ®· ¨n rÊt nhiÒu bÝnh liÔu , kh«ng thÓ ¨n n÷a liÔu .", 0); 
Msg2Player("¡n bÝnh lóc , mçi ng­êi chØ ®¹t ®­îc 3 øc kinh nghiÖm trÞ gi¸ ."); 
return 1; 
	elseif ((ncurexp + nexp) > 300000000) then
nexp = 300000000 - ncurexp 
end; 

AddOwnExp(nexp); 
	SetTask(TSK_33_COOKIES_ADDEXP, ncurexp + nexp)
Msg2Player(format("Ngµi ®¹t ®­îc %d kinh nghiÖm trÞ gi¸ ", nexp)); 
local szlog = format("[2007 3 th¸ng 3]\t%s\tName:%s\tAccount:%s\t sö dông %s ®¹t ®­îc %d kinh nghiÖm trÞ gi¸ ", 
GetLocalDate("%Y-%m-%d %H:%M:%S"),GetName(),GetAccount(),GetItemName(nItemIdx),nexp); 
WriteLog(szlog); 
end;
