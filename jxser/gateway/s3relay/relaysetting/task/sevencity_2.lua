Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar close signup")
	TaskInterval(24 * 60)
	TaskTime(16, 50)
	TaskCountLimit(0)
	OutputMsg("[SEVENCITY]task[close_signup] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:CloseSignup",
			0)
		OutputMsg("[SEVENCITY]close signup")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
