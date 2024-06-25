-- Kevin109
function TaskShedule()
	TaskName("Boss Tieu Phong Xuat Hien Luc 22h00")
	TaskInterval(24 * 60)
	TaskTime(22, 05)
	TaskCountLimit(0)
	OutputMsg("             BOSS TIEU PHONG XUAT HIEN LUC 22h:05 TAI BAN DO BIEN KINH                ")
end

function TaskContent()
	-- RemoteExecute("\\script\\missions\\boss\\sieuboss_vng\\call_boss_tieuphong_2200.lua","BossTieuPhong_1915",0)
		RemoteExecute("\\script\\missions\\boss\\sieuboss_vng\\call_boss_ktlb_1200.lua","BossLyBach_1200",0)
	OutputMsg("=====> Boss Tieu Phong Xuat Hien Luc 19h15")
end