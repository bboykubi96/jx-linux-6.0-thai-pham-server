----------***Heart*Doldly***-------------

function TaskShedule()
	TaskName("Boss Míi 1200")
	TaskInterval(1440)
	TaskCountLimit(0)
	TaskTime(00, 05);
	for i = 1, getn(tb_goldboss) do
		success = ClearRecordOnShareDB("GoldBoss", tb_goldboss[i].Sid, 0, 1, 0);
		OutputMsg("Xoa du lieu thong tin boss Hoang Kim "..tb_goldboss[i].Sid);
	end
end

function TaskContent()
	for i = 1, getn(tb_goldboss) do
		str = tb_goldboss[i].str;
		GlobalExecute(format("dw AddLocalNews([[%s]])", str));
	end
	GlobalExecute("dwf \\script\\missions\\boss\\callboss_incity.lua CallBossDown_Fixure()");
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end

