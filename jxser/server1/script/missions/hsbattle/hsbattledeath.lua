Include("\\script\\missions\\hsbattle\\hshead.lua");

function OnDeath(Launcher) 
curcamp = GetCurCamp(); 
DelMSPlayer(MISSIONID, curcamp); 
SetLogoutRV(1); 

PlayerIndex1 = NpcIdx2PIdx(Launcher); -- script viet hoa By http://tranhba.com  murder hung th� 
OrgPlayer = PlayerIndex; -- script viet hoa By http://tranhba.com  ng��i ch�t 
DeathName = GetName(); 

if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 

		pkcount = GetTaskTemp(MS_TOTALPK) + 1; -- script viet hoa By http://tranhba.com ���㵱ǰ��pk����
		SetTask(MS_TOTALPK, GetTask(MS_TOTALPK) + 1); -- script viet hoa By http://tranhba.com ͳ���ܹ���pk����
SetTaskTemp(MS_TOTALPK, pkcount); 

if ( curcamp == 1) then 
str = GetMissionS(2).."<#> k�t th�c "..LaunName.."<#> tr�ng th��ng li�u ["..DeathName.."<#> ], PK ph�i "..pkcount; 
			SetMissionV(MS_TONG2VALUE, GetMissionV(MS_TONG2VALUE) + PKWINBONUS);
SetMissionV(MS_TONG1VALUE, GetMissionV(MS_TONG1VALUE) - LOSEBONUS); 
elseif (curcamp == 2) then 
str = GetMissionS(1).."<#> k�t th�c "..LaunName.."<#> tr�ng th��ng li�u ["..DeathName.."<#> ], PK ph�i "..pkcount; 
			SetMissionV(MS_TONG1VALUE, GetMissionV(MS_TONG1VALUE) + PKWINBONUS);
SetMissionV(MS_TONG2VALUE, GetMissionV(MS_TONG2VALUE) - LOSEBONUS); 
elseif (curcamp == 4) then 
str = LaunName.."<#> tr�ng th��ng li�u ["..DeathName.."<#> ], PK ph�i "..pkcount; 
end; 

-- script viet hoa By http://tranhba.com GetBonus(); -- script viet hoa By http://tranhba.com  n�n h�m s� t� b�n ngo�i �i�n th�m , d�ng cho t��ng th��ng nh� ch�i 

Msg2MSAll(MISSIONID, str); 
PlayerIndex = OrgPlayer; 
end; 


	SetTask(MS_TOTALKO, GetTask(MS_TOTALKO) + 1); -- script viet hoa By http://tranhba.com ��¼����������
SetCurCamp(GetCamp()) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetRevPos(99,43); 

SetTaskTemp(JOINSTATE, 0); 
end; 
