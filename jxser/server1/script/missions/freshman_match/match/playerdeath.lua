Include("\\script\\missions\\freshman_match\\match\\head.lua")

function OnDeath(Launcher) 
orgply = PlayerIndex 
orgname = GetName() 
orgcamp = nt_gettask(CP_TASKID_ENEMY) 
match_mapid = SubWorldIdx2ID(SubWorld) 
tryout_mapid = match_mapid - 1 

enyply = NpcIdx2PIdx(Launcher); 
PlayerIndex = enyply 
enycamp = nt_gettask(CP_TASKID_ENEMY) 
enyname = GetName() 

PlayerIndex = orgply 
WL_clear_pl_state() 
SetLogoutRV(0); 
	nt_settask(CP_TASKID_LOSE, nt_gettask(CP_TASKID_LOSE) + 1)
nt_settask(CP_TASKID_FLAG, 1) 
DelMSPlayer(MISSIONID, orgply, enycamp) 
Msg2Player("Ng��i �� m�t b�i <color=cyan>"..enyname) 
AddAword(GetLevel(), 15) 
Msg2SubWorld("Tuy�n th� <color=cyan>"..enyname.."<color> chi�n th�ng <color=green>"..orgname.."<color> ��t ���c th�ng l�i ") 
WriteLog("****************************************************************************") 
WriteLog("Tuy�n th� <color=cyan>"..enyname.."<color> chi�n th�ng <color=green>"..orgname.."<color> ��t ���c th�ng l�i ") 
WriteLog("Nh� ch�i ["..orgname.."] tr��c m�t th�nh t�ch v� # th�ng "..nt_gettask(CP_TASKID_WIN)..", thua "..nt_gettask(CP_TASKID_LOSE)..", c�ng "..nt_gettask(CP_TASKID_TIE)..", quy�t cu�c so t�i "..nt_gettask(CP_TASKID_POINT)) 

PlayerIndex = enyply 
WL_clear_pl_state() 
	nt_settask(CP_TASKID_WIN, nt_gettask(CP_TASKID_WIN) + 1)
	nt_settask(CP_TASKID_POINT, nt_gettask(CP_TASKID_POINT) + 3)
Ladder_NewLadder(checkmap(2), GetName(), nt_gettask(CP_TASKID_POINT), 1) 
Msg2Player("Ng��i �� th�ng l�i <color=green>"..org_name.."<color>, ��t ���c 3 ph�n ") 
WriteLog("Nh� ch�i ["..enyname.."] tr��c m�t th�nh t�ch v� # th�ng "..nt_gettask(CP_TASKID_WIN)..", thua "..nt_gettask(CP_TASKID_LOSE)..", c�ng "..nt_gettask(CP_TASKID_TIE)..", quy�t cu�c so t�i "..nt_gettask(CP_TASKID_POINT)) 
WriteLog("****************************************************************************") 
AddAword(GetLevel(), 60) 
nt_settask(CP_TASKID_FLAG, 1) 
DelMSPlayer(MISSIONID, enyply, orgcamp) 

SetLogoutRV(0); 
NewWorld(tryout_mapid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end