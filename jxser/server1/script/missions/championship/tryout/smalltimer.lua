Include("\\script\\missions\\championship\\tryout\\head.lua")
function OnTimer() 
	local timer_1 = GetMissionV(MS_TIME_1) + 1
SetMissionV(MS_TIME_1, timer_1) 

if (mod(timer_1, 3) == 0 ) then 
		SetMissionV(MS_A_TIME, GetMissionV(MS_A_TIME) + 1)
if (GetMissionV(MS_A_TIME) < RUN_A_TIME) then 
local mm = RUN_A_TIME - GetMissionV(MS_A_TIME) 
Msg2MSAll(MISSIONID,"Ghi danh thêi gian cßn cã "..mm.." ph©n ") 
elseif (GetMissionV(MS_A_TIME) > RUN_A_TIME) then 
local mm = UP_A_TIME - GetMissionV(MS_A_TIME) 
Msg2MSAll(MISSIONID,"V¸n nµy tranh tµi kÕt thóc thêi gian cßn cã "..mm.." ph©n ") 
end 
end 

if (mod(timer_1, 3) == 0 ) then 
if (GetMissionV(MS_A_TIME) == RUN_A_TIME) then 
org_mapid = SubWorldIdx2ID(SubWorld) 
			new_mapid = org_mapid + 1
if (SubWorldID2Idx( new_mapid ) < 0) then 
print("ERROR: khu vùc nµy trung kh«ng cã m«n ph¸i tranh tµi !!!!MAPID = "..new_mapid) 
return 
end 
SetMissionV(MS_STATE, 2) 
if ( org_mapid == 400 or org_mapid == 402 or org_mapid == 414) then -- script viet hoa By http://tranhba.com  nÕu v× §­êng m«n # n¨m ®éc # C«n L«n lµ v× 4 ng­êi liÒn khai cuéc so tµi 
if (GetMSPlayerCount(MISSIONID, 0) < CP_PLNUM_LIMT_ESPECIAL) then 
Msg2MSAll(MISSIONID,"Tranh tµi thêi gian ®· ®Õn , bëi v× lÇn nµy tranh tµi nh©n sè kh«ng ®ñ "..CP_PLNUM_LIMT_ESPECIAL.." ng­êi , t¹m ngõng tranh tµi 1 lÇn ") 
WriteLog(date("%Y-%m-%d,%H:%M,").." ®øng hµng "..GetMissionV(MS_ROUND).." lÇn nµy tham gia dù chän cuéc so tµi nh©n sè cña ch­a ®ñ "..CP_PLNUM_LIMT_ESPECIAL..", t¹m ngõng mét lÇn . m«n ph¸i = "..checkmap(1)) 
return 
end 
else 
if (GetMSPlayerCount(MISSIONID, 0) < CP_PLNUM_LIMT) then 
Msg2MSAll(MISSIONID,"Tranh tµi thêi gian ®· ®Õn , bëi v× lÇn nµy tranh tµi nh©n sè kh«ng ®ñ "..CP_PLNUM_LIMT.." ng­êi , dõng cuéc so tµi mét lÇn .") 
WriteLog(date("%Y-%m-%d,%H:%M,").." ®øng hµng "..GetMissionV(MS_ROUND).." lÇn nµy dù chän cuéc so tµi nh©n sè kh«ng ®ñ "..CP_PLNUM_LIMT..", t¹m ngõng mét lÇn . m«n ph¸i = "..checkmap(1)) 
return 
end 
end 
Msg2MSAll(MISSIONID,"Tranh tµi ®· ®Õn giê , tÊt c¶ tuyÓn thñ vµo trµng ") 
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
resultstr = " ®øng hµng "..GetMissionV(MS_ROUND)..""..checkmap(1).." m«n ph¸i dù chän cuéc so tµi míi võa kÕt thóc . mét vßng míi ®Ých tranh tµi ®· më míi b¸o danh ." 
AddGlobalNews(resultstr) 
			SetMissionV(MS_ROUND, GetMissionV(MS_ROUND) + 1)
SetMissionV(MS_A_TIME, 0) 
SetMissionV(MS_STATE, 1) 
return 
end 
end 
end 
