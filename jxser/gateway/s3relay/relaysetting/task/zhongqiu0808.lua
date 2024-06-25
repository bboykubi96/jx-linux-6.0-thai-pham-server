	function TaskShedule()

	-- thiÕt trİ ph­¬ng ¸n tªn gäi

	TaskName( "Phi ngùa hoa ®¨ng ho¹t ®éng ")

	local nStartHour = tonumber(date( "%H ")) + 1;

	if (nStartHour >= 24) then

	nStartHour = 0;

	end;

	TaskTime(nStartHour, 0);

	-- thiÕt trİ kho¶ng c¸ch thêi gian, ®¬n vŞ vi phót

	TaskInterval(30) --30 phót mét lÇn

	-- thiÕt trİ g©y ra sè lÇn, 0 biÓu thŞ v« h¹n sè lÇn

	TaskCountLimit(0)

	OutputMsg( "Phi ngùa hoa ®¨ng ho¹t ®éng ");

	end

	function TaskContent()

	local nTime = tonumber(date( "%H%M "))

	local nWeek	= tonumber(date( "%w "))

	local nDate	= tonumber(date( "%y%m%d "))

	local nTaskState = tonumber(date( "%y%m%d%H "))

	--if nDate < 080905 or nDate > 081005 then --2008 niªn 09 nguyÖt 05 nhËt tíi 2008 niªn 10 nguyÖt 5 nhËt 24 ®iÓm

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

	{nId = 121, szName = "Long m«n trÊn", tbPos = { {226,275}, {276,282} } },

	{nId = 100, szName = "Chu tiªn trÊn", tbPos = { {183,203}, {229,190} } },

	{nId = 101, szName = "§¹o h­¬ng th«n", tbPos = { {171,198}, {232,205} } },

	{nId = 174, szName = "Long tuyÒn th«n", tbPos = { {218,192}, {183,211} } },

	{nId = 53, szName = "Ba l¨ng huyÒn", tbPos = { {220,200}, {207,182} } },

	{nId = 20, szName = "Giang t©n th«n", tbPos = { {432,359}, {438,396} } },

	{nId = 153, szName = "Th¹ch cæ trÊn", tbPos = { {232,180}, {189,223} } },

	{nId = 99, szName = "VÜnh L¹c trÊn", tbPos = { {189, 223}, {224,206} } },

	}

	local nMapCount = getn(tbMap)

	for i=1, 4 do

	local nIdx = random(1,nMapCount+1-i);

	local tbFnagxiang =

	{

	[1] = "§«ng ®Ìn kĞo qu©n",

	[2] = "T©y ®Ìn kĞo qu©n ",

	[3] = "Nam ®Ìn kĞo qu©n",

	[4] = "B¾c ®Ìn kĞo qu©n",

	}

	local nPosIdx = random(1, getn(tbMap[nIdx]. tbPos))

	local nX = tbMap[nIdx]. tbPos[nPosIdx][1] * 8

	local nY = tbMap[nIdx]. tbPos[nPosIdx][2] * 16

	local szExec = format( "dwf \\script\\event\\zhongqiu_jieri\\200808\\zoumadeng\\callnpc.lua zhongqiu0808_CallBoss(%d, %d, %d, %d, %d)", tbMap[nIdx]. nId, nX, nY, i,tonumber(nTaskState. . i))

	OutputMsg(szExec);

	GlobalExecute(szExec)

	tbMap[nMapCount+1-i], tbMap[nIdx] = tbMap[nIdx], tbMap[nMapCount+1-i] -- b¶ lùa phãng tíi phİa

	end

	local szMsg = "§«ng t©y nam b¾c ®Ìn kĞo qu©n ®· xuÊt hiÖn, thØnh c¸c vŞ ®¹i hiÖp tham gia ®èt ®Ìn."

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	elseif flag == 2 then

	local szMsg = "§Ìn kĞo qu©n ®èt ®Ìn ho¹t ®éng ®· kÕt thóc, chóc c¸c vŞ ®¹i hiÖp lÇn sau cµng thªm may m¾n."

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	OutputMsg(szMsg);

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


