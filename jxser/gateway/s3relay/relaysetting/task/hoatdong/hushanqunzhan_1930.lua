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
	szMsg = "<color=pink>��u Tr��ng Sinh T�<color=cyan> �ang b�t ��u nh�n b�o danh. Qu� nh�n s� h�y ��n <color=yellow>L� Quan Ph��ng t��ng ho�c Hoa S�n c�nh k� tr��ng g�p Hoa S�n l�o t�u<color=cyan> �� b�o danh th�i gian b�o danh l� <color=green>10<color> ph�t!"
		GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", "��u Tr��ng Sinh T� �� M� Th�i Gian B�o Danh L� 10 Ph�t Hoa S�n."))
	                      GlobalExecute(format("dw Msg2SubWorld([[%s]])",szMsg))
	end



function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


