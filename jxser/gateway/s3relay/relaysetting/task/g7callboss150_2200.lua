Include("\\script\\misc\\rank\\rank.lua")

function TaskShedule()
	TaskName("Boss 150 hang ngay 22h30");
	TaskInterval( 1440 );
	--TaskInterval( 1 );
	TaskTime( 22, 30 );
	TaskCountLimit( 0 );
	OutputMsg("Boss 150 hang ngay 22h30");
end

function TaskContent()
	RemoteExecute("\\script\\global\\g7vn\\g7callboss15x.lua","G7CallBoss150:G7callboss150", 0);
	OutputMsg("<=========== Boss 150 hang ngay 22h30 ===========>");
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end