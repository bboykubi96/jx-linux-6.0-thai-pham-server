ARENACOUNT = 8; 
ARENAWLDIDXBEGIN = 213; 
CITYWARIDX = 221; 
CITYCOUNT = 7 
MS_ISDEMO = 81 

function OnTimer() 

-- script viet hoa By http://tranhba.com  ki�m tr�c th�nh chi�n ��ch t�nh hu�ng , khi ph� h�p �i�u ki�n l�c t� ��ng m� ra th�nh chi�n 
WorldIdx = SubWorldID2Idx(CITYWARIDX); 
if (WorldIdx >= 0) then 
SubWorld = WorldIdx 
if (GetMissionV(1) == 0) then 
OpenMission(6) 
SetMissionV(MS_ISDEMO, 1) 
RunMission(6) 
end 
end 
end;
