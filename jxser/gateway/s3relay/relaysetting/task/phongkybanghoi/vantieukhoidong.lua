function TaskShedule()
	TaskName("VanTieuCaNhan")
	TaskInterval(24*60)
	TaskTime(21,10)
	TaskCountLimit(0)
	OutputMsg("=====> BAT TINH NANG VAN TIEU CA NHAN")
end

function TaskContent()
	OutputMsg("=====> KHOI DONG VAN TIEU CA NHAN")
	zMsg2SubWorld  = "<color=yellow>Nghe n�i <color=green>T��ng Qu�n Gi� Phong K�<color=yellow> �� xu�t hi�n t�i Map Chi�n tr��ng T�ng Kim, C�c T��ng L�nh H�y Nhanh �i C��p Phong K�."
        GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end
