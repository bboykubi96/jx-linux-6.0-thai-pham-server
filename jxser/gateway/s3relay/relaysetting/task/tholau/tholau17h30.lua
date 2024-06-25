function TaskShedule()
	--设置方案名称
	TaskName("风陵渡0200")
	TaskTime(17, 30);
	
	--设置间隔时间，单位为分钟
	TaskInterval(1440) --60分钟一次
	
	--设置触发次数，0表示无限次数
	TaskCountLimit(0)
	OutputMsg("=================Tho Lau 22h30==================");
end

function TaskContent()
local nWeek	= tonumber(date("%w"))
-- if nWeek == 6 or nWeek == 0 then
RemoteExecute("\\script\\fwcloud\\trungthu\\mission.lua",	"RunMission", 0)
	OutputMsg("=================Run Tho Lau ==================");

end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


