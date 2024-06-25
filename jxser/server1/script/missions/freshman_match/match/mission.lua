Include("\\script\\missions\\freshman_match\\match\\head.lua")
function InitMission() 
for i = 1, 100 do 
SetMissionV(i , 0); 
end; 
SetMissionS(1, "") 
SetMissionS(2, "") 
StartMissionTimer(MISSIONID, TIMERID_SMALL_INNER, MATCH_TIMER_1); 
StartMissionTimer(MISSIONID, TIMERID_TOTAL_INNER, MATCH_TIMER_2); 
SetMissionV(MS_STATE,1);-- script viet hoa By http://tranhba.com  tuyÓn thñ vµo trµng , chuÈn bÞ thêi gian 1 phót 
end; 

function RunMission() 
local tbPlayer = {}; 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 
if (idx == 0) then 
break 
end; 
tbPlayer[i] = pidx 
end 

for i= 1, getn(tbPlayer) do 
PlayerIndex = tbPlayer[i]; 
SetFightState(1); 
end 
end; 

function EndMission() 
StopMissionTimer(MISSIONID, TIMERID_SMALL_INNER); 
StopMissionTimer(MISSIONID ,TIMERID_TOTAL_INNER); 
GameOver(); 
for i = 1, 100 do 
SetMissionV(i , 0); 
end; 
end; 

function OnLeave(RoleIndex) 
oldindex = PlayerIndex 
PlayerIndex = RoleIndex; 
eny_camp = nt_gettask(CP_TASKID_ENEMY) 
idx = 0 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, eny_camp); 
if (idx == 0) then 
break 
end; 
eny_index = pidx 
end 
if not eny_index then 
return 
end 
if (nt_gettask(CP_TASKID_FLAG) == 1) then 
return 
end 
	nt_settask(CP_TASKID_LOSE, nt_gettask(CP_TASKID_LOSE) + 1)
AddAword(GetLevel(), 15) 

org_name = GetName() 
WriteLog("****************************************************************************") 
WriteLog("Nhµ ch¬i ["..org_name.."] tr­íc m¾t thµnh tÝch v× # th¾ng "..nt_gettask(CP_TASKID_WIN)..", thua "..nt_gettask(CP_TASKID_LOSE)..", cïng "..nt_gettask(CP_TASKID_TIE)..", quyÕt cuéc so tµi "..nt_gettask(CP_TASKID_POINT)) 
WL_clear_pl_state() 

PlayerIndex = eny_index 
eny_name = GetName() 
WL_clear_pl_state() 
	nt_settask(CP_TASKID_POINT, nt_gettask(CP_TASKID_POINT) + 3)
Ladder_NewLadder(checkmap(2), GetName(), nt_gettask(CP_TASKID_POINT), 1) 
	nt_settask(CP_TASKID_WIN, nt_gettask(CP_TASKID_WIN) + 1)
Msg2Player("Ng­¬i ®· <color=green>"..org_name.."<color>, ®¹t ®­îc 3 ph©n ") 
nt_settask(CP_TASKID_FLAG, 1) 
WriteLog("Nhµ ch¬i ["..org_name.."] tr­íc m¾t thµnh tÝch v× # th¾ng "..nt_gettask(CP_TASKID_WIN)..", thua "..nt_gettask(CP_TASKID_LOSE)..", cïng "..nt_gettask(CP_TASKID_TIE)..", quyÕt cuéc so tµi "..nt_gettask(CP_TASKID_POINT)) 
AddAword(GetLevel(), 60) 
tryout_mapid = SubWorldIdx2ID(SubWorld) - 1 
DelMSPlayer(MISSIONID, eny_index, eny_camp) 
SetLogoutRV(0); 
NewWorld(tryout_mapid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
PlayerIndex = oldindex 
Msg2SubWorld("TuyÓn thñ <color=cyan>"..eny_name.."<color> chiÕn th¾ng <color=green>"..org_name.."<color> ®¹t ®­îc th¾ng lîi ") 
WriteLog("TuyÓn thñ <color=cyan>"..eny_name.."<color> chiÕn th¾ng <color=green>"..org_name.."<color> ®¹t ®­îc th¾ng lîi ") 
WriteLog("****************************************************************************") 
end; 
