	-- chi�n d�ch h� th�ng

	-- Fanghao_Wu 2004-12-6

	function TaskShedule()

	TaskName( "T��ng D��ng chi�n d�ch (t�ng kim) 17:00" );

	TaskInterval( 1440 );

	TaskTime( 16, 50 );

	TaskCountLimit( 0 );

	-- ph�t ra kh�i ��ng tin t�c

	OutputMsg( "BATTLE[XiangYang] 17:00 startup. . ." );

	end

	function TaskContent()

	--	Battle_StartNewRound( 1, 1 );		-- GM ch� l�nh, kh�i ��ng c�p th�p t�n chi�n cu�c

	--	Battle_StartNewRound( 1, 2 );		-- GM ch� l�nh, kh�i ��ng trung c�p t�n chi�n cu�c

	local nWeekday = tonumber(date( "%w "));

	if nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and (CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil) then

	return							-- ng�y th� Hai ��ng m�t h�i cao c�p t�ng kim, d�ng n��c chi�n t�ng kim thay th�

	else

	Battle_StartNewRound( 1, 3 );	-- GM ch� l�nh, kh�i ��ng cao c�p t�n chi�n cu�c

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


