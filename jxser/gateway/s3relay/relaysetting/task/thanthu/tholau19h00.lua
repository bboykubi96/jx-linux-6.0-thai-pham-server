function TaskShedule()
	--���÷�������
	TaskName("�����0200")
	TaskTime(19, 00);
	
	--���ü��ʱ�䣬��λΪ����
	TaskInterval(1440) --60����һ��
	
	--���ô���������0��ʾ���޴���
	TaskCountLimit(0)
	OutputMsg("=================Tho Lau 22h30==================");
end

function TaskContent()
local nWeek	= tonumber(date("%w"))
-- if nWeek == 6 or nWeek == 0 then
RemoteExecute("\\script\\fwcloud\\thanthu\\mission.lua",	"RunMission", 0)
	OutputMsg("=================Run Tho Lau ==================");

end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


