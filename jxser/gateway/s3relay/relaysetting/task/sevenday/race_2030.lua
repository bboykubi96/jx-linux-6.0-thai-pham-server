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
	zMsg2SubWorld  = "<color=yellow>Ho�t ��ng <color=green>�ua Th� Sa M�c ��c Bi�t Nh�t Trong Ng�y<color>,<color=cyan> v�i ph�n th��ng vip �� ��n gi� b�o danh c�c tay �ua nhanh ch�n ��n ph��ng t��ng b�o danh th�i gian b�o danh 5 ph�t."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	szMsg = "<color=yellow>Ho�t ��ng<color=green> �ua Th� Sa M�c<color>,<color=cyan>th��ng t�p 1 ��n 35 �� ��n ph��ng t��ng b�o danh nh�n s� nhanh ch�n ��n l� quan b�o danh th�i gian b�o danh 5 ph�t."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


