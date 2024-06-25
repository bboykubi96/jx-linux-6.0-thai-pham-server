-----------***Heart*Doldly***------------
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
	TaskName("Thach Thuc Thoi Gian");
	TaskInterval(INTERVAL_TIME);
	local h, m = GetNextTime();
	TaskTime(h, m);
	TaskCountLimit(0);
	OutputMsg("======================================================================================================")
	OutputMsg(format("                          VUOT AI KHIEU CHIEN THOI GIAN BAT DAU %d:%d...", h, m))
end

function TaskContent()
	OutputMsg("VUOT AI KHIEU CHIEN THOI GIAN DANG GHI DANH");
	GlobalExecute("dwf \\settings\\trigger_challengeoftime.lua OnTrigger()");
	szMsg = "'Th¸ch thøc thêi gian' §· ®Õn giê b¸o danh. §éi tr­ëng nhanh ch©n ®Õn NhiÕp ThÝ TrÇn ®Ó ghi danh thêi gian ghi danh lµ 10 phót."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end
