----------***Heart*Doldly***-------------
Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar prepare")
	TaskInterval(24 * 60)
	TaskTime(20, 00)
	TaskCountLimit(0)
end

function TaskContent()
	local day = tonumber(date("%w"))
	
	if (day == 5) then
		BattleWorld:Clear()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Prepare",
			0)
		OutputMsg("=====> [SEVENCITY] Chuan Bi That Thanh Dai Chien")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
