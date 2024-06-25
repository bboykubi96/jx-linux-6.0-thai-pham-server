Include("\\script\\missions\\championship\\tryout\\head.lua")
function InitMission() 
for i = 1, 100 do 
SetMissionV(i , 0); 
end; 
SetMissionS(1, "") 
SetMissionS(2, "") 
StartMissionTimer(MISSIONID, 34, TRYOUT_TIMER_2); 
StartMissionTimer(MISSIONID, 33, TRYOUT_TIMER_1); 

SetMissionV(MS_STATE,1);-- script viet hoa By http://tranhba.com  cho ph�p b�o danh 
RunMission(MISSIONID) 
end; 

function RunMission() 
end; 

function EndMission() 
StopMissionTimer(MISSIONID, 33); 
StopMissionTimer(MISSIONID, 34); 
GameOver(); 
for i = 1, 100 do 
SetMissionV(i , 0); 
end; 
if(tonumber(date("%y%m%d%H")) >= CP_END_TRYOUT) then 
resultstr = " ��i h�i v� l�m m�n ph�i d� ch�n cu�c so t�i �� k�t th�c , xin/m�i c�c v� ��n tr��c khi an th�y ��i h�i v� l�m quan vi�n (182, 203) nh�n danh s�ch . danh s�ch trung ��ch nh� ch�i c� th� ��n v� l�m ��i h�i quan vi�n ch� (182, 203) d�n danh hi�u ." 
else 
resultstr = " h�m nay ��i h�i v� l�m d� ch�n cu�c so t�i �� k�t th�c , c�c v� tuy�n th� ng�y mai ��c ��nh tr� l�i �i ." 
end 
AddGlobalNews(resultstr) 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nh� ch�i r�i tuy�n c�ng s� t� Mission trung OnLeave , v� v�y kh�ng th� � ch� n�y �i�u d�ng SetLogoutRV(0) , nh�t ��nh ph�i � �em nh� ch�i NewWorld ra Mission b�n �� ��ch ��a ph��ng �i�u d�ng Fanghao_Wu 2006-3-21 
ForbidChangePK(0); 
SetCreateTeam(1); 
DisabledStall(0) -- script viet hoa By http://tranhba.com  cho ph�p b�y s�p 
SetTaskTemp(200, 0) 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
ForbidChangePK(0); 
ForbitTrade(0); 
RestoreOwnFeature(); 
end;
