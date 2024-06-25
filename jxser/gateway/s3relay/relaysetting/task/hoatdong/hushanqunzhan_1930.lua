function TaskShedule()
	TaskName("Dau truong 100 - 19h30")
	TaskInterval(24 * 60)
	TaskTime(19, 30)
	TaskCountLimit(0)
	OutputMsg("=====>Dau truong 100 - 19h30")
end

function TaskContent()
		OutputMsg("=====>=============== Dau truong 100 - 19h30====================>");
		GlobalExecute("dwf \\script\\missions\\huashanqunzhan\\missionctrl.lua startHuaShanQunZhanMission()")
	szMsg = "<color=pink>§Êu Tr­êng Sinh Tö<color=cyan> ®ang b¾t ®Çu nhËn b¸o danh. Quý nh©n sÜ h·y ®Õn <color=yellow>LÔ Quan Ph­îng t­êng hoÆc Hoa S¬n c¶nh kü tr­êng gÆp Hoa S¬n l·o tÈu<color=cyan> ®Ó b¸o danh thêi gian b¸o danh lµ <color=green>10<color> phót!"
		GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", "§Êu Tr­êng Sinh Tö §· Më Thêi Gian B¸o Danh Lµ 10 Phót Hoa S¬n."))
	                      GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end



function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


