Include("\\script\\missions\\autohang\\head.lua")

function InitMission() 
WriteLog(GetLoop()..date("%m%d-%H:%M")..": b¾t ®Çu treo ky !") 
StartMissionTimer(AEXP_MISSIONID, AEXP_TIMERID, AEXP_UPDATETIME); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cã hay kh«ng miÔn phÝ , cïng víi kinh nghiÖm béi sè (>=1) 
SetAutoHangFreeFlag(AEXP_IsFreeTimeDoubleExp(), AEXP_FREEDATE_EXPFACTOR); 
end; 

function RunMission() 
end; 

function EndMission() 
WriteLog(GetLoop()..date("%m%d-%H:%M")..": kÕt thóc treo ky !"); 
StopMissionTimer(AEXP_MISSIONID, AEXP_TIMERID); 
end; 
