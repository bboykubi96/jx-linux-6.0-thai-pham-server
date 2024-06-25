	--close_citydefence_1700.lua

	-- ®ãng vÖ quèc chiÕn tranh

	function TaskShedule()

	TaskName( "VÖ quèc phong háa liªn thµnh ");

	-- mét ngµy ®ªm mét lÇn, ®¬n vÞ phót

	TaskInterval(1440);

	-- thiÕt trÝ g©y ra thêi gian

	TaskTime(17, 0);

	OutputMsg(format( " 'VÖ quèc liªn thµnh' ®· kÕt thóc %d:%d. . .", 17, 0));

	-- chÊp hµnh v« h¹n thø

	TaskCountLimit(0);

	end

	function TaskContent()

	OutputMsg( "VÖ quèc liªn thµnh dÜ kÕt thóc ");

	GlobalExecute( "dw CityDefence_CloseMain() ");

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


