-----------***Heart*Doldly***------------
Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )

function TaskShedule()
	
	TaskName( "Tèng Kim Quèc ChiÕn" );	
	TaskTime( 20, 50 );				
	TaskInterval(1440);				
	TaskCountLimit(0);	
end

function TaskContent()
	local nWeekday = tonumber(date("%w"));
	if nWeekday == 1 then
		OutputMsg("===========> KHOI DONG QUOC CHIEN TONG KIM <============")	
		battle_StartNewIssue(2, 3);	
	end

end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end
