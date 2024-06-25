------------------------------***Edit*By*Heart*Doldly***----------------------------------------
function TaskShedule()
	TaskName( "CHIEN TRUONG TONG KIM" );
	TaskInterval( 1440 );
	TaskTime( 18, 50 );
	TaskCountLimit( 0 );
end

function TaskContent()
--	Battle_StartNewRound( 1, 1 );	-- chien truong 1
--	Battle_StartNewRound( 1, 2 );	-- chien truong 1
	Battle_StartNewRound( 1, 3 );	-- chien truong 1
	OutputMsg("=====> [TongKim] Chien Truong Tong Kim 19:00 BAT DAU")
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end