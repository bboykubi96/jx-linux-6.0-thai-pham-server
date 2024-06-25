---------------------------***Script*By*Heart*Doldly***-----------------------------------
function TaskShedule()
	TaskName("Boss Kiem Tien Ly Bach Xuat Hien Luc 20h30")
	TaskInterval(24 * 60)
	TaskTime(19, 30)
	TaskCountLimit(0)
	OutputMsg("             BOSS KIEM TIEN LY BACH XUAT HIEN LUC 20h:30 TAI BAN DO LONG MON TRAN              ")
end

function TaskContent()
	RemoteExecute("\\script\\missions\\boss\\sieuboss_vng\\call_boss_ktlb_1200.lua","BossLyBach_1200",0)
	OutputMsg("=====> Boss Kiem Tien Ly Bach Xuat Hien Luc 22h45")
end