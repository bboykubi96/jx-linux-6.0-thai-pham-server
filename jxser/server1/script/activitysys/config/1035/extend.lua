Include("\\script\\activitysys\\config\\1035\\head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\1035\\variables.lua")
Include("\\script\\lib\\progressbar.lua")

pActivity.nPak = curpack()

pActivity.tbTaskList = {}
pActivity.nAutoId = 0
pActivity.nTaskCount = 0
pActivity.tbWinners = {}

local MAX_TASK_COUNT = 20

function pActivity:GiveTaskNow()
local nHour = tonumber(GetLocalDate("%H%M"))
	if( nHour < 1930 or nHour > 2000) then
		Talk(1, "", "Th�i gian nh�n Ho tong hang nga t� 19:30 v� k�t th�c v�o l�c 20:00 , v� s�y ra chi�n bi�n. Ng�y mai ng��i h�y quay l�i.")
		return
	end
	
	local szName = GetName()

	if self.nTaskCount >= %MAX_TASK_COUNT then
		return Talk(1, "", "Ng��i �i chuy�n th�ng n��c nhi�u qu�, xin ��i hi�p h�y ch� ��i.")
	end
	
	for k,v in self.tbTaskList do
		if v.szPlayerName == szName then
			return Talk(1, "", "Ng��i �� ti�p nh�n nhi�m v�, kh�ng ���c nh�n ti�p.")
		end
	end
	
	for k,v in self.tbWinners do
		if k == szName then
			return Talk(1, "", "Ph�n th��ng l�n tr��c ng��i v�n ch�a nh�n.")
		end
	end
	
	if self.pCompose:Compose() == 0 then
		return 
	end
	
	local pTask = {}
	pTask.nId = self:NewId()
	pTask.szPlayerName = szName
	pTask.nState = 0
	local nMapId = GetWorldPos()
	local szNpcName = format("%s H�ng Nga", szName)
        Msg2SubWorld(format("��i hi�p <color=yellow>%s<color> quy�t t�m l�m  Gi�p H�ng Nga v� C�y �a T�i CH� Cu�i Chu Ti�n Tr�n. Li�u c� v��t qu� ���c ch�ng gai ��y r�y nh�ng t�n c��p c�n?",szName))
	DynamicExecute("\\script\\activitysys\\config\\1035\\carriage.lua", "add_carriage", nMapId, pTask.nId, szNpcName, GetCurCamp())
	self:AddEscortTask(pTask.nId, pTask)	
	tbLog:PlayerActionLog(%EVENT_LOG_TITLE,"NhanNhiemVuThanhCong")
	return 
end

function pActivity:GiveTaskNowVLT()

	local szName = GetName()
	
	if self.nTaskCount >= %MAX_TASK_COUNT then
		return Talk(1, "", "Ng��i �i chuy�n th�ng n��c nhi�u qu�, xin ��i hi�p h�y ch� ��i.")
	end
	
	for k,v in self.tbTaskList do
		if v.szPlayerName == szName then
			return Talk(1, "", "Ng��i �� ti�p nh�n nhi�m v�, kh�ng ���c nh�n ti�p.")
		end
	end
	
	for k,v in self.tbWinners do
		if k == szName then
			return Talk(1, "", "Ph�n th��ng l�n tr��c ng��i v�n ch�a nh�n.")
		end
	end
	
	if self.pCompose:Compose() == 0 then
		return 
	end
	
	local pTask = {}
	pTask.nId = self:NewId()
	pTask.szPlayerName = szName
	pTask.nState = 0
	local nMapId = GetWorldPos()
	local szNpcName = format("%s H�ng Nga", szName)

	DynamicExecute("\\script\\activitysys\\config\\1035\\carriage.lua", "add_carriage_vlt", nMapId, pTask.nId, szNpcName, GetCurCamp())
	self:AddEscortTask(pTask.nId, pTask)	
	tbLog:PlayerActionLog(%EVENT_LOG_TITLE,"NhanNhiemVuThanhCong")
	return 
end


function pActivity:NewId()
	self.nAutoId = self.nAutoId + 1
	return self.nAutoId
end

function pActivity:AddEscortTask(nTaskId, pTask)
	self.tbTaskList[nTaskId] = pTask
	self.nTaskCount = self.nTaskCount + 1
end

function pActivity:DelEscortTask(nTaskId)
	self.tbTaskList[nTaskId] = nil
	self.nTaskCount = self.nTaskCount - 1
end

function pActivity:TaskFailed(nTaskId, nNpcIndex)
	local pTask = self.tbTaskList[nTaskId]
	if not pTask then
		return
	end
	local szName = pTask.szPlayerName
	local  nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex > 0 then
		CallPlayerFunction(nPlayerIndex, Msg2Player, "Nhi�m v� c�a ng��i �� th�t b�i.")
	end
	self:DelEscortTask(nTaskId)
end

function pActivity:TaskFinish(nTaskId, nNpcIndex)
	local pTask = self.tbTaskList[nTaskId]
	if not pTask then
		return
	end
	local szName = pTask.szPlayerName
	local  nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex > 0 then
		CallPlayerFunction(nPlayerIndex, Msg2Player, "Nhi�m v� ho�n th�nh, ng��i c� th� tr� v� nh�n ph�n th��ng.")
	end
	self:AddWinner(szName)
	self:DelEscortTask(nTaskId)
end

function pActivity:AddWinner(szName)
	self.tbWinners[szName] = 1
end

function pActivity:DelWinner()
	local szName = GetName()
	self.tbWinners[szName] = nil
end

function pActivity:IsWinner()
	local szName = GetName()
	--return self.tbWinners[szName] == 1
	if self.tbWinners[szName] ~= 1 then
		Talk(1, "", "��i hi�p v�n ch�a giao c�c th�ng n��c cho ta, nhanh �i chuy�n c�c th�ng n��c ��n ��y �i.")
		return
	end
	
	return 1
end

function pActivity:CheckCamp(nCamp, szFailMsg)

	nLevel = lib:NumberParamTrans(nCamp)
	
	if GetCurCamp() ~= nCamp then
		return 1
	elseif szFailMsg then
		lib:ShowMessage(szFailMsg)
	end
	
end

function pActivity:ServerStart()
	local tbNpcId = {1609, 739,739 }
	
	for i=1,getn(%MOSTER_POS) do
		local nIndex = random(1, 3)
		NpcFunLib:AddFightNpc({szName="B�n C��p Sao H�a",nNpcId=tbNpcId[nIndex],nLevel=95,bNoRevive=0},{%MOSTER_POS[i]})
	end
	
	self:InitProgressbar()
end

function pActivity:InitProgressbar()
	local tbEventSring2 = {"EVENT_MOVE", "EVENT_ATTACK", "EVENT_SITE", "EVENT_RIDE", "EVENT_USEITEM", 	"EVENT_ARRANGEITEM", "EVENT_DROPITEM", "EVENT_CHANGEEQUIP", "EVENT_TRADE",	"EVENT_CHANGEFIGHTSTATE", "EVENT_ATTACKED",	"EVENT_DEATH", "EVENT_REVIVE", "EVENT_BUYITEM", "EVENT_SELLITEM",	"EVENT_TALK",}
	local nEvent = 0
	for j=1, getn(tbEventSring2) do
		local szKey = tbEventSring2[j]		
		nEvent = SetBit(nEvent, %tbProgressBar.tbEventType[szKey], 1)
	end
	local nCurConfigCount = getn(%tbProgressBar.tbConfig)
	self.nVnProgressID = nCurConfigCount+1
	%tbProgressBar.tbConfig[self.nVnProgressID] = 
	{
		nId = self.nVnProgressID,
		szTitle = "Xin h�y ��i",
		nTime = 2,
		nEvent = nEvent,
		bDesc = 0,
	}	
end

function pActivity:StartLoaderThonLang()
	tbProgressBar:OpenByConfig(self.nVnProgressID, self.GiveAward, {self}, Msg2Player, {"B� gi�n �o�n"})
end


function pActivity:GiveAward()
	self:DelWinner()
	PlayerFunLib:AddTaskDaily(%TSKI_DAILY_COUNT,1)
	--jackie edit 16/09/2021
	local tbAward = {
		
		[1]={
                {szName="Quy�n N�ng L�nh( Thi�p)",tbProp={6,1,30164,1,0,0},nCount=300},
                {szName="B�chKhoa-B�nHo�nCh�nh",tbProp={6,1,30189,1,0,0},nCount=300},
                {szName = "��i Kim B�i", tbProp = {4,1506,1,1,0},nCount = 2000},
		},
	}
	tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "NhanThuongThanhCong"})
Msg2SubWorld(format(" Sau bao nhi�u th� th�ch tr�n ���ng, <color=green>%s<color> �� Ho�n Th�nh Gi�p H�ng Nga V� C�y �a <color=yellow>Nh�n Nhi�u Ph�n Th��ng<color>. Th�t may m�n",GetName()))
	
end

function pActivity:CheckThungGo()
	--jackie edit 16/09/2021
	local nCount1 = CalcItemCount(-1, 6, 1, 30202, -1)
	if nCount1 >= 1 then
		Msg2Player("Ng��i �� c� Th�ng G� r�i, kh�ng ���c nh�n n�a")
		return 
	end
	--jackie edit 16/09/2021
	local nCount2 = CalcItemCount(-1, 6, 1, 30203, -1)
	if nCount2 >= 1 then
		Msg2Player("Ng��i �� c� Th�ng N��c ��y r�i , xin h�y ho�n th�nh nhi�m v� gi�p cho ch� Cu�i nh�! R�i h�y ��n nh�n th��ng nh�")
		return 
	end
	return 1
end


local tbFormula = {
	nWidth = 0,
	nHeight = 0,
	szComposeTitle = "N�p l� ph� h� ti�u",
	szFailMsg = "Ng��i mang kh�ng �� nguy�n li�u r�i!"
}

tbFormula.tbMaterial = {
	{
	--jackie edit 16/09/2021
	szName="Th�ng N��c ��y 2021",
	tbProp={6,1,30203,1,0,0},
	nCount=1,
	pBindLimit = function(tbItem, nItemIndex)
		if GetItemBindState(nItemIndex) == 0 then
			return 1
		end
	end
	},
	{
	szName="H� Ti�u L�nh",
	tbProp={6,1,30204,1,0,0},
	nCount=1,	
	},
}

pActivity.pCompose = tbActivityCompose:new(tbFormula, "N�p l� ph� h� ti�u")


