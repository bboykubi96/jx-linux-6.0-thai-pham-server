-- script viet hoa By http://tranhba.com  t�ng ph��ng nh� ch�i t� vong ch�n v�n 
Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");
function OnDeath(Launcher) 

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
str = "<#> qu�n Kim "..LaunName.."<#> b� th��ng n�ng t�ng qu�n "..DeathName.."<#> , PK nh�n s� t�ng v� "..pkcount; 
Msg2MSAll(1,str); 
PlayerIndex = OrgPlayer; 
end; 

V = GetMissionV(MS_S_DEATHCOUNT) + 1;
SetMissionV(MS_S_DEATHCOUNT, V); 
SetTask(MS_TOTALKO, GetTask(MS_TOTALKO) + 1);

dataindex = PIdx2MSDIdx(1,PlayerIndex1); 
Pan = GetPMParam(1, dataindex, 1); 
SetPMParam(1, dataindex, 1, Pan + 1);

if (V == MS_PKCOUNT) then 
CheckShowKing(1); 
end; 

end; 
