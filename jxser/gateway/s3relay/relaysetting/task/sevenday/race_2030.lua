function TaskShedule()
	TaskName("DUA NGUA 20H30")
	TaskInterval(24 * 60)
	TaskTime(20,30)
	TaskCountLimit(0)
	OutputMsg("=====>DUA NGUA 20H30=====>")
end

function TaskContent()	
	local day = tonumber(date("%w"))
	if (day == 6) then
	GlobalExecute("dwf \\script\\missions\\racegame\\missionctrl.lua startRaceMission()")
	OutputMsg("=====>DUA NGUA 20H30=====>")
	zMsg2SubWorld  = "<color=yellow>Ho¹t ®éng <color=green>§ua Thó Sa M¹c §Æc BiÖt NhÊt Trong Ngµy<color>,<color=cyan> víi phÇn th­ëng vip ®· ®Õn giê b¸o danh c¸c tay ®ua nhanh ch©n ®Õn ph­îng t­êng b¸o danh thíi gian b¸o danh 5 phót."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	szMsg = "<color=yellow>Ho¹t ®éng<color=green> §ua Thó Sa M¹c<color>,<color=cyan>th­ëng tãp 1 ®Õn 35 ®· ®Õn ph­îng t­êng b¸o danh nh©n sü nhanh ch©n ®Õn lÔ quan b¸o danh thíi gian b¸o danh 5 phót."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


