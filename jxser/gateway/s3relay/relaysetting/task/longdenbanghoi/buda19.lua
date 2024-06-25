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
	zMsg2SubWorld  = "<color=yellow>Nghe Thiªn Hµ §ån §o¸n<color=green>Bó §¸ §¹i Nh©n <color=yellow>®· xuÊt hiÖn t¹i b¶n ®å bó ®¸ c¸c nh©n sü h·y mau mau ®Õn lÔ quan b¸o danh."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end
end