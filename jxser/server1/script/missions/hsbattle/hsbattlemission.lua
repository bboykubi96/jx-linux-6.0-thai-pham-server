Include("\\script\\missions\\hsbattle\\hshead.lua")
function InitMission() 
for i = 1, 40 do 
SetMissionV(i,0);-- script viet hoa By http://tranhba.com  cho phÐp b¸o danh 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 
SetMissionV(MS_STATE, 1); 
StartMissionTimer(MISSIONID, 14, TIMER_1); 
StartMissionTimer(MISSIONID, 15, TIMER_2); 
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
SetMissionV(MS_STATE, 2);-- script viet hoa By http://tranhba.com  cho phÐp b¸o danh 
end; 

function EndMission() 
for i = 1, 20 do 
SetMissionV(i , 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 

GameOver(); 
StopMissionTimer(MISSIONID, 14); 
StopMissionTimer(MISSIONID, 15); 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 

if (GetMissionV(MS_STATE) ~=2 and GetCurCamp() ~= 1 and GetCurCamp()~=2 ) then 
str2 = GetName().."<#> rêi ®i cuéc so tµi trµng ."; 
else 
str2 = GetName().."<#> rêi ®i cuéc so tµi trµng ."..GetMissionV(GetCurCamp()).."<#> khÊu trõ mét tÝch ph©n "; 
		SetMissionV(MS_TONG1VALUE + GetCurCamp() - 1, GetMissionV(MS_TONG1VALUE + GetCurCamp() - 1) - 1);
end; 

-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nhµ ch¬i r¬i tuyÕn còng sÏ tõ Mission trung OnLeave , v× vËy kh«ng thÓ ë chç nµy ®iÒu dông SetLogoutRV(0) , nhÊt ®Þnh ph¶i ë ®em nhµ ch¬i NewWorld ra Mission b¶n ®å ®Ých ®Þa ph­¬ng ®iÒu dông Fanghao_Wu 2006-3-21 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
ForbidChangePK(0); 
Msg2MSAll(MISSIONID, str2); 
SetTaskTemp(200, 0); 
end;
