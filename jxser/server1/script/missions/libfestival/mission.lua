Include([[\script\missions\libfestival\head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

SetMissionV(MS_CO_TIMERSTATE, 1); 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CO_MAPID[2]); 
StartMissionTimer(CO_MISSIONID, CO_FAIRY_SMALLTIMERID, CO_INTERVER); -- script viet hoa By http://tranhba.com  cµ tr∏ch t›nh giÍ kh› 
StartMissionTimer(CO_MISSIONID, CO_REPORT_SMALLTIMERID, CO_RUNINTERVER); -- script viet hoa By http://tranhba.com  b∏o c∏o t›nh giÍ kh› 
SubWorld = OldSubWorld; 
end; 

function EndMission() 
EndMission_add(); 
StopMissionTimer(CO_MISSIONID, CO_FAIRY_SMALLTIMERID); 
StopMissionTimer(CO_MISSIONID, CO_REPORT_SMALLTIMERID); 
end; 

function OnLeave() 
SetLogoutRV(0); 
end 
