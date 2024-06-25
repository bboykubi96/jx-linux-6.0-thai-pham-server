Include("\\script\\missions\\freshman_match\\tryout\\head.lua")

function InitMission() 
for i = 1, 100 do 
SetMissionV( i , 0 ); 
end; 
SetMissionS( 1, "" ) 
SetMissionS( 2, "" ) 
StartMissionTimer( MISSIONID, TIMERID_SMALL_OUTER, TRYOUT_TIMER_1 ); 
StartMissionTimer( MISSIONID, TIMERID_TOTAL_OUTER, TRYOUT_TIMER_2 ); 

SetMissionV( MS_STATE,1 );-- script viet hoa By http://tranhba.com  cho ph�p b�o danh 
RunMission( MISSIONID ) 
end; 

function RunMission() 
end; 

function EndMission() 
StopMissionTimer( MISSIONID, TIMERID_SMALL_OUTER) ; 
StopMissionTimer( MISSIONID, TIMERID_TOTAL_OUTER ); 
GameOver(); 
for i = 1, 100 do 
SetMissionV( i , 0 ); 
end; 
if(tonumber(date("%y%m%d%H")) >= CP_END_TRYOUT) then 
resultstr = " v� l�m t�n t� li�n cu�c so t�i k�t th�c , xin/m�i c�c v� tuy�n th� ��n tr��c khi an th�y v� l�m t�n t� li�n cu�c so t�i quan vi�n (182, 202) nh�n v� l�m t�n t� danh s�ch . ��ng h�ng tr��c n�m ��ch c� th� ��n v� l�m t�n t� li�n cu�c so t�i quan vi�n ch� (182, 202) d�n t��ng ." 
else 
resultstr = " v� l�m t�n t� li�n cu�c so t�i h�m nay ng�y k�t th�c , d� thi tuy�n th� xin/m�i ng�y mai t�i chi�n ." 
end 
AddGlobalNews(resultstr) 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
WL_clear_pl_state() 
end; 
