function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

AddGlobalNews(PRE_STRGLAOBALNEWS); 
gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 1); 
SetGlbValue(GLB_CO_PHASE, 1); -- script viet hoa By http://tranhba.com  c„ th” bæt Æ«u b∏o danh 
StartMissionTimer(CO_PREPAREMISSIONID, CO_PREPARETIME, CO_RUNINTERVER); -- script viet hoa By http://tranhba.com  
end; 

function EndMission() 
StopMissionTimer(CO_PREPAREMISSIONID, CO_PREPARETIME); 
SetGlbValue(GLB_CO_PHASE, 2); -- script viet hoa By http://tranhba.com  c m chÿ Æi vµo n˜a ghi danh 
gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 2); 

festival_gameover(CO_MAPID[1], CO_PREPAREMISSIONID); 
end; 

function OnLeave() 
end 
