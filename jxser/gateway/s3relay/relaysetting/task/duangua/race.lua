-----------***Heart*Doldly***------------

function TaskShedule()
	TaskName("Ho�t ��ng �ua Ng�a")
	TaskInterval(24 * 60);
	TaskTime(19,30);
	TaskCountLimit(0);
	OutputMsg("=======================================================================================================")
	OutputMsg("                                   Hoat Dong Dua Ngua 19:30 BAT DAU                                    ")
end

function TaskContent()
	OutputMsg("===================Hoat Dong Dua Ngua 19:30 BAT DAU==================")
	GlobalExecute("dwf \\script\\missions\\racegame\\missionctrl.lua startRaceMission()")
	szMsg = "Ho�t ��ng �ua Ng�a  �� B�t ��u B�o Danh, H�y Nhanh Ch�n ��n Tham Gia T�i Ba L�ng Huy�n, Th�i Gian Chu�n B�  L� 5 Ph�t!"
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end



