-- script viet hoa By http://tranhba.com 2007 n¨m lÔ t×nh nh©n -- script viet hoa By http://tranhba.com  hoa hång 
-- script viet hoa By http://tranhba.com  hoµn mü hoa hång ®á 6,1,1362,1,0,0 
-- script viet hoa By http://tranhba.com  b×nh th­êng hoa hång ®á 6,1,1363,1,0,0 
-- script viet hoa By http://tranhba.com  hoa hång ®á hoa l«i 6,1,1364,1,0,0 

Include("\\script\\event\\valentine2007\\head.lua");

function main(nItemIdx) 
if (checkValentine2007Date(20070306) ~= 1) then 
Say("§ãa hoa hång nµy cÊt gi÷ thê× gian qu¸ dµi , ®· kh« hÐo . ", 0); 
return 0; 
end; 

if (checkValentine2007Limit() ~= 1) then 
Say("Ng­îng ngïng , chØ cã chê cÊp ®¹t tíi <color=yellow>80 cÊp <color> trë lªn dông hé , míi cã thÓ sö dông hoa hång . ", 0); 
return 1; 
end; 

local ng, nd, np = GetItemProp(nItemIdx); 
local nexp = 1; 
if (np == 1362) then 
nexp = 1500000; 
elseif (np == 1363) then 
nexp = 1000000; 
elseif (np == 1364) then 
nexp = 500000; 
else 
print("Error!! It's not Rose for Valentine 2007!!"); 
return 1; 
end; 

local ncurexp = GetTask(TSK_VALENTINE_ROSE_ADDEXP); 
if (ncurexp >= 100000000) then 
Say("Ng­¬i sö dông rÊt nhiÒu hoa hång , c¸i nµy ®ãa hoa hång ®èi víi ng­¬i ®· kh«ng cã hiÖu dông liÔu ", 0); 
Msg2Player("Mçi ng­êi th«ng qua sö dông hoa hång nhiÒu nhÊt ®¹t ®­îc mét øc kinh nghiÖm "); 
return 1; 
	elseif ((ncurexp + nexp) > 100000000) then
nexp = 100000000 - ncurexp 
end; 

AddOwnExp(nexp); 
	SetTask(TSK_VALENTINE_ROSE_ADDEXP, ncurexp + nexp)
Msg2Player(format("Ng­¬i thu ®­îc %d kinh nghiÖm trÞ gi¸ ", nexp)); 
local szlog = format("[2007 lÔ t×nh nh©n ]\t%s\tName:%s\tAccount:%s\t sö dông %s thu ®­îc %d kinh nghiÖm trÞ gi¸ ", 
GetLocalDate("%Y-%m-%d %H:%M:%S"),GetName(),GetAccount(),GetItemName(nItemIdx),nexp); 
WriteLog(szlog); 
end;
