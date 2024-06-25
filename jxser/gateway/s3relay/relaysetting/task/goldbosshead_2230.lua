

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	TaskName( "Boss ti”u hoµng kim 2230 ")

	TaskInterval(1440)

	TaskCountLimit(0)

	TaskTime(22, 30);

	for i = 1, getn(tb_goldboss) do

	success = ClearRecordOnShareDB( "GoldBoss", tb_goldboss[i]. Sid, 0, 1, 0);

	OutputMsg( "Du lieu Boss hoang kim database ".. tb_goldboss[i]. Sid);
	OutputMsg( "Boss ti”u hoµng kim 2230 ")

	end

	end

	function TaskContent()

	for i = 1, getn(tb_goldboss) do

	str = tb_goldboss[i]. str;

	GlobalExecute(format( "dw AddLocalNews([[%s]])", str));

	end

	GlobalExecute( "dwf \\script\\missions\\boss\\callboss_incity.lua CallBossDown_Fixure() ");

	end


