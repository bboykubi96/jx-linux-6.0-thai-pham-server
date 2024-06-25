
TASK_TIME_MAP = 3203
Include("\\script\\lib\\timerlist.lua")
tbVipTimer = tbVipTimer or {}
tbVipTimer.tbMap = {917,918,919,920,921,922,923,924}
function tbVipTimer:OnTime()
	print("Dang chay vip_map timer")
	local nOldSubWorld = SubWorld
	local nOldPlayerIdx = PlayerIndex
	local nCurTimer
	local tbPlayerList,nWidx
	
	for i=1,getn(self.tbMap) do
		nWidx = SubWorldID2Idx(self.tbMap[i]);
		if nWidx>= 0 then
			SubWorld = nWidx
			local tbPlayerList = GetMapPlayerList()
			for j=1,getn(tbPlayerList) do 
				PlayerIndex = tbPlayerList[j]
				nCurTimer = GetTask(TASK_TIME_MAP)
				nCurTimer = nCurTimer - 1			
				if nCurTimer <= 0 then
					Msg2Player("Th�i gian c�a ng��i tr�n b�n �� �� h�t. Vui l�ng gia h�n th�m....")
					Say("Th�i gian c�a ng��i tr�n b�n �� �� h�t. Vui l�ng gia h�n th�m....",0)
					SetTask(TASK_TIME_MAP,0)
					NewWorld(53,1600,3200)
					SetFightState(0)
				elseif mod(nCurTimer,10)== 0 then
					SetTask(TASK_TIME_MAP,nCurTimer)
					Msg2Player(format("Th�i gian c�n l�i tr�n b�n �� n�y c�a b�n l� <color=yellow>%d ph�t<color>. Ch�c b�n ch�i game vui v�....",nCurTimer))
				elseif nCurTimer < 10 then
					SetTask(TASK_TIME_MAP,nCurTimer)
					Msg2Player(format("C�nh b�o th�i gian c�n l�i b�n �� n�y c�a b�n ch� c�n <color=yellow>%d ph�t<color>. N�u mu�n ti�p t�c vui l�ng gia h�n th�m....",nCurTimer))
				else
					SetTask(TASK_TIME_MAP,nCurTimer)
				end
				end
		end
	end
	SubWorld = nOldSubWorld
	PlayerIndex = nOldPlayerIdx
	return 1
end
function OnServerStart()
tbVipTimer.TimerID = TimerList:AddTimer(tbVipTimer, 18*60); --1 phut se chay 1 lan
end
--OnServerStart()

