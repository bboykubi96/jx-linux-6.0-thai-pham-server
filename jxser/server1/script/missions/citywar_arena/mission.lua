Include("\\script\\missions\\citywar_arena\\head.lua")
function InitMission() 
for i = 1, 40 do 
SetMissionV(i,0);-- script viet hoa By http://tranhba.com  cho ph�p b�o danh 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 
WorldID = SubWorldIdx2ID(SubWorld); 
if (WorldID >= WORLDIDXBEGIN) then 
SetMissionV(MS_ARENAID , WorldID - WORLDIDXBEGIN); 
tong1, tong2 = GetArenaBothSides(GetMissionV(MS_ARENAID)); 
if (tong1 ~= "" and tong2 ~= "") then 
SetMissionS(1, tong1) 
SetMissionS(2, tong2) 
SetMissionS(3, GetCityAreaName(GetArenaCityArea(WorldID - WORLDIDXBEGIN)) ) 
SetMissionV(MS_STATE, 1); 
StartMissionTimer(MISSIONID, 16, TIMER_1); 
StartMissionTimer(MISSIONID, 17, TIMER_2); 
end; 
end; 
end; 

function RunMission() 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 

if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
SetFightState(1); 
end 
end; 
SetMissionV(MS_STATE, 2);-- script viet hoa By http://tranhba.com  cho ph�p b�o danh 
end; 

function EndMission() 
for i = 1, 20 do 
SetMissionV(i , 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 

GameOver(); 
StopMissionTimer(MISSIONID, 16); 
StopMissionTimer(MISSIONID, 17); 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
str2 = GetName().." r�i �i chi�n tr��ng , "; 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nh� ch�i r�i tuy�n c�ng s� t� Mission trung OnLeave , v� v�y kh�ng th� � ch� n�y �i�u d�ng SetLogoutRV(0) , nh�t ��nh ph�i � �em nh� ch�i NewWorld ra Mission b�n �� ��ch ��a ph��ng �i�u d�ng Fanghao_Wu 2006-3-21 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
ForbidChangePK(0); 
Msg2MSAll(MISSIONID, str2); 
SetTaskTemp(200, 0); 
end;
