	-- chiÕn dŞch hÖ thèng

	-- Fanghao_Wu 2004-12-6

	function GameSvrConnected(dwGameSvrIP)

	SyncAllLadder(dwGameSvrIP)

	end;

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thiÕt trİ ph­¬ng ¸n tªn gäi

	TaskName( "Relay b¶ng xÕp h¹ng" );

	-- 10 phót mét lÇn

	TaskInterval( 2440 );

	-- thiÕt trİ g©y ra sè lÇn, 0 biÓu thŞ v« h¹n sè lÇn

	TaskCountLimit( 0 );

	-- ph¸t ra khëi ®éng tin tøc

	OutputMsg( "Ladder startup. . ." );

	for i=10001, 10300 do

	LoadLadder(i)

	end

	end

	function TaskContent()

	OutputMsg( "SDBLadder Loaded" );

	end


