INTERVAL_TIME = 60
function GetNextTime()
    local hour = tonumber(date("%H"));
    if (hour == 23) then
    	hour = 0;
    else
    	hour = hour + 1;
    end
    return hour, 0;
end

function TaskShedule()
	TaskName("Dua Thuyen Rong");	
	TaskInterval(INTERVAL_TIME);
	local h, m = GetNextTime();
	TaskTime(h, m);
	OutputMsg(format)("=====> HOAT DONG DUA THUYEN RONG SE BAT DAU GHI DANH %d:%d...", h, m);
	TaskCountLimit(0);
end

function TaskContent()
-- M�i ng��i nhanh ch�n ��n L� Quan �� ghi danh tham gia
	OutputMsg("=====>  DUA THUYEN RONG DA BAT DAU GHI DANH (dragonboat.lua)")

	-- ����GameServer�ϵĽű�
	GlobalExecute("dw LoadScript([[\\settings\\trigger.lua]])");
end
