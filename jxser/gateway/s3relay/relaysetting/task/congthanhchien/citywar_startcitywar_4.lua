--------------------------------***Edit*By*Heart*Doldly***-------------------------------------------
Include("\\RelaySetting\\Task\\congthanhchien\\citywar_head.lua")
function TaskShedule()
	TaskName("Cong thanh chien bat dau");
	TaskInterval(1440);
	TaskTime(20, 30);
	TaskCountLimit(0);
end

function TaskContent()
	local nCityId=getSigningUpCity(2)
	local nWeek=tonumber(date("%w"))
	if (HinhThucCongThanh == 0) then
		StartCityWar(nCityId);
	else
		cw_start_fun(nWeek,nCityId)
	end;
	OutputMsg("=====> [Cong Thanh]  cong thanh chien bat dau <========")
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end
