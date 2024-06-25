Include("\\script\\missions\\tong\\tong_springfestival\\head.lua");

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

strGlbNews = format("C�i n�y kh�i l�i quan ph� �ang ng� , c�n phi�n to�i c�c v� bang h�i nh�n s� �i xua �u�i %s , v� kia nh�n s� mu�n gi�p b�n r�n c� th� ��n t�ng ho�t ��ng ph��ng ghi danh tham gia .",SF_ANIMALNAME); 
AddGlobalNews(strGlbNews); 
SetGlbValue(GLB_SF_PHASE, 1); -- script viet hoa By http://tranhba.com  c� th� b�t ��u b�o danh 
gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 1); 
StartMissionTimer(SF_PREPAREMISSIONID, SF_PREPARETIME, SF_RUNINTERVER); -- script viet hoa By http://tranhba.com  
end; 

function EndMission() 
StopMissionTimer(SF_PREPAREMISSIONID, SF_PREPARETIME); 
festival_gameover(SF_MAPID[1], SF_PREPAREMISSIONID); 
end; 

function OnLeave() 
end 
