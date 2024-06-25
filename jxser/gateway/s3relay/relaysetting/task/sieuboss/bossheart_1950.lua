---------------------------***Script*By*Heart*Doldly***-----------------------------------
function TaskShedule()
	TaskName("Boss Tieu Phong Xuat Hien Luc 22h00")
	TaskInterval(24 * 60)
	TaskTime(19, 50)
	TaskCountLimit(0)
	OutputMsg("             BOSS TIEU PHONG XUAT HIEN LUC 19h:30 TAI BAN DO LONG MON TRAN                ")
end

function TaskContent()
	RemoteExecute("\\script\\missions\\boss\\sieuboss_vng\\call_boss_tieuphong_1950.lua","BossTieuPhong_1950",0)
	OutputMsg("=====> Boss Tieu Phong Xuat Hien Luc 23h30")
end