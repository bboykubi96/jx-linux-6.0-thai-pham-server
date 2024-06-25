--------------------------------------------***Edit*By*Heart*Doldly***------------------------------------------------------
Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )
function TaskShedule()
	TaskName( "ChiÕn dÞch Tèng Kim" );
	TaskSetMode(1);
	TaskSetStartDay(1, 3);
	TaskInterval(7);
	TaskTime(2, 0);
	TaskCountLimit(0);
end

function TaskContent()
--	battle_StartNewIssue(1, 1 );	
--	battle_StartNewIssue(1, 2 );	
	battle_StartNewIssue(1, 3 );
	OutputMsg("=======> KHOI DONG CHIEN TRUONG TONG KIM <=======")	
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
