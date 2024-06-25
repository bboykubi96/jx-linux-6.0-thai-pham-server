Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\gb_taskfuncs.lua")
N_DATE_START	= 20080611
N_DATE_END	= 20210615

function TaskShedule()
	
	TaskName("XEP HANG TOP KINH NGHIEM")
	local nStartHour = tonumber(date("%H")) + 1;
	
	if (nStartHour >= 24) then
		nStartHour = 0;
	end;
	
	TaskTime(nStartHour, 0);

	TaskInterval(60)
	
	TaskCountLimit(0)
	OutputMsg("=====> XEP HANG TOP KINH NGHIEM ")
end

function TaskContent()

	local nHour = tonumber(date("%H%M"))
	local nWeek	= tonumber(date("%w"))
	local nDate	= tonumber(date("%Y%m%d"))
	-- OutputMsg("=====> START TOP KINH NGHIEM "..nHour.." "..nDate.." "..N_DATE_END)
	-- if (nDate >= N_DATE_START and nDate <= N_DATE_END) then

		local bIsStart = 0
		if (nHour == 0000 ) then
			bIsStart = 1
		elseif (nHour == 0300 ) then
			bIsStart = 1
		elseif (nHour == 0600 ) then
			bIsStart = 1
		elseif (nHour == 0900 ) then
			bIsStart = 1
		elseif (nHour == 1200 ) then
			bIsStart = 1
		elseif (nHour == 1300 ) then
			bIsStart = 1
		elseif (nHour == 1500 ) then
			bIsStart = 1
		elseif (nHour == 1800 ) then
			bIsStart = 1
		elseif (nHour == 2100 ) then
			bIsStart = 1
		end
	-- endS
	if bIsStart == 1 then		
		-- GlobalExecute("dwf \\script\\global\\quanlygame\\chucnang\\duatopexp.lua tbTopExp:Update_All()")
		RemoteExecute("\\script\\global\\quanlygame\\chucnang\\duatopexp.lua", "tbTopExp:Update_All", 0);
		-- RemoteExc("\\script\\global\\quanlygame\\chucnang\\duatopexp.lua", "tbTopExp:Update_All", {"0"}, "\\script\\event\\s3remote.lua", "S3UpdateTopEXPEnd", {"0"}, 0);
		-- RemoteExc("\\script\\global\\quanlygame\\chucnang\\duatopexp.lua", "tbTopExp:Update_All", {"1"}, "\\script\\event\\s3remote.lua", "S3UpdateTopEXPEnd", {"1"}, 1);
		-- RemoteExc("\\script\\global\\quanlygame\\chucnang\\duatopexp.lua", "tbTopExp:Update_All", {"2"}, "\\script\\event\\s3remote.lua", "S3UpdateTopEXPEnd", {"2"}, 2);
		-- RemoteExc("\\script\\global\\quanlygame\\chucnang\\duatopexp.lua", "tbTopExp:Update_All", {"3"}, "\\script\\event\\s3remote.lua", "S3UpdateTopEXPEnd", {"3"}, 3);
		-- RemoteExc("\\script\\global\\quanlygame\\chucnang\\duatopexp.lua", "tbTopExp:Update_All", {"4"}, "\\script\\event\\s3remote.lua", "S3UpdateTopEXPEnd", {"4"}, 4);
		-- RemoteExc("\\script\\global\\quanlygame\\chucnang\\duatopexp.lua", "tbTopExp:Update_All", {"5"}, "\\script\\event\\s3remote.lua", "S3UpdateTopEXPEnd", {"5"}, 5);
		-- RemoteExc("\\script\\global\\quanlygame\\chucnang\\duatopexp.lua", "tbTopExp:Update_All", {"6"}, "\\script\\event\\s3remote.lua", "S3UpdateTopEXPEnd", {"6"}, 6);
		-- RemoteExc("\\script\\global\\quanlygame\\chucnang\\duatopexp.lua", "tbTopExp:Update_All", {"7"}, "\\script\\event\\s3remote.lua", "S3UpdateTopEXPEnd", {"7"}, 7);
	
		-- RemoteExecute("\\script\\global\\quanlygame\\chucnang\\duatopexp.lua",	"tbTopExp:Update_All", 0)
		OutputMsg("=====> XEP HANG TOP KINH NGHIEM "..nHour)
	end
end



function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


