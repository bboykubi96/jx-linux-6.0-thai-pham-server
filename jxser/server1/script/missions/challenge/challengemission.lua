Include("\\script\\missions\\challenge\\challengehead.lua")
function InitMission() 
for i = 1, 20 do 
SetMissionV(i , 0); 
end; 
SetMissionV(MS_STATE, 1);-- script viet hoa By http://tranhba.com  cho ph�p b�o danh 
StartMissionTimer(MISSIONID,10, TIMER_1); 
StartMissionTimer(MISSIONID, 11, TIMER_2); 
end; 

function RunMission() 
SetMissionV(MS_STATE, 2) 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 

if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
if (GetCurCamp() ~= 6) then 
SetFightState(1); 
PutMessage("Chi�n tr��ng ch�nh th�c b�t ��u , t�t c� h�nh ��ng "); 
end 
end; 
end; 
end; 

function EndMission() 
for i = 1, 20 do 
SetMissionV(i , 0); 
end; 
GameOver(); 
StopMissionTimer(MISSIONID, 10); 
StopMissionTimer(MISSIONID, 11); 
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
if (GetMissionV(MS_STATE) == 1) then 
if (GetMSPlayerCount(MISSIONID, GetCurCamp()) == 0) then 
			SetMissionV(MS_S_JOINED + GetCurCamp() - 1, 0)
end 
end 
end;
