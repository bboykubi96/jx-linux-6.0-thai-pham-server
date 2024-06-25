-- script viet hoa By http://tranhba.com  tèng ph­¬ng nhµ ch¬i tö vong ch©n vèn 
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
str = "<#> hoµng ph­¬ng :"..LaunName.."<#> ®¶ th­¬ng tö ph­¬ng ®Ých "..DeathName.."<#>, b©y giê PK trÞ gi¸ lµ "..pkcount; 
Msg2MSAll(MISSIONID,str); 
		SetMissionV(MS_J_DEATHCOUNT, GetMissionV(MS_J_DEATHCOUNT) + 1);
PlayerIndex = OrgPlayer; 
end; 
if (GetMSPlayerCount(MISSIONID, 2) <= 0 ) then 
Msg2MSAll(MISSIONID,"Tranh tµi kÕt thóc , hoµng ph­¬ng lÊy ®­îc th¾ng lîi cuèi cïng "); 
DelMSPlayer(MISSIONID, 2); 
SetLogoutRV(1); 
CloseMission(MISSIONID); 
return 
end; 
DelMSPlayer(MISSIONID, 2); 
SetLogoutRV(1); 
end; 
