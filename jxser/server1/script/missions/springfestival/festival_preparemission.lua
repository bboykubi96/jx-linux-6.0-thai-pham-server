Include([[\script\missions\springfestival\festival_head.lua]]); 
Include("\\script\\lib\\gb_taskfuncs.lua")

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

strGlbNews = " quan ph� b�t ��u �� cho ng��i ta �i xua �u�i qu�i th� "..FE_ANIMALNAME..", m�i ng��i nhanh ��n nha m�n sai d�ch n�i �� ghi danh tham gia ."; 
AddGlobalNews(strGlbNews); 
gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 1); 
SetGlbValue(GLB_FE_PHASE, 1); -- script viet hoa By http://tranhba.com  c� th� b�t ��u b�o danh 
StartMissionTimer(FE_PREPAREMISSIONID, FE_PREPARETIME, FE_RUNINTERVER); -- script viet hoa By http://tranhba.com  
end; 

function EndMission() 
StopMissionTimer(FE_PREPAREMISSIONID, FE_PREPARETIME); 
SetGlbValue(GLB_FE_PHASE, 2); -- script viet hoa By http://tranhba.com  c�m ch� �i v�o n�a ghi danh 
gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 2); 

festival_gameover(FE_MAPID[1], FE_PREPAREMISSIONID); 
end; 

function OnLeave() 
end 
