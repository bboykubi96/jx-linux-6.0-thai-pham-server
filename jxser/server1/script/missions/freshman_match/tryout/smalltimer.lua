Include("\\script\\missions\\freshman_match\\tryout\\head.lua")
function OnTimer() 
	local timer_1 = GetMissionV(MS_TIME_1) + 1
SetMissionV( MS_TIME_1, timer_1 ) 

if ( mod( timer_1, 3 ) == 0 ) then 
		SetMissionV( MS_A_TIME, GetMissionV( MS_A_TIME ) + 1 )
if ( GetMissionV( MS_A_TIME ) < RUN_A_TIME ) then 
local mm = RUN_A_TIME - GetMissionV( MS_A_TIME ) 
Msg2MSAll( MISSIONID,"Ghi danh th�i gian c�n l�i "..mm.." ph�t " ) 
elseif (GetMissionV( MS_A_TIME ) > RUN_A_TIME ) then 
local mm = UP_A_TIME - GetMissionV( MS_A_TIME ) 
Msg2MSAll( MISSIONID,"V�n ��i phi�n tranh t�i k�t th�c th�i gian c�n c� "..mm.." ph�t " ) 
end 
end 

if ( mod( timer_1, 3 ) == 0 ) then 
if ( GetMissionV( MS_A_TIME ) == RUN_A_TIME ) then 
org_mapid = SubWorldIdx2ID( SubWorld ) 
			new_mapid = org_mapid + 1
if (SubWorldID2Idx( new_mapid ) < 0) then 
print( "ANNOUNCE: kh�ng c� v� l�m t�n t� li�n cu�c so t�i cu�c so t�i tr�ng !!!!MAPID = "..new_mapid ) 
return 
end 
SetMissionV( MS_STATE, 2 ) 
if (GetMSPlayerCount(MISSIONID, 0) < CP_PLNUM_LIMT) then 
Msg2MSAll(MISSIONID,"Tranh t�i th�i gian �� ��n , b�i v� l�n n�y tranh t�i nh�n s� kh�ng �� #"..CP_PLNUM_LIMT.." ng��i , t�m ng�ng m�t l�n tranh t�i .") 
cp_clearplstate() 
WriteLog(date( "%Y-%m-%d,%H:%M," ).." ��ng h�ng th� "..GetMissionV( MS_ROUND ).." l�n n�y tranh t�i nh�n s� kh�ng �� #"..CP_PLNUM_LIMT..", t�m ng�ng m�t l�n . m�n ph�i = "..checkmap( 1 ) ) 
return 
end 

Msg2MSAll( MISSIONID,"�� ��n tranh t�i th�i gian , t�t c� tuy�n th� ti�n v�o cu�c so t�i tr�ng " ) 
round = GetMissionV( MS_ROUND ) 
SubWorld = SubWorldID2Idx( new_mapid ) 
OpenMission( MATCH_MS_ID ) 
SetMissionV( 3, round ) 
SubWorld = SubWorldID2Idx( org_mapid ) 
join_match() 
return 
end 
end 

if ( GetMissionV( MS_A_TIME ) == 0 ) then 
return 
end 
if ( mod( timer_1, 3 ) == 0 ) then 
if ( GetMissionV( MS_ROUND ) >= CP_ONEDAY_MAXROUND ) then 
return 
end 
if ( mod( GetMissionV( MS_A_TIME ), UP_A_TIME ) == 0 ) then 
resultstr = " ��ng h�ng th� "..GetMissionV( MS_ROUND ).." th� m�y "..checkmap( 1 ).." v� l�m t�n t� li�n cu�c so t�i m�i v�a k�t th�c , tranh t�i b�t ��u ghi danh ." 
AddGlobalNews( resultstr ) 
			SetMissionV( MS_ROUND, GetMissionV( MS_ROUND ) + 1 )
SetMissionV( MS_A_TIME, 0 ) 
SetMissionV( MS_STATE, 1 ) 
return 
end 
end 
end 