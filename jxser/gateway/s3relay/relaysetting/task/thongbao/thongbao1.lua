	-- thêi gian khiªu chiÕn bØ t¸i ®óng giê khÝ

	INTERVAL_TIME = 30	-- mçi 30ph ®ång hå g©y ra

	-- INTERVAL_TIME = 10	-- mçi tiÕng ®ång hå g©y ra

	function GetNextTime()

	local hour = tonumber(date("%H"));

	if (hour == 23) then

	hour = 0;

	else

	hour = hour + 1;

	end

	return hour, 0;

	end

	function TaskShedule()

	TaskName( " 'Khiªu chiÕn thêi gian 'BØ t¸i ");

	-- 60 phót mét lÇn

	TaskInterval(INTERVAL_TIME);

	-- thiÕt trÝ g©y ra thêi gian

	local h, m = GetNextTime();

	TaskTime(h, m);

	OutputMsg(format( " Nhiem vu khieu chien thoi gian %d:%d. . .", h, m));

	-- chÊp hµnh v« h¹n thø

	TaskCountLimit(0);

	-- OutputMsg( "Khëi ®éng tù ®éng ch¹y th«ng b¸o. . .");

	end

	function TaskContent()

	OutputMsg("=====> ThongBao")
	zMsg2SubWorld  = "<color=yellow>Sù KiÖn Event  <color=green>§ua Top Server Th¸i S¬n <color=yellow> ®ang diÔn ra, chi tiÕt xin theo dâi trªn trang chñ volamvietpk.net ."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))


	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


