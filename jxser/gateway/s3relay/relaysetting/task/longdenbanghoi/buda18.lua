function TaskShedule()
	TaskName("LongDenBangHoi")
	TaskInterval(24 * 60)
	TaskTime(20,05)
	TaskCountLimit(0)
	OutputMsg("=====>LongDenBangHoi")
end

function TaskContent()
	local nHour = tonumber(date("%H"))
	local nWeek	= tonumber(date("%w"))
	--local nDate
                          if nWeek == 1 or nWeek == 2 or nWeek == 3 or nWeek ==4 or nWeek == 5 or nWeek == 6 then
                                                                                 return							-----khong lam gi de battel 2 chay
	else
	RemoteExecute("\\script\\update_feature\\longdenbanghoi\\longden.lua",	"add_npc_click4", 0)
	OutputMsg("=====> LongDenBangHoi")
	zMsg2SubWorld  = "<color=yellow>Nghe Thi�n H� ��n R�ng<color=green>L�ng ��n bang H�i <color=yellow>�� xu�t hi�n t�i b�n �� Map Bang Hoi c�c nh�n s� h�y mau mau ��n �� Chi�m"
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end
end