IncludeLib("RELAYLADDER") 
Include("\\script\\missions\\freshman_match\\head.lua")
MISSIONID = 19; 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr�nh tr� ch�i th�i gian t��ng ���ng v�i 1 gi�y 
UP_A_TIME = 10 * FRAME2TIME / MATCH_TIMER_1; -- script viet hoa By http://tranhba.com 5 gi�y chu�n b� th�i gian 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p nhi�m v� tr�ng th�i thay ��i l��ng ID 
MS_TIME_1 = 2 -- script viet hoa By http://tranhba.com  m�i 5 gi�y th�m m�t smalltimer x�c ph�t kh� 
MS_ROUND = 3 

function GameOver() 
local mapname = checkmap(1) 
resultstr = " h�m nay "..GetMissionV(3).." th� m�y "..mapname.." v� l�m t�n t� li�n cu�c so t�i k�t th�c ." 
Msg2MSAll(MISSIONID, resultstr) 
resultstr = date("%m th�ng %d ng�y , %H:%M, ")..resultstr 
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
Msg2Player("V�n ��i phi�n tranh t�i k�t th�c , ng��i c�ng ��i th� <color=blue>"..eny_name.." <color> ��nh ngang tay , ��t ���c m�t ph�n ") 
WriteLog("Nh� ch�i ["..org_name.."] c�ng ��i th� ["..eny_name.."] b�t ph�n th�ng ph� , tr��c m�t th�nh t�ch v� # th�ng "..nt_gettask(CP_TASKID_WIN)..", thua "..nt_gettask(CP_TASKID_LOSE)..", c�ng "..nt_gettask(CP_TASKID_TIE)..", quy�t cu�c so t�i "..nt_gettask(CP_TASKID_POINT)) 
WL_clear_pl_state() 
AddAword(GetLevel(), 30) 
nt_settask(CP_TASKID_FLAG, 1) 
DelMSPlayer(MISSIONID, tbPlayer[i], org_camp) 

SetLogoutRV(0); 
setworldid = SubWorldIdx2ID(SubWorld) - 1 
NewWorld(setworldid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
end 
