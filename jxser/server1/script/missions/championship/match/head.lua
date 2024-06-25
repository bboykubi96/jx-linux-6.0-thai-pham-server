IncludeLib("RELAYLADDER") 
Include("\\script\\missions\\championship\\head.lua")
MISSIONID = 19; 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 
UP_A_TIME = 10 * FRAME2TIME / MATCH_TIMER_1; -- script viet hoa By http://tranhba.com 5 gi©y chuÈn bÞ thêi gian 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp nhiÖm vô tr¹ng th¸i thay ®æi l­îng ID 
MS_TIME_1 = 2 -- script viet hoa By http://tranhba.com  mçi 5 gi©y thªm mét smalltimer xóc ph¸t khÝ 
MS_ROUND = 3 

function GameOver() 
local mapname = checkmap(1) 
resultstr = " h«m nay "..GetMissionV(3).." thø mÊy "..mapname.." kÕt thóc ." 
Msg2MSAll(MISSIONID, resultstr) 
resultstr = date("%m th¸ng g%d ngµy , %H:%M, ")..resultstr 
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
Msg2Player("V¸n nµy tranh tµi kÕt thóc , ng­¬i cïng ®èi thñ <color=blue>"..eny_name.." <color> ®¸nh ngang tay , ph¶i 1 ph©n ") 
WriteLog("Nhµ ch¬i ["..org_name.."] cïng ®èi thñ ["..eny_name.."] bÊt ph©n th¾ng phô , b©y giê thµnh tÝch lµ # th¾ng "..nt_gettask(CP_TASKID_WIN)..", bÞ/cha/chÞu "..nt_gettask(CP_TASKID_LOSE)..", cïng "..nt_gettask(CP_TASKID_TIE)..", cuèi cïng kÕt qu¶ "..nt_gettask(CP_TASKID_POINT)) 
camp = GetCamp(); 
SetCurCamp(camp); 
SetLogoutRV(0); 
SetCreateTeam(1); 
DisabledStall(0) -- script viet hoa By http://tranhba.com  cho phÐp bµy s¹p 
ForbitTrade(0) 
SetTaskTemp(200, 0) 
SetFightState(0); 
SetPunish(1); 
ForbidChangePK(0); 
SetPKFlag(0); 
AddAword(GetLevel(), 10, 0) 
nt_settask(CP_TASKID_FLAG, 1) 
DelMSPlayer(MISSIONID, tbPlayer[i], org_camp) 
setworldid = SubWorldIdx2ID(SubWorld) - 1 
NewWorld(setworldid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
end 
