	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "Phi ng�a hoa ��ng ho�t ��ng ")

	local nStartHour = tonumber(date( "%H ")) + 1;

	if (nStartHour >= 24) then

	nStartHour = 0;

	end;

	TaskTime(nStartHour, 0);

	-- thi�t tr� kho�ng c�ch th�i gian, ��n v� vi ph�t

	TaskInterval(30) --30 ph�t m�t l�n

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(0)

	OutputMsg( "Phi ng�a hoa ��ng ho�t ��ng ");

	end

	function TaskContent()

	local nTime = tonumber(date( "%H%M "))

	local nWeek	= tonumber(date( "%w "))

	local nDate	= tonumber(date( "%y%m%d "))

	local nTaskState = tonumber(date( "%y%m%d%H "))

	--if nDate < 080905 or nDate > 081005 then --2008 ni�n 09 nguy�t 05 nh�t t�i 2008 ni�n 10 nguy�t 5 nh�t 24 �i�m

	--return

	--end

	local flag = 0

	if (nTime >= 1900 and nTime <= 1902) or (nTime >= 2130 and nTime <= 2132) then

	flag = 1

	elseif (nWeek == 5 or nWeek == 6 or nWeek == 0) and (nTime >= 1100 and nTime <= 1102) then

	flag = 1

	elseif (nTime >= 2000 and nTime <= 2002) or (nTime >= 2230 and nTime <= 2232) then

	flag = 2

	elseif (nWeek == 5 or nWeek == 6 or nWeek == 0) and (nTime >= 1200 and nTime <= 1202) then

	flag = 2

	end

	if flag == 1 then

	local tbMap =

	{

	{nId = 121, szName = "Long m�n tr�n", tbPos = { {226,275}, {276,282} } },

	{nId = 100, szName = "Chu ti�n tr�n", tbPos = { {183,203}, {229,190} } },

	{nId = 101, szName = "��o h��ng th�n", tbPos = { {171,198}, {232,205} } },

	{nId = 174, szName = "Long tuy�n th�n", tbPos = { {218,192}, {183,211} } },

	{nId = 53, szName = "Ba l�ng huy�n", tbPos = { {220,200}, {207,182} } },

	{nId = 20, szName = "Giang t�n th�n", tbPos = { {432,359}, {438,396} } },

	{nId = 153, szName = "Th�ch c� tr�n", tbPos = { {232,180}, {189,223} } },

	{nId = 99, szName = "V�nh L�c tr�n", tbPos = { {189, 223}, {224,206} } },

	}

	local nMapCount = getn(tbMap)

	for i=1, 4 do

	local nIdx = random(1,nMapCount+1-i);

	local tbFnagxiang =

	{

	[1] = "��ng ��n k�o qu�n",

	[2] = "T�y ��n k�o qu�n ",

	[3] = "Nam ��n k�o qu�n",

	[4] = "B�c ��n k�o qu�n",

	}

	local nPosIdx = random(1, getn(tbMap[nIdx]. tbPos))

	local nX = tbMap[nIdx]. tbPos[nPosIdx][1] * 8

	local nY = tbMap[nIdx]. tbPos[nPosIdx][2] * 16

	local szExec = format( "dwf \\script\\event\\zhongqiu_jieri\\200808\\zoumadeng\\callnpc.lua zhongqiu0808_CallBoss(%d, %d, %d, %d, %d)", tbMap[nIdx]. nId, nX, nY, i,tonumber(nTaskState. . i))

	OutputMsg(szExec);

	GlobalExecute(szExec)

	tbMap[nMapCount+1-i], tbMap[nIdx] = tbMap[nIdx], tbMap[nMapCount+1-i] -- b� l�a ph�ng t�i ph�a

	end

	local szMsg = "��ng t�y nam b�c ��n k�o qu�n �� xu�t hi�n, th�nh c�c v� ��i hi�p tham gia ��t ��n."

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	elseif flag == 2 then

	local szMsg = "��n k�o qu�n ��t ��n ho�t ��ng �� k�t th�c, ch�c c�c v� ��i hi�p l�n sau c�ng th�m may m�n."

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	OutputMsg(szMsg);

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


