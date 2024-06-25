	-- chiÕn dÞch hÖ thèng

	-- Dongzhi

	function TaskShedule()

	TaskName( "Tèng kim chiÕn quèc  20:50" );

	TaskInterval( 1440 );

	TaskTime( 20, 50 );

	TaskCountLimit( 0 );

	-- ph¸t ra khëi ®éng tin tøc

	OutputMsg( "BATTLE[GuoZhan] 20:50 startup. . ." );

	end

	function TaskContent()

	local nWeekday = tonumber(date( "%w "));

	if nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and (CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil) then

	if CW_GetOccupant(4) == CW_GetOccupant(7) then

	local szMsg = format( "ChiÕu c¸o thiªn h¹ \"%s\" ®ång thêi, chiÕm lÜnh l©m an vµ BiÖn Kinh, bang chñ kh¶ dÜ trùc tiÕp ®¨ng c¬ suèt ngµy tö", CW_GetOccupant(4));

	local szNews = format( "dw AddLocalCountNews([[%s]], 2)", szMsg);

	GlobalExecute(szNews);

	for i = 0,10 do

	NW_SetTask(i, 0);

	end

	NW_Abdicate();			-- nguyªn lai thiªn tö tho¸i vÞ

	NW_SetTask(0, 1);		-- tèng doanh

	return

	end

	local szMsg = format( "TiÒn tuyÕn mËt b¸o, tèng n­íc \"%s\" kim quèc \"%s\"Thiªn tö ghÕ tranh ®o¹t ®· b¾t ®Çu, thØnh c¸c vÞ t­íng sÜ ®¸o tèng kim chç ghi danh tham chiÕn!", CW_GetOccupant(7), CW_GetOccupant(4));

	local szNews = format( "dw AddLocalCountNews([[%s]], 2)", szMsg);

	GlobalExecute(szNews);

	Battle_StartNewRound( 2, 3 );	-- GM chØ lÖnh, khëi ®éng n­íc chiÕn tèng kim

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


