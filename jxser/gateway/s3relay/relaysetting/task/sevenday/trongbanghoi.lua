function TaskShedule()
	TaskName("TrongBangHoi")
	TaskInterval(24 * 60)
	TaskTime(18,30)
	TaskCountLimit(0)
	OutputMsg("=====>Trong Bang Hoi  19h00 =====> ")
end

function TaskContent()
	--local day = tonumber(date("%w"))
	--if (day == 6) then
	RemoteExecute("\\script\\global\\quanlygame\\sukien\\sevenday\\trongbanghoi\\trongbanghoi.lua",	"add_npc_click", 0)
	OutputMsg("=====> Trong Bang Hoi 19h00=====>")
	zMsg2SubWorld  = "<color=yellow>Nghe n�i <color=green>Tr�ng bang h�i �� xu�t hi�n t�i 196/212 Bi�n Kinh<color=yellow> c�c bang ch� h�y c� bang ch� h�y nhanh tay t�m v� tranh �o�t."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	--end	
end
