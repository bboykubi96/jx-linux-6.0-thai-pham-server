	-- Vi�t thu l� ph� 2011 ni�n 9 nguy�t ho�t ��ng (l� qu�c kh�nh v� Trung thu ti�t), � th�t th�nh ph� l�n ph�ng ph�o hoa

	Include( "\\script\\lib\\objbuffer_head.lua")

	local _GetNexStartTime = function(nStartHour, nStartMinute, nInterval)

	local nNextHour = nStartHour;

	local nNextMinute = ceil(nStartMinute / nInterval) * nInterval + nInterval;

	if nStartMinute >= 50 then

	nNextMinute = 0;

	if nStartHour == 23 then

	nNextHour = 0;

	else

	nNextHour = nStartHour + 1;

	end

	end

	return nNextHour, nNextMinute;

	end

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "vn201109 ");

	local nInterval = 10;

	local nStartHour = tonumber(date( "%H ")) ;

	local nStartMinute = tonumber(date( "%M "));

	local nNextHour, nNextMinute = % _GetNexStartTime(nStartHour, nStartMinute, nInterval);

	TaskTime(nNextHour, nNextMinute);

	-- thi�t tr� kho�ng c�ch th�i gian, ��n v� vi ph�t

	TaskInterval(nInterval);--nInterval ph�t m�t l�n

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n kh�ng


	TaskCountLimit(0);

	OutputMsg( "Khoi dong le hoi trung thu ");

	end

	function TaskContent()

	local nInterval = 10;

	local nTime = tonumber(date( "%H "));

	local nDate	= tonumber(date( "%Y%m "));

	OutputMsg(format( "Hoat dong trung thu khoi dong %d--%d", nDate, nTime));

	-- t� 2011 ni�n 9 nguy�t 1 nh�t ��o 2011 ni�n 9 nguy�t 30 nh�t 24 th�, m�i ng�y 20 �i�m --21 �i�m, � th�t th�nh ph� l�n th� ra qu�c kh�nh ph�o hoa �a 10% kinh nghi�m th��ng cho.

	if nDate == 201409 and nTime == 20 then

	local tCity =	{{1, "Ph��ng t��ng "},{11, "Th�nh �� "},{162, "��i L� "},{37, "Bi�n Kinh "},

	{78, "T��ng D��ng "},{80, "D��ng Ch�u "},{176, "L�m an "}};

	local nItem = random(1, 7);

	local nStartHour = tonumber(date( "%H "));

	local nStartMinute = tonumber(ceil(tonumber(date( "%M "))/nInterval)*nInterval);

	local nNextHour, nNextMinute = % _GetNexStartTime(nStartHour, nStartMinute, nInterval);

	local tCity =	{{1, "Ph��ng t��ng "},{11, "Th�nh �� "},{162, "��i L� "},{37, "Bi�n Kinh "},


	{78, "T��ng D��ng "},{80, "D��ng Ch�u "},{176, "L�m an "}};

	local nItem = random(1, 7);

	local strMsg = format( "T� %d: %02d ��o %d: %02d � %s s� d�ng qu�c kh�nh ph�o hoa t��ng thu ���c 10%% kinh nghi�m.",

	nStartHour, nStartMinute, nNextHour, nNextMinute, tCity[nItem][2]);

	OutputMsg(strMsg);

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", strMsg));

	local handle = OB_Create();

	ObjBuffer:PushObject(handle, tCity[nItem][1]);

	RemoteExecute( "\\script\\activitysys\\config\\33\\extend.lua", "SetSeptemperRewardsCityMapID", handle);

	OB_Release(handle);

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


