-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##sapling.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2008-01-16 10:54:26 
-- script viet hoa By http://tranhba.com  tõ 2008 n¨m 02 th¸ng 02 sè – 2008 n¨m 03 th¸ng 02 sè 24 ®iÓm 00 
-- script viet hoa By http://tranhba.com  tÝnh chÊt : 
-- script viet hoa By http://tranhba.com - ch¬i ®­îc dÞch , bµy s¹p , bá hoang , b¸n shop = 0 hai . 
-- script viet hoa By http://tranhba.com - kh«ng thÓ ®iÖp gia 

-- script viet hoa By http://tranhba.com  giíi h¹n : 
-- script viet hoa By http://tranhba.com - sö dông ®¹o cô lóc kh«ng h¹n chÕ vai trß cÊp bËc . 
-- script viet hoa By http://tranhba.com - mçi vai trß mçi ngµy chØ nh­ng lo¹i 8 gèc c©y . 
-- script viet hoa By http://tranhba.com  ph­¬ng ph¸p sö dông : bªn ph¶i kiÖn ®iÓm kÝch 


-- script viet hoa By http://tranhba.com Include("\\script\\event\\springfestival08\\luckplanting\\head.lua")
Include("\\script\\event\\springfestival08\\luckplanting\\treehead.lua")
Include("\\script\\global\\judgeoffline_limit.lua")
IncludeLib("ITEM") 
-- script viet hoa By http://tranhba.com Event tr#g c# may m l­ìng - Modified by DinhHQ - 20110518 

nTSK_USE_COUNT_LIMIT = 2728 
nUSE_COUNT_LIMIT = 500 

function main(nItemIndex) 
local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex))); 
local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M")); 
if n_cur_date > n_item_date then 
Msg2Player("VËt phÈm ®· qua kú , kh«ng thÓ sö dông .") 
return 1; 
end 

if (GetTask(nTSK_USE_COUNT_LIMIT) >= nUSE_COUNT_LIMIT) then 
Talk(1, "", " lo¹i c©y ®¹t tíi giíi h¹n , kh«ng thÓ n÷a trång !") 
return 1 
end 

if not sapling_checkmap() then 
Msg2Player("ChØ cã thÓ ë tay míi th«n cïng thµnh phè sö dông ") 
return 1 
end 

if offlineCheckPermitRegion() == 0 then 
Msg2Player("Tèt nhÊt kh«ng muèn ë nhiÒu ng­êi ®Ých ®Þa ph­¬ng lo¹i .") 
return 1; 
end 

	SetTask(nTSK_USE_COUNT_LIMIT, GetTask(nTSK_USE_COUNT_LIMIT) + 1)
local _, nX, nY = GetWorldPos(); 
if (plantTree_0801(1, SubWorld, nX*32, nY*32, format("C©y %s",GetName()), FileName2Id(GetName()), GetRoleCreateTimeData() ) == 0) then 
return 1; 
end; 
return 0 
end 

function bak_main(nItemIndex) 
do return end 
local nData_E = GetItemParam(nItemIndex, 1); 
local nUseCountLimit = 8 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
local nDateYmd = tonumber(GetLocalDate("%Y%m%d")) 
local nTSKV = GetTask(TSK_sapling_UseCountLimit) 

if nData_E <= nDateYmd then 
Msg2Player("Nªn vËt phÈm ®· qua kú , kh«ng thÓ sö dông .", 0) 
return 0; 
end 
if not sapling_checkmap() then 
Msg2Player("ChØ cã thÓ ë c¸c th«n trÊn ®Ých kh«ng ph¶i lµ chiÕn ®Êu khu vùc sö dông .") 
return 1 
end 

if offlineCheckPermitRegion() == 0 then 
Msg2Player("Tèt nhÊt kh«ng muèn ë nhiÒu ng­êi ®Ých ®Þa ph­¬ng lo¹i .") 
return 1; 
end 

if nDate ~= floor(nTSKV/256) then 
nTSKV = nDate * 256 -- script viet hoa By http://tranhba.com  thanh linh còng thê× gian ®æi míi 
end 
if mod(nTSKV,256) >= nUseCountLimit then -- script viet hoa By http://tranhba.com  sè lÇn 
Say(format("Ngµi h«m nay ®· lo¹i <color=yellow>%d<color> c©y , ngµy mai tiÕp tôc lo¹i nga ", nUseCountLimit), 0) 
return 1; 
end 

-- script viet hoa By http://tranhba.com  sinh ra 
local _, nX, nY = GetWorldPos(); 
-- script viet hoa By http://tranhba.com local nNpcIdx = AddNpc(711, 1, SubWorld, (nX-1)*32, (nY-1)*32, 1, format("%s ®Ých c©y ",GetName())); 
	if (plantTree_0801(1, SubWorld, (nX+random(-2,2))*32, (nY+random(-2,2))*32, format("Ê÷%s",GetName()), FileName2Id(GetName()), GetRoleCreateTimeData() ) == 0) then
return 1; 
end; 

	SetTask(TSK_sapling_UseCountLimit, nTSKV+1);
end 

function sapling_checkmap() 
local tbCityMap = 
{ 
[174] = 1,-- script viet hoa By http://tranhba.com  long tuyÒn 
[121] = 1, -- script viet hoa By http://tranhba.com  long m«n 
[153] = 1, -- script viet hoa By http://tranhba.com  th¹ch cæ 
[101] = 1,-- script viet hoa By http://tranhba.com  ®¹o h­¬ng th«n 
[99] = 1, -- script viet hoa By http://tranhba.com  vÜnh nh¹c 
[100] = 1,-- script viet hoa By http://tranhba.com  Chu tiªn trÊn 
[20] = 1, -- script viet hoa By http://tranhba.com  giang míi 
[53] = 1, -- script viet hoa By http://tranhba.com  ba l¨ng 
[11] = 1, 
[1] = 1, 
[37] = 1, 
[176] = 1, 
[162] = 1, 
[78] = 1, 
[80] = 1, 
} 
return tbCityMap[SubWorldIdx2ID(SubWorld)] and (GetFightState() == 0) 
end
