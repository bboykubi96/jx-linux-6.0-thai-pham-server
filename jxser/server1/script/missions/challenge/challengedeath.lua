-- script viet hoa By http://tranhba.com  t�ng ph��ng nh� ch�i t� vong ch�n v�n 
Include("\\script\\missions\\challenge\\challengehead.lua");

function OnDeath(Launcher) 
State = GetMissionV(MS_STATE) ; 
if (State ~= 2) then 
return 
end; 

PlayerIndex1 = NpcIdx2PIdx(Launcher); 
OrgPlayer = PlayerIndex; 
DeathName = GetName(); 

if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 
		pkcount = GetTaskTemp(SJKILLPK) + 1;
SetTaskTemp(SJKILLPK, pkcount); 
str = "<#> t� ph��ng :"..LaunName.."<#> �� th��ng ho�ng ph��ng ��ch "..DeathName.."<#>, b�y gi� PK tr� gi� l� "..pkcount; 
		SetMissionV(MS_S_DEATHCOUNT, GetMissionV(MS_S_DEATHCOUNT) + 1);
Msg2MSAll(MISSIONID,str); 
PlayerIndex = OrgPlayer; 
end; 

if (GetMSPlayerCount(MISSIONID, 1) <= 0 ) then 
Msg2MSAll(MISSIONID,"Tranh t�i k�t th�c , t� ph��ng l�y ���c th�ng l�i cu�i c�ng "); 
DelMSPlayer(MISSIONID, 1); 
CloseMission(MISSIONID); 
return 
end; 

DelMSPlayer(MISSIONID, 1); 
SetLogoutRV(1); 
end; 
