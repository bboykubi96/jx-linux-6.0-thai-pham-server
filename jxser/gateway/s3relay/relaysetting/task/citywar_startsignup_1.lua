Include("\\RelaySetting\\Task\\citywar_head.lua")
function TaskShedule()
	TaskName("Ghi danh bat dau");

	TaskInterval(1440);
	
	TaskTime(18, 0);
	
	TaskCountLimit(0);

	OutputMsg("=====> [Cong Thanh] Bat dau ghi danh=========")
end

function TaskContent()
	local nCityId=getSigningUpCity(1)
	local nWeek=tonumber(date("%w"))

	--if nWeek == 4 or nWeek == 5 then
		if (HinhThucCongThanh == 0) then
			StartSignUp(nCityId);
		else
			cw_startsignup_fun(nWeek,nCityId);
		end;
		OutputMsg("=====> [Cong Thanh] Bat dau ghi danh=========")
	--end

end



function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
