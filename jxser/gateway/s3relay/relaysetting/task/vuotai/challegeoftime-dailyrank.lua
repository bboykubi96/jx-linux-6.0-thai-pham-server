-----------***Heart*Doldly***------------
function TaskShedule()
	TaskName("ho¹t ®éng xÕp h¹ng <Th¸ch thøc thêi gian> mçi ngµy")
	TaskTime(0, 0);
	TaskInterval(1440) 
	TaskCountLimit(0)
	OutputMsg("                     *** BANG XEP HANG <THACH THUC THOI GIAN> MOI NGAY ***                           ")
end

function TaskContent()
	name , value = Ladder_GetLadderInfo(10235, 1);
	value = value * (-1);
	if (name ~= "") then
		local szTime	= format("%s phót %s gi©y", floor(value/60), floor(mod(value, 60)));
		local szMsg 	= format("Chóc mõng <%s> ®· hoµn thµnh <Th¸ch thøc thêi gian> thêi gian v­ît ¶i nhanh nhÊt lµ <%s>", name, szTime);
		GlobalExecute(format("dw AddGlobalNews([[%s]], 10)", szMsg))
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
	end
	Ladder_ClearLadder(10235);
	OutputMsg("=====> Bang Xep Hang Vuot Ai Moi Ngay 00:00 Bat Dau <================");
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end


