function TaskShedule()
	TaskName("XoaDuLieuCongThanhThienTu")
	TaskInterval(1440)
	TaskTime(23,35)
	TaskCountLimit(0)
	OutputMsg("=====>XoaDuLieuCongThanhThienTu")
end

function TaskContent()
	local nWeek	= tonumber(date("%w"))
                                                                                  if  nWeek == 1 or nWeek == 0 or nWeek == 3 or nWeek == 4 or nWeek == 5 or nWeek == 6 then
                                                                                  return	
	else
	RemoteExecute("\\script\\nationalwar\\npc.lua",	"XoaDuLieuCongThanhBanThuong", 0)
	OutputMsg("=====> XoaDuLieuCongThanhThienTu")
zMsg2SubWorld  = "<color=pink>Reset C�p Nh�t Th�nh C�ng D� Li�u C�ng Th�nh Thi�n T�."
GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
szMsg = "<color=pink>Reset Th�nh C�ng D� Li�u C�ng Th�nh Thi�n T�."
GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end
end