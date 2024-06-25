function TaskShedule()
	TaskName("hoa son dai chien 22h30")
	TaskInterval(24 * 60)
	TaskTime(22, 30)
	TaskCountLimit(0)
	OutputMsg("=====>hoa son dai chien 22h30")
end

function TaskContent()
		OutputMsg("=====>=============== hoa son dai chien 00h ====================>");
		GlobalExecute("dwf \\script\\missions\\huashanqunzhan\\missionctrl.lua startHuaShanQunZhanMission()")
	szMsg = "<color=pink>Hoa S¬n §¹i ChiÕn<color=cyan> ®ang b¾t ®Çu nhËn b¸o danh. Quý nh©n sÜ h·y ®Õn <color=yellow>Hoa S¬n L·o TÈu t¹i c¶nh kü tr­êng<color=cyan> ®Ó b¸o danh thêi gian b¸o danh lµ <color=green>10<color> phót!"
		GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", "Hoa S¬n §¹i ChiÕn §· Më Thêi Gian B¸o Danh Lµ 10 Phót T¹i  Hoa S¬n L·o TÈu t¹i c¶nh kü tr­êng"))
	                      GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


