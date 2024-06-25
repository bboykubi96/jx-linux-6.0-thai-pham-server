-------------------------------------------------***Edit*By*Heart*Doldly***-------------------------------------------------------
function TaskShedule()
	TaskName("PHONG LANG DO")
	TaskTime(07, 0);
	TaskInterval(1440)
	TaskCountLimit(0)
end

function TaskContent()
    GlobalExecute("dwf \\script\\missions\\fengling_ferry\\fldmap_boat1.lua fenglingdu_main()")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end