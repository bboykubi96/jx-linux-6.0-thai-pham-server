Include("\\script\\missions\\citywar_arena\\head.lua");

function OnDeath(Launcher) 
curcamp = GetCurCamp(); 
DelMSPlayer(MISSIONID, curcamp); 

PlayerIndex1 = NpcIdx2PIdx(Launcher); -- script viet hoa By http://tranhba.com  murder hung th� 
OrgPlayer = PlayerIndex; -- script viet hoa By http://tranhba.com  ng��i ch�t 
DeathName = GetName(); 

SetFightState(0) 
if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 

		pkcount = GetTaskTemp(MS_TOTALPK) + 1; -- script viet hoa By http://tranhba.com ���㵱ǰ��pk����
		SetTask(MS_TOTALPK, GetTask(MS_TOTALPK) + 1); -- script viet hoa By http://tranhba.com ͳ���ܹ���pk����
SetTaskTemp(MS_TOTALPK, pkcount); 

if (curcamp == 1) then 
str = GetMissionS(2).."<#> k�t th�c "..LaunName.."<#> b� th��ng n�ng ["..DeathName.."<#> ],PK l�y ���c "..pkcount; 
			SetMissionV(MS_TONG2VALUE, GetMissionV(MS_TONG2VALUE) + 1);
elseif (curcamp == 2) then 
str = GetMissionS(1).."<#> k�t th�c "..LaunName.."<#> b� th��ng n�ng ["..DeathName.."<#> ],PK l�y ���c "..pkcount; 
			SetMissionV(MS_TONG1VALUE, GetMissionV(MS_TONG1VALUE) + 1);
elseif (curcamp == 4) then 
str = LaunName.."<#> b� th��ng n�ng ["..DeathName.."<#> ],PK l�y ���c "..pkcount; 
end; 

-- script viet hoa By http://tranhba.com GetBonus(); -- script viet hoa By http://tranhba.com  n�n h�m s� t� b�n ngo�i �i�n th�m , d�ng cho t��ng th��ng nh� ch�i 

Msg2MSAll(MISSIONID, str); 
PlayerIndex = OrgPlayer; 
end; 

	SetTask(MS_TOTALKO, GetTask(MS_TOTALKO) + 1); -- script viet hoa By http://tranhba.com ��¼����������
SetCurCamp(GetCamp()) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
ForbidChangePK(0); 
SetLogoutRV(0) 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetRevPos(20,10); 
SetTaskTemp(JOINSTATE, 0); 
SetFightState(0); 
	NewWorld(WORLDIDXBEGIN + GetMissionV(MS_ARENAID),1633,3292)
end; 
