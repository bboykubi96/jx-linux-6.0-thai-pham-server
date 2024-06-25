function TaskShedule()
	TaskName( "Thach Thuc Thoi Gian" );
	TaskInterval(24*60);
	TaskTime(11, 0);
	TaskCountLimit(0);	
	OutputMsg("====================  VUOT AI KHIEU CHIEN THOI GIAN GIO LE BAT DAU========================")
end

function TaskContent()
	OutputMsg("VUOT AI KHIEU CHIEN THOI GIAN DANG GHI DANH");
	GlobalExecute("dwf \\settings\\trigger_challengeoftime.lua OnTrigger()");
	szMsg = "'Th¸ch thøc thêi gian' §· ®Õn giê b¸o danh. §éi tr­ëng nhanh ch©n ®Õn NhiÕp ThÝ TrÇn ®Ó ghi danh thêi gian ghi danh lµ 10 phót."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
