	-- chi�n d�ch h� th�ng

	-- Fanghao_Wu 2004-12-6

	function GameSvrConnected(dwGameSvrIP)

	SyncAllLadder(dwGameSvrIP)

	end;

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "Relay b�ng x�p h�ng" );

	-- 10 ph�t m�t l�n

	TaskInterval( 2440 );

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit( 0 );

	-- ph�t ra kh�i ��ng tin t�c

	OutputMsg( "Ladder startup. . ." );

	for i=10001, 10300 do

	LoadLadder(i)

	end

	end

	function TaskContent()

	OutputMsg( "SDBLadder Loaded" );

	end


