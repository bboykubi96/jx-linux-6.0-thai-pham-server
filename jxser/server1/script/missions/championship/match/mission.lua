Include("\\script\\missions\\championship\\match\\head.lua")
function InitMission() 
for i = 1, 100 do 
SetMissionV(i , 0); 
end; 
SetMissionS(1, "") 
SetMissionS(2, "") 
StartMissionTimer(MISSIONID, 35, MATCH_TIMER_1); 
StartMissionTimer(MISSIONID, 36, MATCH_TIMER_2); 
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
StopMissionTimer(MISSIONID, 35); 
StopMissionTimer(MISSIONID ,36); 
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
AddAword(GetLevel(), 5, 0) 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nhµ ch¬i r¬i tuyÕn còng sÏ tõ Mission trung OnLeave , v× vËy kh«ng thÓ ë chç nµy ®iÒu dông SetLogoutRV(0) , nhÊt ®Þnh ph¶i ë ®em nhµ ch¬i NewWorld ra Mission b¶n ®å ®Ých ®Þa ph­¬ng ®iÒu dông Fanghao_Wu 2006-3-21 
ForbidChangePK(0); 
SetPKFlag(0) 
org_name = GetName() 
WriteLog("****************************************************************************") 
WriteLog("Nhµ ch¬i ["..org_name.."] b©y giê thµnh tÝch lµ # th¾ng "..nt_gettask(CP_TASKID_WIN)..", b¹i "..nt_gettask(CP_TASKID_LOSE)..", cïng "..nt_gettask(CP_TASKID_TIE)..", cuèi cïng kÕt qu¶ "..nt_gettask(CP_TASKID_POINT)) 
camp = GetCamp(); 
SetCurCamp(camp); 
SetCreateTeam(1); 
DisabledStall(0) -- script viet hoa By http://tranhba.com  cho phÐp bµy s¹p 
SetTaskTemp(200, 0) 
ForbitTrade(0) 
SetFightState(0); 
SetPunish(1); 

PlayerIndex = eny_index 
eny_name = GetName() 
camp = GetCamp(); 
SetCurCamp(camp); 
SetLogoutRV(0); 
SetCreateTeam(1); 
DisabledStall(0) -- script viet hoa By http://tranhba.com  cho phÐp bµy s¹p 
SetTaskTemp(200, 0) 
SetDeathScript(""); 
SetFightState(0) 
SetPunish(1) 
ForbidChangePK(0); 
ForbitTrade(0) 
SetPKFlag(0) 
	nt_settask(CP_TASKID_POINT, nt_gettask(CP_TASKID_POINT) + 3)
Ladder_NewLadder(checkmap(2), GetName(), nt_gettask(CP_TASKID_POINT), 1) 
	nt_settask(CP_TASKID_WIN, nt_gettask(CP_TASKID_WIN) + 1)
Msg2Player("Ng­¬i ®· th¾ng <color=green>"..org_name.."<color>, ph¶i 3 ph©n t­ëng th­ëng ") 
nt_settask(CP_TASKID_FLAG, 1) 
WriteLog("Nhµ ch¬i ["..org_name.."] b©y giê thµnh tÝch lµ # th¾ng "..nt_gettask(CP_TASKID_WIN)..", b¹i "..nt_gettask(CP_TASKID_LOSE)..", cïng "..nt_gettask(CP_TASKID_TIE)..", chung cu nhuËn "..nt_gettask(CP_TASKID_POINT)) 
AddAword(GetLevel(), 20, 2) 
tryout_mapid = SubWorldIdx2ID(SubWorld) - 1 
DelMSPlayer(MISSIONID, eny_index, eny_camp) 
NewWorld(tryout_mapid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
PlayerIndex = oldindex 
Msg2SubWorld("TuyÓn thñ <color=cyan>"..eny_name.."<color> chiÕn th¾ng <color=green>"..org_name.."<color> lÊy ®­îc th¾ng lîi ") 
WriteLog("TuyÓn thñ <color=cyan>"..eny_name.."<color> chiÕn th¾ng <color=green>"..org_name.."<color> lÊy ®­îc th¾ng lîi ") 
WriteLog("****************************************************************************") 
end; 
