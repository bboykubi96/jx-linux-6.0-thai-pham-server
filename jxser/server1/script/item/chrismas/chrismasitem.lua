Include("\\script\\lib\\common.lua")
Include("\\script\\missions\\racegame\\lib.lua")
TAB_ACTION = 
{-- script viet hoa By http://tranhba.com { b¶n ®å #missionid#grouptaskid#maxplayercount# cã hay kh«ng v× ®¸nh n¨m thó ho¹t ®éng #{ kinh nghiÖm béi sè # kinh nghiÖm thêi gian }# chui xuèng ®Êt phï cµn kh«n na di phï v¨n mãn } 
{583, 28, 2330, 10, {0}, 10, {2331, 2332}, [[\settings\maps\chrismas\player.txt]], 12}, 
{822, 38, 2399, 10, {0}, 10, {2400, 2401}, [[\settings\maps\chrismas\player.txt]], 12}, 
{824, 40, 2399, 10, {1, 19}, 10, {2410, 2411}, [[\settings\maps\springfestival2006\player.txt]], 19}, 
-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 
{585, 31, 1130, 10, {1, 19}, 10, {1131, 1132}, [[\settings\maps\springfestival2006\player.txt]], 19}, 
{828, 45, 2399, 10, {0}, 10, {0, 0}, [[\settings\maps\dragonboatfestival_06\player.txt]], 23}, 
{826, 43, 2430, 10, {0}, 10, {0, 0}, [[\settings\maps\dragonboatfestival_06\player.txt]], 23}, 
} 

RACE_TAB_ACTION = 
{ 
{nMapId = 863, nMissionId = 53, pPosList = [[\settings\battles\maps\river\outside.txt]]} 
} 


-- script viet hoa By http://tranhba.com  kiÓm tra ®¹o cô cã ®­îc hay kh«ng bÞ sö dông 
function itemmapcheck(TAB_ACTION) 
if (TAB_ACTION == nil or type(TAB_ACTION) ~= "table") then 
return 0; 
end; 
local ww, xx, yy = GetWorldPos(); 
for i = 1, getn(TAB_ACTION) do 
if (TAB_ACTION[i][1] == ww) then 
return i; 
end; 
end; 
return 0; 
end; 

-- script viet hoa By http://tranhba.com  míi biÓu tuÇn tra 
function race_ItemMapCheck() 
if (RACE_TAB_ACTION == nil or type(RACE_TAB_ACTION) ~= "table") then 
return 0; 
end; 
local ww, xx, yy = GetWorldPos(); 
for i = 1, getn(RACE_TAB_ACTION) do 
if (RACE_TAB_ACTION[i].nMapId == ww) then 
return i; 
end; 
end; 
return 0; 
end 


-- script viet hoa By http://tranhba.com  kiÓm tra nªn nhµ ch¬i cã hay kh«ng cßn ®ang trong trß ch¬i , thµnh c«ng trë vÒ PlayerIndex nÕu kh«ng trë vÒ nil 
function check_pl(szPlayName, nMissionID) 
local nPlIdx = SearchPlayer(szPlayName) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë tr­íc mÆt phôc vô khÝ 
if (nPlIdx > 0) then 
local nPlMsIdx = PIdx2MSDIdx(nMissionID, nPlIdx) -- script viet hoa By http://tranhba.com  nhµ ch¬i cã hay kh«ng ë chØ ®Þnh Mission trung 
if (nPlMsIdx > 0) then 
return nPlIdx 
end 
end 
end 

-- script viet hoa By http://tranhba.com  sinh thµnh mét t­¬ng ®èi vu tr­íc mÆt nhµ ch¬i ®Ých chän h¹ng 
function make_option(szFunName) 
local szName = GetName() 
return safeshow(szName).."/#"..szFunName.."('"..safestr(szName).."')" 
end 

-- script viet hoa By http://tranhba.com  t×m ®­îc ®èi lËp trËn doanh , n¨m thó ——> nhµ ch¬i , nhµ ch¬i ——> n¨m thó 
function getgroupid(nGroupId, SMALLMAPCOUNT) 
if (nGroupId < 1) then 
return nil 
end; 

if (nGroupId > SMALLMAPCOUNT) then 
return nGroupId - SMALLMAPCOUNT; 
else 
        return nGroupId + SMALLMAPCOUNT;
end; 
end;
