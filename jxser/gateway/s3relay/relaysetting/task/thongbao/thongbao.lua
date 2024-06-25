	-- thêi gian khiªu chiÕn bØ t¸i ®óng giê khÝ

	INTERVAL_TIME = 60	-- mçi 60 ph ®ång hå g©y ra

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
	zMsg2SubWorld  = "<color=yellow>C¶nh gi¸c lõa ®¶o: <color=green>AE kh«ng chuyÓn tiÒn giao ®å cho bÊt cø ai trong bang kÓ c¶ Bang chñ, tr­ëng l·o ®Ó tr¸nh t×nh tr¹ng lõa ®¶o,mäi giao dÞch liªn hÖ <color=yellow> Mäi Chi TiÕt Vui Lßng Liªn HÖ LAST gaming sdt 0971607404, .....!"
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))


	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


