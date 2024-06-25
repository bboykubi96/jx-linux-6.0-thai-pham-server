-- script viet hoa By http://tranhba.com  kim ph­¬ng nhµ ch¬i tö vong ch©n vèn 
Include("\\script\\missions\\ËÎ½ðÕ½³¡PKÕ½\\ËÎ½ðÕ½³¡Í·ÎÄ¼þ.lua");
function OnDeath(Launcher) 
-- script viet hoa By http://tranhba.com Launcher v× m­u s¸t ng­êi . 

State = GetMissionV(1) ; 
if (State ~= 2) then 
return 
end; 

PlayerIndex1 = NpcIdx2PIdx(Launcher); 
OrgPlayer = PlayerIndex; 
DeathName = GetName(); 

if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 
	pkcount = GetTask(SJKILLPK) + 1;
SetTask(SJKILLPK, pkcount); 
	SetTask(MS_TOTALPK, GetTask(MS_TOTALPK) + 1);
str = "<#> tèng qu©n "..LaunName.."<#> bÞ th­¬ng nÆng qu©n Kim "..DeathName.."<#> , PK nh©n sè t¨ng v× "..pkcount; 
Msg2MSAll(1,str); 
PlayerIndex = OrgPlayer; 
end; 

V = GetMissionV(MS_J_DEATHCOUNT) + 1;
SetMissionV(MS_J_DEATHCOUNT, V); 
SetTask(MS_TOTALKO, GetTask(MS_TOTALKO) + 1);

if (V == MS_PKCOUNT) then 
CheckShowKing(2) 
end; 

dataindex = PIdx2MSDIdx(1,PlayerIndex1); 
Pan = GetPMParam(1, dataindex, 1); 
SetPMParam(1, dataindex, 1, Pan + 1);
end; 
