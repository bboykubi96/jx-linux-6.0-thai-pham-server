	-- ViÖt thu lÖ phÝ 2011 niªn 9 nguyÖt ho¹t ®éng (lÔ quèc kh¸nh vµ Trung thu tiÕt), ë thÊt thµnh phè lín phãng ph¸o hoa

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

	-- thiÕt trÝ ph­¬ng ¸n tªn gäi

	TaskName( "vn201109 ");

	local nInterval = 10;

	local nStartHour = tonumber(date( "%H ")) ;

	local nStartMinute = tonumber(date( "%M "));

	local nNextHour, nNextMinute = % _GetNexStartTime(nStartHour, nStartMinute, nInterval);

	TaskTime(nNextHour, nNextMinute);

	-- thiÕt trÝ kho¶ng c¸ch thêi gian, ®¬n vÞ vi phót

	TaskInterval(nInterval);--nInterval phót mét lÇn

	-- thiÕt trÝ g©y ra sè lÇn, 0 biÓu thÞ v« h¹n sè lÇn kh«ng


	TaskCountLimit(0);

	OutputMsg( "Khoi dong le hoi trung thu ");

	end

	function TaskContent()

	local nInterval = 10;

	local nTime = tonumber(date( "%H "));

	local nDate	= tonumber(date( "%Y%m "));

	OutputMsg(format( "Hoat dong trung thu khoi dong %d--%d", nDate, nTime));

	-- tõ 2011 niªn 9 nguyÖt 1 nhËt ®¸o 2011 niªn 9 nguyÖt 30 nhËt 24 th×, mçi ngµy 20 ®iÓm --21 ®iÓm, ë thÊt thµnh phè lín th¶ ra quèc kh¸nh ph¸o hoa ®a 10% kinh nghiÖm th­ëng cho.

	if nDate == 201409 and nTime == 20 then

	local tCity =	{{1, "Ph­îng t­êng "},{11, "Thµnh ®« "},{162, "§¹i Lý "},{37, "BiÖn Kinh "},

	{78, "T­¬ng D­¬ng "},{80, "D­¬ng Ch©u "},{176, "L©m an "}};

	local nItem = random(1, 7);

	local nStartHour = tonumber(date( "%H "));

	local nStartMinute = tonumber(ceil(tonumber(date( "%M "))/nInterval)*nInterval);

	local nNextHour, nNextMinute = % _GetNexStartTime(nStartHour, nStartMinute, nInterval);

	local tCity =	{{1, "Ph­îng t­êng "},{11, "Thµnh ®« "},{162, "§¹i Lý "},{37, "BiÖn Kinh "},


	{78, "T­¬ng D­¬ng "},{80, "D­¬ng Ch©u "},{176, "L©m an "}};

	local nItem = random(1, 7);

	local strMsg = format( "Tõ %d: %02d ®¸o %d: %02d ë %s sö dông quèc kh¸nh ph¸o hoa t­¬ng thu ®­îc 10%% kinh nghiÖm.",

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


