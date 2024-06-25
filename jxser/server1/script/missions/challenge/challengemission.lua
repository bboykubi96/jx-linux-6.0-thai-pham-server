Include("\\script\\missions\\challenge\\challengehead.lua")
function InitMission() 
for i = 1, 20 do 
SetMissionV(i , 0); 
end; 
SetMissionV(MS_STATE, 1);-- script viet hoa By http://tranhba.com  cho phÐp b¸o danh 
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
PutMessage("ChiÕn tr­êng chÝnh thøc b¾t ®Çu , tÊt c¶ hµnh ®éng "); 
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
str2 = GetName().." rêi ®i chiÕn tr­êng , "; 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nhµ ch¬i r¬i tuyÕn còng sÏ tõ Mission trung OnLeave , v× vËy kh«ng thÓ ë chç nµy ®iÒu dông SetLogoutRV(0) , nhÊt ®Þnh ph¶i ë ®em nhµ ch¬i NewWorld ra Mission b¶n ®å ®Ých ®Þa ph­¬ng ®iÒu dông Fanghao_Wu 2006-3-21 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
ForbidChangePK(0); 
Msg2MSAll(MISSIONID, str2); 
SetTaskTemp(200, 0); 
if (GetMissionV(MS_STATE) == 1) then 
if (GetMSPlayerCount(MISSIONID, GetCurCamp()) == 0) then 
			SetMissionV(MS_S_JOINED + GetCurCamp() - 1, 0)
end 
end 
end;
