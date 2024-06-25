function TaskShedule()
	
	TaskName("Phong L¨ng §é")
	local nStartHour = tonumber(date("%H")) + 1;
	
	if (nStartHour >= 24) then
		nStartHour = 0;
	end;
	
	TaskTime(nStartHour, 0);
	
	
	TaskInterval(60);
	
	TaskCountLimit(0)
	OutputMsg("=================Phong Lang Do==================");
end

function TaskContent()	
	GlobalExecute("dwf \\script\\missions\\fengling_ferry\\fldmap_boat1.lua fenglingdu_main()")
	OutputMsg("=====> [phonglangdo] Phong Lang Do");
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
