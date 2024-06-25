function TaskShedule()
	TaskName("vantieubanghoi")
	TaskInterval(24 * 60)
	TaskTime(19,00)
	TaskCountLimit(0)
	OutputMsg("=====>vantieubanghoi")
end

function TaskContent()
	local nHour = tonumber(date("%H"))
	local nWeek	= tonumber(date("%w"))
	--local nDate
	if   nWeek == 2 or  nWeek == 4  then
	RemoteExecute("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua",	"AddTieuBang", 0)
	OutputMsg("=====> dang banh")
	zMsg2SubWorld  = "<color=yellow>Nghe n„i <color=green>Thi’t Ph∏o Sa<color=yellow> Æ∑ xu t hi÷n tπi Map Bi÷n Kinh, bang hÈi nµo ÆÒ b∂n l‹nh k–o ph∏o sa v“ giao sœ Æ≠Óc tr‰ng th≠Îng."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	--szMsg = "<color=yellow>Nghe n„i <color=green>Thi’t Ph∏o Sa<color=yellow> Æ∑ xu t hi÷n tπi 224/214 Map Bien Kinh bang hÈi nµo ÆÒ b∂n l‹nh k–o ph∏o sa v“ giao sœ Æ≠Óc tr‰ng th≠Îng.."
--	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
	end
end