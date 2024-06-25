Include("\\script\\misc\\rank\\rank.lua")

function TaskShedule()
	TaskName("Ve So May Man hang ngay 18h00");
	TaskInterval( 1440 );
	--TaskInterval( 1 );
	TaskTime( 18, 00 );
	TaskCountLimit( 0 );
	OutputMsg("Ve So May Man hang ngay 18h00");
end

function TaskContent()
	RemoteExecute("\\script\\global\\g7vn\\vesomayman.lua","VeSoMayMan2016:quaysotudong", 0);
	OutputMsg("<=========== Ket qua Ve So May Man 18h00 ===========>");
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end