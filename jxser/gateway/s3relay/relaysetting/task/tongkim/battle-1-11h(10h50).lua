	-- Tèng kim

	function TaskShedule()

	TaskName( "T­¬ng D­¬ng chiÕn dÞch (tèng kim)" );

	TaskInterval( 1440 );

	TaskTime( 11, 00 );

	TaskCountLimit( 0 );

	-- OutputMsg( "                           Chien truong Tong - Kim - 11h (10 : 50) " );

	end

function TaskContent()
--	Battle_StartNewRound( 1, 1 );	-- GMÖ¸Áî£¬Æô¶¯µÍ¼¶ÐÂÕ½¾Ö
--	Battle_StartNewRound( 1, 2 );	-- GMÖ¸Áî£¬Æô¶¯ÖÐ¼¶ÐÂÕ½¾Ö
	Battle_StartNewRound( 1, 3 );	-- GMÖ¸Áî£¬Æô¶¯¸ß¼¶ÐÂÕ½¾Ö
	zMsg2SubWorld  = "<color=yellow>ChiÕn tr­êng Tèng - Kim<color> <color=green> ®· ®Õn giê b¸o danh<color>, c¸c anh hïng hµo hiÖp h·y nhanh ch©n ®Õn Quan binh ®Ó b¸o danh, Thêi gian b¸o danh lµ <color=pink>10<color> phót."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


