Include("\\script\\missions\\autohang\\head.lua")

function InitMission() 
WriteLog(GetLoop()..date("%m%d-%H:%M")..": b�t ��u treo ky !") 
StartMissionTimer(AEXP_MISSIONID, AEXP_TIMERID, AEXP_UPDATETIME); 

-- script viet hoa By http://tranhba.com  thi�t tr� c� hay kh�ng mi�n ph� , c�ng v�i kinh nghi�m b�i s� (>=1) 
SetAutoHangFreeFlag(AEXP_IsFreeTimeDoubleExp(), AEXP_FREEDATE_EXPFACTOR); 
end; 

function RunMission() 
end; 

function EndMission() 
WriteLog(GetLoop()..date("%m%d-%H:%M")..": k�t th�c treo ky !"); 
StopMissionTimer(AEXP_MISSIONID, AEXP_TIMERID); 
end; 
