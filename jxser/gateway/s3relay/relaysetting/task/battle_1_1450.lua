	-- chi�n d�ch h� th�ng

	-- Fanghao_Wu 2004-12-6

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "T��ng D��ng chi�n d�ch (t�ng kim) 14:50" );

	TaskInterval( 1440 );

	TaskTime( 14, 50 );

	TaskCountLimit( 0 );

	-- ph�t ra kh�i ��ng tin t�c

	OutputMsg( "BATTLE[XiangYang] 14:50 startup. . ." );

	end

	function TaskContent()
	
		--Battle_StartNewRound( 1, 1 );	-- GM ch� l�nh, kh�i ��ng c�p th�p t�n chi�n cu�c
		Battle_StartNewRound( 1, 2 );	-- GM ch� l�nh, kh�i ��ng trung c�p t�n chi�n cu�c
		--Battle_StartNewRound( 1, 3 );	-- GM ch� l�nh, kh�i ��ng cao c�p t�n chi�n cu�c

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


