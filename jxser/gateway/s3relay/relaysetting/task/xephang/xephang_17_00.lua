function TaskShedule()
	TaskName("CAP NHAT XEP HANG SERVER 10h")
	TaskInterval(24 * 60)
	TaskTime(17, 0)
	TaskCountLimit(0)
	OutputMsg("=====> CAP NHAT XEP HANG TOAN SERVER 17h")
end
function TaskContent()
	RemoteExecute("\\script\\rank\\vngtop10.lua",	"tbTop10:SapXepDSXepHang", 0)
	szMsg = "C�p nh�t th�nh c�ng x�p h�ng cho to�n server. C�c nh�n s� h�y tho�t Game ra v�o l�i �� xem th� h�ng hi�n t�i."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
	OutputMsg("=====> CAP NHAT XEP HANG TOAN SERVER 17h")
end
