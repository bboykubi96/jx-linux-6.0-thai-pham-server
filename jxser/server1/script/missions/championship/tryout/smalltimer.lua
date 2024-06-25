Include("\\script\\missions\\championship\\tryout\\head.lua")
function OnTimer() 
	local timer_1 = GetMissionV(MS_TIME_1) + 1
SetMissionV(MS_TIME_1, timer_1) 

if (mod(timer_1, 3) == 0 ) then 
		SetMissionV(MS_A_TIME, GetMissionV(MS_A_TIME) + 1)
if (GetMissionV(MS_A_TIME) < RUN_A_TIME) then 
local mm = RUN_A_TIME - GetMissionV(MS_A_TIME) 
Msg2MSAll(MISSIONID,"Ghi danh th�i gian c�n c� "..mm.." ph�n ") 
elseif (GetMissionV(MS_A_TIME) > RUN_A_TIME) then 
local mm = UP_A_TIME - GetMissionV(MS_A_TIME) 
Msg2MSAll(MISSIONID,"V�n n�y tranh t�i k�t th�c th�i gian c�n c� "..mm.." ph�n ") 
end 
end 

if (mod(timer_1, 3) == 0 ) then 
if (GetMissionV(MS_A_TIME) == RUN_A_TIME) then 
org_mapid = SubWorldIdx2ID(SubWorld) 
			new_mapid = org_mapid + 1
if (SubWorldID2Idx( new_mapid ) < 0) then 
print("ERROR: khu v�c n�y trung kh�ng c� m�n ph�i tranh t�i !!!!MAPID = "..new_mapid) 
return 
end 
SetMissionV(MS_STATE, 2) 
if ( org_mapid == 400 or org_mapid == 402 or org_mapid == 414) then -- script viet hoa By http://tranhba.com  n�u v� ���ng m�n # n�m ��c # C�n L�n l� v� 4 ng��i li�n khai cu�c so t�i 
if (GetMSPlayerCount(MISSIONID, 0) < CP_PLNUM_LIMT_ESPECIAL) then 
Msg2MSAll(MISSIONID,"Tranh t�i th�i gian �� ��n , b�i v� l�n n�y tranh t�i nh�n s� kh�ng �� "..CP_PLNUM_LIMT_ESPECIAL.." ng��i , t�m ng�ng tranh t�i 1 l�n ") 
WriteLog(date("%Y-%m-%d,%H:%M,").." ��ng h�ng "..GetMissionV(MS_ROUND).." l�n n�y tham gia d� ch�n cu�c so t�i nh�n s� c�a ch�a �� "..CP_PLNUM_LIMT_ESPECIAL..", t�m ng�ng m�t l�n . m�n ph�i = "..checkmap(1)) 
return 
end 
else 
if (GetMSPlayerCount(MISSIONID, 0) < CP_PLNUM_LIMT) then 
Msg2MSAll(MISSIONID,"Tranh t�i th�i gian �� ��n , b�i v� l�n n�y tranh t�i nh�n s� kh�ng �� "..CP_PLNUM_LIMT.." ng��i , d�ng cu�c so t�i m�t l�n .") 
WriteLog(date("%Y-%m-%d,%H:%M,").." ��ng h�ng "..GetMissionV(MS_ROUND).." l�n n�y d� ch�n cu�c so t�i nh�n s� kh�ng �� "..CP_PLNUM_LIMT..", t�m ng�ng m�t l�n . m�n ph�i = "..checkmap(1)) 
return 
end 
end 
Msg2MSAll(MISSIONID,"Tranh t�i �� ��n gi� , t�t c� tuy�n th� v�o tr�ng ") 
round = GetMissionV(MS_ROUND) 
SubWorld = SubWorldID2Idx(new_mapid) 
OpenMission(MATCH_MS_ID) 
SetMissionV(3, round) 
SubWorld = SubWorldID2Idx(org_mapid) 
join_match() 
return 
end 
end 
if (GetMissionV(MS_A_TIME) == 0) then 
return 
end 
if (mod(timer_1, 3) ==0 ) then 
if (GetMissionV(MS_ROUND) >= CP_ONEDAY_MAXROUND) then 
return 
end 
if (mod(GetMissionV(MS_A_TIME), UP_A_TIME) == 0) then 
resultstr = " ��ng h�ng "..GetMissionV(MS_ROUND)..""..checkmap(1).." m�n ph�i d� ch�n cu�c so t�i m�i v�a k�t th�c . m�t v�ng m�i ��ch tranh t�i �� m� m�i b�o danh ." 
AddGlobalNews(resultstr) 
			SetMissionV(MS_ROUND, GetMissionV(MS_ROUND) + 1)
SetMissionV(MS_A_TIME, 0) 
SetMissionV(MS_STATE, 1) 
return 
end 
end 
end 
