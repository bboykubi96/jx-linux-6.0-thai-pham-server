Include ("\\script\\event\\eventhead.lua")

ARENACOUNT = 8; 
ARENAWLDIDXBEGIN = 213; 
CITYWARIDX = 221; 
CITYCOUNT = 7 

function OnTimer() 
-- script viet hoa By http://tranhba.com  kiÓm tr¾c l«i ®µi cuéc so tµi ®Ých t×nh huèng , khi phï hîp ®iÒu kiÖn lóc tù ®éng më ra l«i ®µi cuéc so tµi 
for i = 1, ARENACOUNT do 
if (IsArenaBegin(i - 1) == 1) then 
			WorldIdx = SubWorldID2Idx(ARENAWLDIDXBEGIN + i - 1)
if (WorldIdx >= 0) then 
SubWorld = WorldIdx 
if (GetMissionV(1) == 0) then 
OpenMission(5) 
end; 
end 
end; 
end; 

-- script viet hoa By http://tranhba.com  kiÓm tr¾c thµnh chiÕn ®Ých t×nh huèng , khi phï hîp ®iÒu kiÖn lóc tù ®éng më ra thµnh chiÕn 
for i = 1, CITYCOUNT do 
if (HaveBeginWar(i) == 1) then 
WorldIdx = SubWorldID2Idx(CITYWARIDX); 
if (WorldIdx >= 0) then 
SubWorld = WorldIdx 
if (GetMissionV(1) == 0) then 
OpenMission(6) 
-- script viet hoa By http://tranhba.com  SetMissionV(MS_GAMERULE, 0); -- script viet hoa By http://tranhba.com  thiÕt trÝ v× cùu b¶n quy t¾c trß ch¬i 
RunMission(6) 
end 
end 
end; 
end; 
end; 
