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
	szMsg = "<color=pink>Hoa S�n ��i Chi�n<color=cyan> �ang b�t ��u nh�n b�o danh. Qu� nh�n s� h�y ��n <color=yellow>Hoa S�n L�o T�u t�i c�nh k� tr��ng<color=cyan> �� b�o danh th�i gian b�o danh l� <color=green>10<color> ph�t!"
		GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", "Hoa S�n ��i Chi�n �� M� Th�i Gian B�o Danh L� 10 Ph�t T�i  Hoa S�n L�o T�u t�i c�nh k� tr��ng"))
	                      GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


