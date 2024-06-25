Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar start")
	TaskInterval(24 * 60)
	TaskTime(16, 55)
	TaskCountLimit(0)
	OutputMsg("[SEVENCITY]task[start] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Start",
			0)
		OutputMsg("[SEVENCITY]start")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
