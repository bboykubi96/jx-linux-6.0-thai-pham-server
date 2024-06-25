Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar prepare")
	TaskInterval(24 * 60)
	TaskTime(16, 52)
	TaskCountLimit(0)
	OutputMsg("[SEVENCITY]task[prepare] loaded")
end

function TaskContent()
	local day = tonumber(date("%w"))
	if (day == 5) then
		BattleWorld:Clear()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Prepare",
			0)
		OutputMsg("[SEVENCITY]prepare")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
