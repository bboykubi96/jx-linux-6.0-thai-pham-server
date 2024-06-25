IncludeLib("RELAYLADDER") 
Include("\\script\\missions\\freshman_match\\head.lua")
MISSIONID = 19; 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 
UP_A_TIME = 10 * FRAME2TIME / MATCH_TIMER_1; -- script viet hoa By http://tranhba.com 5 gi©y chuÈn bÞ thêi gian 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp nhiÖm vô tr¹ng th¸i thay ®æi l­îng ID 
MS_TIME_1 = 2 -- script viet hoa By http://tranhba.com  mçi 5 gi©y thªm mét smalltimer xóc ph¸t khÝ 
MS_ROUND = 3 

function GameOver() 
local mapname = checkmap(1) 
resultstr = " h«m nay "..GetMissionV(3).." thø mÊy "..mapname.." vâ l©m t©n tó liªn cuéc so tµi kÕt thóc ." 
Msg2MSAll(MISSIONID, resultstr) 
resultstr = date("%m th¸ng %d ngµy , %H:%M, ")..resultstr 
WriteLog(resultstr) 
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
org_name = GetName() 
	 	nt_settask(CP_TASKID_POINT, nt_gettask(CP_TASKID_POINT) + 1)
Ladder_NewLadder(checkmap(2), GetName(), nt_gettask(CP_TASKID_POINT), 1) 
	 	nt_settask(CP_TASKID_TIE, nt_gettask(CP_TASKID_TIE) + 1)
if (nt_gettask(CP_TASKID_ENEMY) > 100) then 
org_camp = nt_gettask(CP_TASKID_ENEMY) - 100 
eny_camp = nt_gettask(CP_TASKID_ENEMY) 
else 
	 		org_camp = nt_gettask(CP_TASKID_ENEMY) + 100
eny_camp = nt_gettask(CP_TASKID_ENEMY) 
end 
idx = 0 
for j =1, 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, eny_camp); 
if (idx == 0) then 
break 
end 
PlayerIndex = pidx 
eny_name = GetName() 
PlayerIndex = tbPlayer[i] 
end 
PlayerIndex = tbPlayer[i] 
Msg2Player("Vèn ®æi phiªn tranh tµi kÕt thóc , ng­¬i cïng ®èi thñ <color=blue>"..eny_name.." <color> ®¸nh ngang tay , ®¹t ®­îc mét phÇn ") 
WriteLog("Nhµ ch¬i ["..org_name.."] cïng ®èi thñ ["..eny_name.."] bÊt ph©n th¾ng phô , tr­íc m¾t thµnh tÝch v× # th¾ng "..nt_gettask(CP_TASKID_WIN)..", thua "..nt_gettask(CP_TASKID_LOSE)..", cïng "..nt_gettask(CP_TASKID_TIE)..", quyÕt cuéc so tµi "..nt_gettask(CP_TASKID_POINT)) 
WL_clear_pl_state() 
AddAword(GetLevel(), 30) 
nt_settask(CP_TASKID_FLAG, 1) 
DelMSPlayer(MISSIONID, tbPlayer[i], org_camp) 

SetLogoutRV(0); 
setworldid = SubWorldIdx2ID(SubWorld) - 1 
NewWorld(setworldid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
end 
