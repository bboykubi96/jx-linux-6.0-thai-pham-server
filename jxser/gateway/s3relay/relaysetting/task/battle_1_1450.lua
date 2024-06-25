	-- chiÕn dŞch hÖ thèng

	-- Fanghao_Wu 2004-12-6

	function TaskShedule()

	-- thiÕt trİ ph­¬ng ¸n tªn gäi

	TaskName( "T­¬ng D­¬ng chiÕn dŞch (tèng kim) 14:50" );

	TaskInterval( 1440 );

	TaskTime( 14, 50 );

	TaskCountLimit( 0 );

	-- ph¸t ra khëi ®éng tin tøc

	OutputMsg( "BATTLE[XiangYang] 14:50 startup. . ." );

	end

	function TaskContent()
	
		--Battle_StartNewRound( 1, 1 );	-- GM chØ lÖnh, khëi ®éng cÊp thÊp t©n chiÕn cuéc
		Battle_StartNewRound( 1, 2 );	-- GM chØ lÖnh, khëi ®éng trung cÊp t©n chiÕn cuéc
		--Battle_StartNewRound( 1, 3 );	-- GM chØ lÖnh, khëi ®éng cao cÊp t©n chiÕn cuéc

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


