----------***Heart*Doldly***-------------
Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar close signup")
	TaskInterval(24 * 60)
	TaskTime(19, 00)
	TaskCountLimit(0)
end

function TaskContent()
	local day = tonumber(date("%w"))
	
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:CloseSignup",
			0)
		OutputMsg("=====> [SEVENCITY] Ket Thuc Ghi Danh That Thanh Dai Chien")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
