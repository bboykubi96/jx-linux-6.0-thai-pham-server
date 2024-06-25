----------***Heart*Doldly***-------------
Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar start")
	TaskInterval(24 * 60)
	TaskTime(20, 30)
	TaskCountLimit(0)
end

function TaskContent()
	local day = tonumber(date("%w"))
	
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Start",
			0)
		OutputMsg("=====> [SEVENCITY] Bat Dau That Thanh Dai Chien")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
