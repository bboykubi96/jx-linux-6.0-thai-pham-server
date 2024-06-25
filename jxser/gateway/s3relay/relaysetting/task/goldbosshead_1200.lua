

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thiÕt trÝ ph­¬ng ¸n tªn gäi

	TaskName( "Boss tiÓu hoµng kim 1200 ")

	-- thiÕt trÝ kho¶ng c¸ch thêi gian, ®¬n vÞ vi phót

	TaskInterval(1440)

	-- thiÕt trÝ g©y ra sè lÇn, 0 biÓu thÞ v« h¹n sè lÇn

	TaskCountLimit(0)

	-- ®Æt ra ®óng giê kú khëi ®éng thêi gian

	TaskTime(12, 05);

	-- c¾t bá tõ tr­íc sè liÖu

	for i = 1, getn(tb_goldboss) do

	success = ClearRecordOnShareDB( "GoldBoss", tb_goldboss[i]. Sid, 0, 1, 0);

	OutputMsg( "Du lieu Boss hoang kim database ".. tb_goldboss[i]. Sid);
	OutputMsg( "Boss tiÓu hoµng kim 1205 ")

	end

	end

	function TaskContent()

	for i = 1, getn(tb_goldboss) do

	str = tb_goldboss[i]. str;

	GlobalExecute(format( "dw AddLocalNews([[%s]])", str));

	end

	GlobalExecute( "dwf \\script\\missions\\boss\\callboss_incity.lua CallBossDown_Fixure() ");

	end


