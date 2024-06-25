FRAME2TIME = 18; 
INTERVAL = 5 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com 5 phót mét lÇn 

function InitMission() 
SetGlbMissionV(1, 1); 
StartGlbMSTimer(8, 18, INTERVAL); 
end; 

function RunMission() 

end; 

function EndMission() 
StopGlbMSTimer(8, 18); 
end; 
