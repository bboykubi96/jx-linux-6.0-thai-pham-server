Include ("\\script\\event\\eventhead.lua")

ARENACOUNT = 8; 
ARENAWLDIDXBEGIN = 213; 
CITYWARIDX = 221; 
CITYCOUNT = 7 

function OnTimer() 
-- script viet hoa By http://tranhba.com  ki�m tr�c l�i ��i cu�c so t�i ��ch t�nh hu�ng , khi ph� h�p �i�u ki�n l�c t� ��ng m� ra l�i ��i cu�c so t�i 
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

-- script viet hoa By http://tranhba.com  ki�m tr�c th�nh chi�n ��ch t�nh hu�ng , khi ph� h�p �i�u ki�n l�c t� ��ng m� ra th�nh chi�n 
for i = 1, CITYCOUNT do 
if (HaveBeginWar(i) == 1) then 
WorldIdx = SubWorldID2Idx(CITYWARIDX); 
if (WorldIdx >= 0) then 
SubWorld = WorldIdx 
if (GetMissionV(1) == 0) then 
OpenMission(6) 
-- script viet hoa By http://tranhba.com  SetMissionV(MS_GAMERULE, 0); -- script viet hoa By http://tranhba.com  thi�t tr� v� c�u b�n quy t�c tr� ch�i 
RunMission(6) 
end 
end 
end; 
end; 
end; 
