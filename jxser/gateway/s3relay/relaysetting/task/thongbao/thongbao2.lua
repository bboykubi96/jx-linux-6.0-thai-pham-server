	-- th�i gian khi�u chi�n b� t�i ��ng gi� kh�

	INTERVAL_TIME = 30	-- m�i 30ph ��ng h� g�y ra

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
	zMsg2SubWorld  = "<color=yellow>M�ng Sinh Nh�t 1 n�m <color=green> VoLamVietPK <color=yellow>tri �n nh�n s� ph�n qu� nh� t�i l� quan. C�m �n qu� ��ng ��o, ch�c qu� ��ng ��o c� nh�ng gi�y ph�t gi�i tr� vui v� t�i volamvietpk.net."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))


	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


