	-- chi�n d�ch h� th�ng

	-- Dongzhi

	function TaskShedule()

	TaskName( "T�ng kim chi�n qu�c  20:50" );

	TaskInterval( 1440 );

	TaskTime( 20, 50 );

	TaskCountLimit( 0 );

	-- ph�t ra kh�i ��ng tin t�c

	OutputMsg( "BATTLE[GuoZhan] 20:50 startup. . ." );

	end

	function TaskContent()

	local nWeekday = tonumber(date( "%w "));

	if nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and (CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil) then

	if CW_GetOccupant(4) == CW_GetOccupant(7) then

	local szMsg = format( "Chi�u c�o thi�n h� \"%s\" ��ng th�i, chi�m l�nh l�m an v� Bi�n Kinh, bang ch� kh� d� tr�c ti�p ��ng c� su�t ng�y t�", CW_GetOccupant(4));

	local szNews = format( "dw AddLocalCountNews([[%s]], 2)", szMsg);

	GlobalExecute(szNews);

	for i = 0,10 do

	NW_SetTask(i, 0);

	end

	NW_Abdicate();			-- nguy�n lai thi�n t� tho�i v�

	NW_SetTask(0, 1);		-- t�ng doanh

	return

	end

	local szMsg = format( "Ti�n tuy�n m�t b�o, t�ng n��c \"%s\" kim qu�c \"%s\"Thi�n t� gh� tranh �o�t �� b�t ��u, th�nh c�c v� t��ng s� ��o t�ng kim ch� ghi danh tham chi�n!", CW_GetOccupant(7), CW_GetOccupant(4));

	local szNews = format( "dw AddLocalCountNews([[%s]], 2)", szMsg);

	GlobalExecute(szNews);

	Battle_StartNewRound( 2, 3 );	-- GM ch� l�nh, kh�i ��ng n��c chi�n t�ng kim

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


