	--close_citydefence_1700.lua

	-- ��ng v� qu�c chi�n tranh

	function TaskShedule()

	TaskName( "V� qu�c phong h�a li�n th�nh ");

	-- m�t ng�y ��m m�t l�n, ��n v� ph�t

	TaskInterval(1440);

	-- thi�t tr� g�y ra th�i gian

	TaskTime(15, 30);

	OutputMsg(format( " 'Phong hoa lien thanh ket thuc %d:%d. . .", 15, 30));

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


