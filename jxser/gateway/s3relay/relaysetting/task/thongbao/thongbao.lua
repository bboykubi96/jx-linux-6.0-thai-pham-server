	-- th�i gian khi�u chi�n b� t�i ��ng gi� kh�

	INTERVAL_TIME = 60	-- m�i 60 ph ��ng h� g�y ra

	-- INTERVAL_TIME = 10	-- m�i ti�ng ��ng h� g�y ra

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

	TaskName( " 'Khi�u chi�n th�i gian 'B� t�i ");

	-- 60 ph�t m�t l�n

	TaskInterval(INTERVAL_TIME);

	-- thi�t tr� g�y ra th�i gian

	local h, m = GetNextTime();

	TaskTime(h, m);

	OutputMsg(format( " Nhiem vu khieu chien thoi gian %d:%d. . .", h, m));

	-- ch�p h�nh v� h�n th�

	TaskCountLimit(0);

	-- OutputMsg( "Kh�i ��ng t� ��ng ch�y th�ng b�o. . .");

	end

	function TaskContent()

	OutputMsg("=====> ThongBao")
	zMsg2SubWorld  = "<color=yellow>C�nh gi�c l�a ��o: <color=green>AE kh�ng chuy�n ti�n giao �� cho b�t c� ai trong bang k� c� Bang ch�, tr��ng l�o �� tr�nh t�nh tr�ng l�a ��o,m�i giao d�ch li�n h� <color=yellow> M�i Chi Ti�t Vui L�ng Li�n H� LAST gaming sdt 0971607404, .....!"
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))


	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


