Include([[\script\missions\tong\collectgoods\head.lua]]);

function OnTimer()
	local nTimerState = GetMissionV(COLLG_MS_TIMERSTATE) + 1;
	nTimerState = mod(nTimerState, 3);
	SetMissionV(COLLG_MS_TIMERSTATE, nTimerState);	-- script viet hoa By http://tranhba.com ####0, 1, 2########0####³ý####1####
	
	if (1 == nTimerState) then
		collg_putfairy();
		return
	elseif (0 == nTimerState) then
		collg_clearfairy();
		return
	end;
end;
