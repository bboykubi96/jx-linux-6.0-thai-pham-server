	Include( "\\script\\event\\2011dayanqunxia\\event.lua")

	local nStartDate = 20110123000

	local nEndDate = 202002210000

	function TaskShedule()

	TaskName( "§¹i yÕn ®µn hiÖp 24h töu l­îng ®øng hµng thø ")

	-- mét ngµy ®ªm mét lÇn, ®¬n vÞ phót

	TaskInterval(1440)

	-- thiÕt trÝ g©y ra thêi gian

	TaskTime(0, 0)

	OutputMsg( "Dai yen dan hiep hoat dong moi ngay vao luc 24h ai co tuu luong cao thi den bao danh ")

	-- chÊp hµnh v« h¹n thø

	TaskCountLimit(0)

	end

	function TaskContent()

	local nCurDate = tonumber(tbQunXia:GetLocalDate( "%Y%m%d%H%M "))

	if nCurDate < %nStartDate or nCurDate > %nEndDate then

	return

	end

	tbQunXia:PaiMing()

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


