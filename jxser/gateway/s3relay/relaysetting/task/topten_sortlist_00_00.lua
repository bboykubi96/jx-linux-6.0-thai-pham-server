	-- h� th�ng ti�p thu ��ng k�, b�i danh ti�n th�p ng��i - Created by DinhHQ - 20110614

	local nStartDate	 = 20120202;

	local nCloseDate	 = 20200229;

	function TaskShedule()

	TaskName( "Top 10 server - b�i danh 0h ")

	TaskInterval(24 * 60)

	TaskTime(0, 05)

	TaskCountLimit(0)

	OutputMsg( "topten server sort list ")

	end

	function TaskContent()

	local nDate = tonumber(date( "%Y%m%d "))

	if nDate < %nStartDate or nDate > %nCloseDate then

	return

	end

	RemoteExecute( "\\script\\activitysys\\config\\1008\\give_rose_toplist.lua","tbTop10:UpdateTopList", 0)

	OutputMsg( "Toplist sorted ")

	end


