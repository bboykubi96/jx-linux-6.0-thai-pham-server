Include("\\script\\missions\\freshman_match\\tryout\\head.lua")
function OnTimer() 
	local timer_1 = GetMissionV(MS_TIME_1) + 1
SetMissionV( MS_TIME_1, timer_1 ) 

if ( mod( timer_1, 3 ) == 0 ) then 
		SetMissionV( MS_A_TIME, GetMissionV( MS_A_TIME ) + 1 )
if ( GetMissionV( MS_A_TIME ) < RUN_A_TIME ) then 
local mm = RUN_A_TIME - GetMissionV( MS_A_TIME ) 
Msg2MSAll( MISSIONID,"Ghi danh thêi gian cßn l¹i "..mm.." phót " ) 
elseif (GetMissionV( MS_A_TIME ) > RUN_A_TIME ) then 
local mm = UP_A_TIME - GetMissionV( MS_A_TIME ) 
Msg2MSAll( MISSIONID,"Vèn ®æi phiªn tranh tµi kÕt thóc thêi gian cßn cã "..mm.." phót " ) 
end 
end 

if ( mod( timer_1, 3 ) == 0 ) then 
if ( GetMissionV( MS_A_TIME ) == RUN_A_TIME ) then 
org_mapid = SubWorldIdx2ID( SubWorld ) 
			new_mapid = org_mapid + 1
if (SubWorldID2Idx( new_mapid ) < 0) then 
print( "ANNOUNCE: kh«ng cã vâ l©m t©n tó liªn cuéc so tµi cuéc so tµi trµng !!!!MAPID = "..new_mapid ) 
return 
end 
SetMissionV( MS_STATE, 2 ) 
if (GetMSPlayerCount(MISSIONID, 0) < CP_PLNUM_LIMT) then 
Msg2MSAll(MISSIONID,"Tranh tµi thêi gian ®· ®Õn , bëi v× lÇn nµy tranh tµi nh©n sè kh«ng ®ñ #"..CP_PLNUM_LIMT.." ng­êi , t¹m ngõng mét lÇn tranh tµi .") 
cp_clearplstate() 
WriteLog(date( "%Y-%m-%d,%H:%M," ).." ®øng hµng thø "..GetMissionV( MS_ROUND ).." lÇn nµy tranh tµi nh©n sè kh«ng ®ñ #"..CP_PLNUM_LIMT..", t¹m ngõng mét lÇn . m«n ph¸i = "..checkmap( 1 ) ) 
return 
end 

Msg2MSAll( MISSIONID,"§· ®Õn tranh tµi thêi gian , tÊt c¶ tuyÓn thñ tiÕn vµo cuéc so tµi trµng " ) 
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
resultstr = " ®øng hµng thø "..GetMissionV( MS_ROUND ).." thø mÊy "..checkmap( 1 ).." vâ l©m t©n tó liªn cuéc so tµi míi võa kÕt thóc , tranh tµi b¾t ®Çu ghi danh ." 
AddGlobalNews( resultstr ) 
			SetMissionV( MS_ROUND, GetMissionV( MS_ROUND ) + 1 )
SetMissionV( MS_A_TIME, 0 ) 
SetMissionV( MS_STATE, 1 ) 
return 
end 
end 
end 