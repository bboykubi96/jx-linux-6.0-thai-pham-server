	-- T鑞g kim

	function TaskShedule()

	TaskName( "Tng Dng chi課 d辌h (t鑞g kim)" );

	TaskInterval( 1440 );

	TaskTime( 18, 53);

	TaskCountLimit( 0 );

	-- OutputMsg( "                           Chien truong Tong - Kim - 19h (18 : 50) " );

	end
function TaskContent()
--	Battle_StartNewRound( 1, 1 );	-- GM指令，启动低级新战局
--	Battle_StartNewRound( 1, 2 );	-- GM指令，启动中级新战局
	Battle_StartNewRound( 1, 3 );	-- GM指令，启动高级新战局
	zMsg2SubWorld  = "<color=yellow>Chi課 trng T鑞g - Kim<color> <color=green>Cao c蕄<color>  n gi?b竜 danh, c竎 anh h飊g h祇 hi謕 h穣 nhanh ch﹏ n Ba L╪g Huy謓 g苝 l?quan  b竜 danh, Th阨 gian b竜 danh l?<color=pink>10<color> ph髏."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


