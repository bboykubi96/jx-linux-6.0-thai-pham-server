	--close_citydefence_1700.lua

	--

	function TaskShedule()

	TaskName( "V� qu�c phong h�a li�n th�nh ");

	-- m�t ng�y ��m m�t l�n, ��n v� ph�t

	TaskInterval(1440);

	-- thi�t tr� g�y ra th�i gian

	TaskTime(22, 0);

	OutputMsg(format( " 'V� qu�c li�n th�nh' �� k�t th�c %d:%d. . .", 22, 0));

	-- ch�p h�nh v� h�n th�

	TaskCountLimit(0);

	end

	function TaskContent()

	OutputMsg( "V� qu�c li�n th�nh d� k�t th�c ");

	GlobalExecute( "dw CityDefence_CloseMain() ");

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


