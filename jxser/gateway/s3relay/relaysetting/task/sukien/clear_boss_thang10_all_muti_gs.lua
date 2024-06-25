
function TaskShedule()
	TaskName( "=====> DELETE BOSS SU KIEN THANG 10 2020 <=====" );
	TaskInterval( 1440 );
	-- TaskInterval( 10 );
	TaskTime( 2, 15 );
	TaskCountLimit( 0 );
	OutputMsg( "=====> DELETE BOSS SU KIEN THANG 10 2020 <=====" );
end

function TaskContent()
	for i = 1989, 1997 do
		GlobalExecute(format("dw XoaBoss_Event102020(%d)", i));
	end
	OutputMsg( "=====> DELETE BOSS SU KIEN THANG 10 2020 <=====" );
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
