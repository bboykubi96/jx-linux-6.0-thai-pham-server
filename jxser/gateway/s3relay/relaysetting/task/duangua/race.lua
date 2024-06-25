-----------***Heart*Doldly***------------

function TaskShedule()
	TaskName("Ho¹t §éng §ua Ngùa")
	TaskInterval(24 * 60);
	TaskTime(19,30);
	TaskCountLimit(0);
	OutputMsg("=======================================================================================================")
	OutputMsg("                                   Hoat Dong Dua Ngua 19:30 BAT DAU                                    ")
end

function TaskContent()
	OutputMsg("===================Hoat Dong Dua Ngua 19:30 BAT DAU==================")
	GlobalExecute("dwf \\script\\missions\\racegame\\missionctrl.lua startRaceMission()")
	szMsg = "Ho¹t §éng §ua Ngùa  §· B¾t §Çu B¸o Danh, H·y Nhanh Ch©n §Õn Tham Gia T¹i Ba L¨ng HuyÖn, Thêi Gian ChuÈn BÞ  Lµ 5 Phót!"
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end



