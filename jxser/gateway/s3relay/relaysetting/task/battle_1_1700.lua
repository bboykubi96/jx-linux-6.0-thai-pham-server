	-- chiÕn dŞch hÖ thèng

	-- Fanghao_Wu 2004-12-6

	function TaskShedule()

	TaskName( "T­¬ng D­¬ng chiÕn dŞch (tèng kim) 17:00" );

	TaskInterval( 1440 );

	TaskTime( 16, 50 );

	TaskCountLimit( 0 );

	-- ph¸t ra khëi ®éng tin tøc

	OutputMsg( "BATTLE[XiangYang] 17:00 startup. . ." );

	end

	function TaskContent()

	--	Battle_StartNewRound( 1, 1 );		-- GM chØ lÖnh, khëi ®éng cÊp thÊp t©n chiÕn cuéc

	--	Battle_StartNewRound( 1, 2 );		-- GM chØ lÖnh, khëi ®éng trung cÊp t©n chiÕn cuéc

	local nWeekday = tonumber(date( "%w "));

	if nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and (CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil) then

	return							-- ngµy thø Hai ®ãng mét håi cao cÊp tèng kim, dïng n­íc chiÕn tèng kim thay thÕ

	else

	Battle_StartNewRound( 1, 3 );	-- GM chØ lÖnh, khëi ®éng cao cÊp t©n chiÕn cuéc

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


