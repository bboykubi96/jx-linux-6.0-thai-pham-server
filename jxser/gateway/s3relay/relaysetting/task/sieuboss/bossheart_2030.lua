---------------------------***Script*By*Heart*Doldly***-----------------------------------
function TaskShedule()
	TaskName("Boss Kiem Tien Ly Bach Xuat Hien Luc 20h30")
	TaskInterval(24 * 60)
	TaskTime(22, 10)
	TaskCountLimit(0)
	OutputMsg("             BOSS KIEM TIEN LY BACH XUAT HIEN LUC 20h:30 TAI BAN DO LONG MON TRAN              ")
end

function TaskContent()
	RemoteExecute("\\script\\missions\\boss\\sieuboss_vng\\call_boss_ktlb_2030.lua","BossLyBach_2030",0)
	OutputMsg("=====> Boss Kiem Tien Ly Bach Xuat Hien Luc 22h45")
end