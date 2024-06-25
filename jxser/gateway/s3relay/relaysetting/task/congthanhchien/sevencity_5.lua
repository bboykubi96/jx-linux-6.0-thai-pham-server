----------***Heart*Doldly***-------------
Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar close")
	TaskInterval(24 * 60)
	TaskTime(21, 30)
	TaskCountLimit(0)
end

function TaskContent()
	local day = tonumber(date("%w"))

	if (day == 5) then
		BattleWorld:Close()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Close",
			0)
		OutputMsg("=====> [SEVENCITY] Ket Thuc That Thanh Dai Chien")
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
