Include("\\script\\missions\\freshman_match\\match\\head.lua")
function OnTimer() 
	local timer_1 = GetMissionV( MS_TIME_1 ) + 1
SetMissionV( MS_TIME_1, timer_1 ) 
if ( timer_1 == UP_A_TIME ) then 
Msg2MSAll( MISSIONID, "<color=yellow> v� l�m t�n t� li�n cu�c so t�i chu�n b� giai �o�n �� k�t th�c , ch�nh th�c tranh t�i b�t ��u ." ); 
print("match start!!!!**************************************************************start") 
SetMissionV( MS_STATE, 2 ); 
RunMission( MISSIONID ) 
elseif ( ( timer_1 > UP_A_TIME ) and ( mod( timer_1, 2 ) == 0 ) ) then 
gametime = ( floor( GetMSRestTime( MISSIONID, TIMERID_TOTAL_INNER ) / 18 ) ); 
RestMin = floor( gametime / 60 ); 
RestSec = mod( gametime,60 ); 
if ( RestMin == 0 ) then 
Msg2MSAll( MISSIONID, "<#> chi�n ��u giai �o�n # m�n ph�i v� l�m t�n t� li�n cu�c so t�i th�i gian c�n l�i "..RestSec.."<#> gi�y ." ); 
elseif (RestSec == 0) then 
Msg2MSAll( MISSIONID, "<#> chi�n ��u giai �o�n # m�n ph�i v� l�m t�n t� li�n cu�c so t�i th�i gian c�n l�i "..RestMin.."<#> ph�n ." ); 
end; 
end 
end 