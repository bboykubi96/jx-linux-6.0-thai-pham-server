-----------***Heart*Doldly***------------

function TaskShedule()
	-- batt dau
	TaskName( "CHIEN TRUONG TONG KIM 11:00" );
	TaskInterval( 1440 );
	TaskTime( 10, 50 );
	TaskCountLimit( 0 );
	OutputMsg("======================================================================================================")
	OutputMsg("                               THAM GIA CHIEN TRUONG TONG KIM                                         ")
	OutputMsg("            Vao Luc: 11h:00 - 13h:00 - 15h:00 - 17h:00 - 19h:00 - 21h:00 - 23h:00                      ")
end

function TaskContent()
---	Battle_StartNewRound( 1, 1 );	-- chien truong 1
--	Battle_StartNewRound( 1, 2 );	-- chien truong 1
	Battle_StartNewRound( 1, 3 );	-- chien truong 1
	OutputMsg("=====> [TongKim] Chien Truong Tong Kim 11:00 BAT DAU")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
