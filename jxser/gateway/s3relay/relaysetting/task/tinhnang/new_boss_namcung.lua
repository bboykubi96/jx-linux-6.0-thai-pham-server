N_DATE_START	= 20080611
N_DATE_END	= 20200118

function TaskShedule()
	
	TaskName("Boss «ng giµ noel 22h00")
	local nStartHour = tonumber(date("%H")) + 1;
	
	if (nStartHour >= 24) then
		nStartHour = 0;
	end;
	
	TaskTime(nStartHour, 0);

	TaskInterval(60)
	
	TaskCountLimit(0)
	OutputMsg("=====> Boss «ng giµ noel 22h ")
end

function TaskContent()

	local nHour = tonumber(date("%H%M"))
	local nWeek	= tonumber(date("%w"))
	local nDate	= tonumber(date("%y%m%d"))
	
	if (nDate >= N_DATE_START and nDate <= N_DATE_END) then

		local bIsStart = 0
		if (nHour == 2200 ) then
			bIsStart = 1
		end
	end
	
	if bIsStart == 1 then
		RemoteExecute("\\script\\global\\namcung\\tinhnang\\newboss\\call_boss_namcung.lua",	"CallBoss", 0)
		OutputMsg("=====> Boss Boss «ng giµ noel 22h")
	end
end



function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


