Include([[\script\missions\chrismas\ch_head.lua]]); 

function OnTimer() 
	local nTimerState = GetMissionV(MS_TIMERSTATE) + 1;
nTimerState = mod(nTimerState, 3); 
SetMissionV(MS_TIMERSTATE, nTimerState); -- script viet hoa By http://tranhba.com  tiÕn hµnh 0, 1, 2 gi÷a chuyÓn ®æi 0# thanh trõ tr¸ch , 1 cµ tr¸ch 

if (1 == nTimerState) then 
putfairy(); 
return 
elseif (0 == nTimerState) then 
clearfairy(); 
return 
end; 
end;
