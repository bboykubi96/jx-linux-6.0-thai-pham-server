Include([[\script\missions\tong\collectgoods\head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

strGlbNews = " minh ch� v� l�m �ang tri�u t�p m�i ng��i s� �i t�m t�y h� th��ng nh�n h�ng h�a ��i tr� l�i , m�i ng��i c� th� ��n ho�t ��ng ph��ng t�ng qu�n ch� ghi danh tham gia ." 
AddGlobalNews(strGlbNews); 
SetGlbValue(GLB_COLLG_PHASE, 1); -- script viet hoa By http://tranhba.com  c� th� b�t ��u b�o danh 
gb_SetTask(COLLG_NAME, 1, 1); 
StartMissionTimer(COLLG_PREPAREMISSIONID, COLLG_PREPARETIME, COLLG_RUNINTERVER); 
end; 

function RunMission() 
end; 

function EndMission() 
StopMissionTimer(COLLG_PREPAREMISSIONID, COLLG_PREPARETIME); 
SetGlbValue(GLB_COLLG_PHASE, 2); -- script viet hoa By http://tranhba.com  c�m ch� �i v�o n�a ghi danh 
gb_SetTask(COLLG_NAME, 1, 2); 
collg_gameover(COLLG_MAPID[1], COLLG_PREPAREMISSIONID); 
end; 

function OnLeave() 
end 
