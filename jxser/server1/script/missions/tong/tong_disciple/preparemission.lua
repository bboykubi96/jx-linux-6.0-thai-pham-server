Include([[\script\missions\tong\tong_disciple\head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

strGlbNews = " c�c bang s� c� h�nh c�c v� nh�n s� �i chi�u m� �� t� , l�m l�c l��ng tr� b� ho�t ��ng ph��ng t�ng qu�n �ang ch� m�i ng��i ��ch tr� gi�p ." 
AddGlobalNews(strGlbNews); 
SetGlbValue(GLB_DIS_PHASE, 1); -- script viet hoa By http://tranhba.com  c� th� b�t ��u b�o danh 
gb_SetTask(CHRISMAS_SHREWMOUSE, 1, 1); 
StartMissionTimer(DIS_PREPAREMISSIONID, DIS_PREPARETIME, DIS_RUNINTERVER); -- script viet hoa By http://tranhba.com  
end; 

function RunMission() 
end; 

function EndMission() 
StopMissionTimer(DIS_PREPAREMISSIONID, DIS_PREPARETIME); 
gameover(DIS_MAPID[1], DIS_PREPAREMISSIONID); 
end; 

function OnLeave() 
end 
