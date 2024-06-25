	--citydefence. lua

	-- v� qu�c chi�n tranh chi phong h�a li�n th�nh

	function TaskShedule()

	TaskName( "V� qu�c phong h�a li�n th�nh ");

	-- m�t ng�y ��m m�t l�n, ��n v� ph�t

	TaskInterval(1440);

	-- thi�t tr� g�y ra th�i gian

	TaskTime(13, 00);

	OutputMsg(format( " 'Phong Hoa Lien Thanh da bat dau %d:%d. . .", 13, 00));

	-- ch�p h�nh v� h�n th�

	TaskCountLimit(0);

	end

	function TaskContent()

	local weekdate = CloudOpen_Defence()

	if (weekdate == nil) then

	OutputMsg( "it is not saturday or sunday,so citydefence will not open ")

	return

	end

	if (weekdate == 0) then

	OutputMsg( " 'Phong Hoa Lien Thanh da bat dau phe Kim �� bat dau bao danh.");

	GlobalExecute( "dw NewCityDefence_OpenMain(2) ");

	else

	OutputMsg( " Phong Hoa Lien Thanh da bat dau phe Tong �� bat dau bao danh.");

	GlobalExecute( "dw NewCityDefence_OpenMain(1) ");

	end

	end

	function CloudOpen_Defence()

	local weekdate = tonumber(date( "%w "))

	if (weekdate ~= 6) then

	return nil

	end

	return weekdate

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


