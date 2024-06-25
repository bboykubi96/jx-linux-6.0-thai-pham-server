function TaskShedule()
	TaskName("BAN TIEC")
	TaskInterval(24 * 60)
	TaskTime(19,40)
	TaskCountLimit(0)
	OutputMsg("=====>Yen Tiec  19h40 =====> ")
end

function TaskContent()
	local day = tonumber(date("%w"))
	if (day == 6) then
	RemoteExecute("\\script\\global\\quanlygame\\sukien\\sevenday\\bantiec\\bantiec.lua",	"add_npc_click", 0)
	OutputMsg("=====> Yen Tiec  19h40=====>")
	zMsg2SubWorld  = "<color=yellow>Nghe nãi <color=green>Hßa ®¹i nh©n ®ang më yÕn tiÖc chiªu ®·i t¹i T­¬ng D­¬ng thµnh<color=yellow> h·y ®Õn tham gia ngay."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	end
end
