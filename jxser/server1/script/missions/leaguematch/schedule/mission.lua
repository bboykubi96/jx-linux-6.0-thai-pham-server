Include( "\\script\\missions\\leaguematch\\head.lua" )

function InitMission()
	SetMissionV(WLLS_MSV_MSID, WLLS_MSID_SCHEDULE);

	RunMission(WLLS_MSID_SCHEDULE)
end;

function RunMission()
end;

function EndMission()
	wlls_remove_camp(0)
end;

function OnLeave(plidx)
end;
