Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar close")
	TaskInterval(24 * 60)
	TaskTime(17, 55)
	TaskCountLimit(0)
	OutputMsg("[SEVENCITY]task[close] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	if (day == 5) then
		BattleWorld:Close()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Close",
			0)
		OutputMsg("[SEVENCITY]close")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
