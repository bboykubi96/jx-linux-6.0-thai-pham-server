	Include( "\\script\\event\\2011dayanqunxia\\event.lua")

	local nStartDate = 20110123000

	local nEndDate = 202002210000

	function TaskShedule()

	TaskName( "��i y�n ��n hi�p 24h t�u l��ng ��ng h�ng th� ")

	-- m�t ng�y ��m m�t l�n, ��n v� ph�t

	TaskInterval(1440)

	-- thi�t tr� g�y ra th�i gian

	TaskTime(0, 0)

	OutputMsg( "Dai yen dan hiep hoat dong moi ngay vao luc 24h ai co tuu luong cao thi den bao danh ")

	-- ch�p h�nh v� h�n th�

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


