Include("\\script\\missions\\championship\\match\\head.lua")

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
camp = GetCamp(); 
SetCurCamp(camp); 
SetLogoutRV(0); 
SetCreateTeam(1); 
DisabledStall(0) -- script viet hoa By http://tranhba.com  cho ph�p b�y s�p 
SetTaskTemp(200, 0) 
SetDeathScript(""); 
SetFightState(0) 
SetPunish(1) 
ForbidChangePK(0); 
SetPKFlag(0) 
ForbitTrade(0) 
	nt_settask(CP_TASKID_LOSE, nt_gettask(CP_TASKID_LOSE) + 1)
nt_settask(CP_TASKID_FLAG, 1) 
DelMSPlayer(MISSIONID, orgply, enycamp) 
Msg2Player("Ng��i thua � th� h� <color=cyan>"..enyname) 
AddAword(GetLevel(), 5, 0) 
Msg2SubWorld("Tuy�n th� <color=cyan>"..enyname.."<color> chi�n th�ng <color=green>"..orgname.."<color> l�y ���c th�ng l�i ") 
WriteLog("****************************************************************************") 
WriteLog("Tuy�n th� <color=cyan>"..enyname.."<color> chi�n th�ng <color=green>"..orgname.."<color> l�y ���c th�ng l�i ") 
WriteLog("Nh� ch�i ["..orgname.."] b�y gi� th�nh t�ch l� # th�ng "..nt_gettask(CP_TASKID_WIN)..", b�i "..nt_gettask(CP_TASKID_LOSE)..", c�ng "..nt_gettask(CP_TASKID_TIE)..", cu�i c�ng k�t qu� "..nt_gettask(CP_TASKID_POINT)) 

PlayerIndex = enyply 
camp = GetCamp(); 
SetCurCamp(camp); 
SetLogoutRV(0); 
SetCreateTeam(1); 
DisabledStall(0) -- script viet hoa By http://tranhba.com  cho ph�p b�y s�p 
SetTaskTemp(200, 0) 
SetDeathScript(""); 
SetFightState(0) 
ForbitTrade(0) 
SetPunish(1) 
ForbidChangePK(0); 
SetPKFlag(0) 
	nt_settask(CP_TASKID_WIN, nt_gettask(CP_TASKID_WIN) + 1)
	nt_settask(CP_TASKID_POINT, nt_gettask(CP_TASKID_POINT) + 3)
Ladder_NewLadder(checkmap(2), GetName(), nt_gettask(CP_TASKID_POINT), 1) 
Msg2Player("Ng��i �� th�ng <color=green>"..orgname.."<color>, l�y ���c 3 ph�n t��ng th��ng ") 
WriteLog("Nh� ch�i ["..enyname.."] b�y gi� th�nh t�ch l� # th�ng "..nt_gettask(CP_TASKID_WIN)..", b�/cha/ch�u "..nt_gettask(CP_TASKID_LOSE)..", c�ng "..nt_gettask(CP_TASKID_TIE)..", cu�i c�ng k�t qu� "..nt_gettask(CP_TASKID_POINT)) 
WriteLog("****************************************************************************") 
AddAword(GetLevel(), 20, 2) 
nt_settask(CP_TASKID_FLAG, 1) 
DelMSPlayer(MISSIONID, enyply, orgcamp) 
NewWorld(tryout_mapid, CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end
