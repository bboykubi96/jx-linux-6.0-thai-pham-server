function TaskShedule()
	TaskName("LongDenBangHoi")
	TaskInterval(24*60)
	TaskTime(20,05)
	TaskCountLimit(0)
	OutputMsg("=====> BAT TINH NANG TRANH DOAT TRONG BANG HOI")
end

function TaskContent()
	local nHour = tonumber(date("%H"))
	local nWeek	= tonumber(date("%w"))
	--local nDate
	if   nWeek == 2 or  nWeek == 4 or nWeek == 6 or nWeek == 0 then -- 3-5 -7
                     return							-----khong lam gi de battel 2 chay
	else
	RemoteExecute("\\script\\update_feature\\trongbanghoi\\trongbanghoi.lua",	"add_npc_click3", 0)
	OutputMsg("=====> KHOI DONG TRANH DOAT TRONG BANG HOI")
	zMsg2SubWorld  = "<color=wood>Tin mËt b¸o <color=gold>Trèng Bang Héi<color> ®· xuÊt hiÖn t¹i <color=gold>Map Bang Hoi<color> Bang Chñ cña c¸c bang héi nhanh tay ®¸nh Trèng!"
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))

end
end
