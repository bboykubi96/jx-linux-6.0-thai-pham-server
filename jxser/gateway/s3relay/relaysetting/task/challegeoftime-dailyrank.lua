	function TaskShedule()

	TaskName( "S�m quan ho�t ��ng m�i ng�y b�ng x�p h�ng ")

	TaskTime(0, 0);

	-- thi�t tr� kho�ng c�ch th�i gian, ��n v� vi ph�t

	TaskInterval(1440) --30 ph�t m�t l�n

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(0)

	OutputMsg( "================= Le quan hoat dong bang xep hang moi ngay ================== ");

	end

	function TaskContent()

	name, value = Ladder_GetLadderInfo(10235, 1);

	value = value * (-1);

	if (name ~= " ") then

	local szTime	= format( "%s ph�t %s mi�u", floor(value/60), floor(mod(value, 60)));

	local szMsg 	= format( "Ch�c m�ng <%s> �� ho�n th�nh < th�i gian khi�u chi�n > trong th�i gian ng�n nh�t <%s>", name, szTime);

	GlobalExecute(format( "dw AddGlobalNews([[%s]], 10)", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	end

	Ladder_ClearLadder(10235);

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


