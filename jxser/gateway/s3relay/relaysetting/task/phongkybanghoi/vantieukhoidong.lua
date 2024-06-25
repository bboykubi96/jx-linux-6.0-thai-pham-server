function TaskShedule()
	TaskName("VanTieuCaNhan")
	TaskInterval(24*60)
	TaskTime(21,10)
	TaskCountLimit(0)
	OutputMsg("=====> BAT TINH NANG VAN TIEU CA NHAN")
end

function TaskContent()
	OutputMsg("=====> KHOI DONG VAN TIEU CA NHAN")
	zMsg2SubWorld  = "<color=yellow>Nghe nãi <color=green>T­íng Qu©n Gi÷ Phong Kú<color=yellow> ®· xuÊt hiÖn t¹i Map ChiÕn tr­êng Tèng Kim, C¸c T­íng LÜnh H·y Nhanh ®i C­íp Phong Kú."
        GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end
