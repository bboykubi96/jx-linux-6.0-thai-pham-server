function TaskShedule()
	TaskName("LongDenBangHoi")
	TaskInterval(24 * 60)
	TaskTime(19,05)
	TaskCountLimit(0)
	OutputMsg("=====>LongDenBangHoi")
end

function TaskContent()
local nHour = tonumber(date("%H"))
local nWeek	= tonumber(date("%w"))
	local nDate
                                                                               if  nWeek == 2 or nWeek == 4 or nWeek == 6 then
                                                                               return							-----khong lam gi de battel 2 chay
	else
	RemoteExecute("\\script\\global\\quanlygame\\sukien\\longdenbanghoi\\longden.lua",	"add_npc_click", 0)
	OutputMsg("=====> LongDenBangHoi")
	zMsg2SubWorld  = "<color=yellow>Nghe Thi�n H� ��n �o�n<color=green>B� �� ��i Nh�n <color=yellow>�� xu�t hi�n t�i b�n �� b� �� c�c nh�n s� h�y mau mau ��n l� quan b�o danh."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end
end