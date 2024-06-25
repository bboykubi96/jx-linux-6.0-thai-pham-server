function TaskShedule()
	TaskName("CAP NHAT XEP HANG SERVER 10h")
	TaskInterval(24 * 60)
	TaskTime(17, 0)
	TaskCountLimit(0)
	OutputMsg("=====> CAP NHAT XEP HANG TOAN SERVER 17h")
end
function TaskContent()
	RemoteExecute("\\script\\rank\\vngtop10.lua",	"tbTop10:SapXepDSXepHang", 0)
	szMsg = "CËp nhËt thµnh c«ng xÕp h¹ng cho toµn server. C¸c nh©n sÜ h·y tho¸t Game ra vµo l¹i ®Ó xem thø h¹ng hiÖn t¹i."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
	OutputMsg("=====> CAP NHAT XEP HANG TOAN SERVER 17h")
end
