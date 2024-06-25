-- kevin109
function TaskShedule()
	TaskName("Boss Kiem Tien Ly Bach Xuat Hien Luc 12h00")
	TaskInterval(24 * 60)
	TaskTime(12, 30)
	TaskCountLimit(0)
	OutputMsg("======================================================================================================")
	OutputMsg("              BOSS KIEM TIEN LY BACH XUAT HIEN LUC 12h:30 TAI BIEN KINH                          ")
end

function TaskContent()
	RemoteExecute("\\script\\missions\\boss\\sieuboss_vng\\call_boss_ktlb_1200.lua","BossLyBach_1200",0)
	OutputMsg("=====> Boss Kiem Tien Ly Bach Xuat Hien Luc 12h00")
end