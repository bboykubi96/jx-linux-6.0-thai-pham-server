----------***Heart*Doldly***-------------
Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar start signup")
	TaskInterval(24 * 60)
	TaskTime(18, 00)
	TaskCountLimit(0)
end

function TaskContent()
	local day = tonumber(date("%w"))
	
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:StartSignup",
			0)
		OutputMsg("=====> [SEVENCITY] Bat Dau Ghi Danh That Thanh Dai Chien")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
