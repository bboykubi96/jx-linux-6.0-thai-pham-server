Include("\\script\\activitysys\\config\\12\\head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\12\\variables.lua")

pActivity.nPak = curpack()

pActivity.tbTaskList = {}
pActivity.nAutoId = 0
pActivity.nTaskCount = 0
pActivity.tbWinners = {}

local MAX_TASK_COUNT = 20
function pActivity:AddInitNpc()
	--self:AddAmbienceNpc()

end
function pActivity:AddAmbienceNpc()
	Include("\\script\\activitysys\\config\\12\\ambience_npc.lua")
	DynamicExecute("\\script\\activitysys\\config\\12\\ambience.lua","tbAmbience:CreateNpc",tbAmbienceNpc)
end
function pActivity:GiveTask()

	local szName = GetName()
	local nTime = tonumber(GetLocalDate("%H"));
		 local nWeek	= tonumber(date("%w"))
	if nTime==9 or nTime ==11 or nTime ==13 or nTime ==15 or nTime ==17 or nTime ==19 or nTime ==21 or nTime ==23 then
	--	return Talk(1, "", "Chi�n tr��ng �ang di�n ra, c�c h� h�y t�m l�nh...")
	end
	if GetLevel()<80 then
	 return Talk(1, "", "C�p 80 tr� l�n m�i c� th� v�n ti�u ���c.")
	end
	if self.nTaskCount >= %MAX_TASK_COUNT then
		return Talk(1, "", "Ng��i �i chuy�n h�ng nhi�u qu�, xin ��i hi�p h�y ch� ��i.")
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
	local szNpcName = format("%s h�ng bu�n l�u", szName)

	DynamicExecute("\\script\\activitysys\\config\\12\\carriage.lua", "add_carriage", nMapId, pTask.nId, szNpcName, GetCurCamp())
	self:AddEscortTask(pTask.nId, pTask)	
	Msg2SubWorld("<color=green>Cao th� <color=yellow>"..GetName().."<color=blue> �� nh�n chuy�n h�ng l�u t�<color=yellow> L�m Ti�u ��u<color=green> b�t ��u di chuy�n")
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
		Talk(1, "", "��i hi�p v�n ch�a giao h�ng cho ta, nhanh �i chuy�n h�ng ��n ��y �i.")
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
	--local tbNpcId = {1112, 1113, 1114, 1566, 520, 593, 1608}
                   local tbNpcId = {1608, 1608, 1608}
	
	for i=1,getn(%MOSTER_POS) do
		local nIndex = random(1, 3)
		NpcFunLib:AddFightNpc({szName="S�n t�c",nNpcId=tbNpcId[nIndex],nLevel=95,bNoRevive=0},{%MOSTER_POS[i]})
	end
	
end


function pActivity:GiveAward()
	
	local tbAward = {			
	{szName="Kim Nguy�n B�o",tbProp={4,343,1,1,0,0},nCount=1},
		{szName="D� T�u Chi L�nh",tbProp={6,1,4407,1,1,0},nCount=5},
	--	{szName="C�n Kh�n T�o H�a �an (��i) ",tbProp={6,1,215,1,1},nCount=500},
	--	{szName="T�i Qu� S� Ki�n",tbProp={6,1,30324,1,1,0},nCount=20},
	--	{szName="M�nh �� Ph�c Hy",tbProp={6,1,4419,1,1,0},nCount=1},
	--	{szName="D�y Th�ng",tbProp={6,1,4416,1,1,0},nCount=1},
	--	{szName="B� C�",tbProp={6,1,4415,1,1,0},nCount=1},
--{szName="T�n V�t T�n S�",tbProp={6,1,4426,1,1,0},nCount=1},

	}
	--Earn(100); --50 van	

	tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "Nh�n ph�n th��ng t� Th��ng Bu�n"})
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 1000000}}, "test", 1);
	str = "<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color=blue> Ho�n th�nh nhi�m v� v�n ti�u v� nh�n ���c ph�n th��ng"
	AddGlobalCountNews(str, 2)
	Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color=blue> �� ho�n th�nh chuy�n bu�n l�u th�nh c�ng t�i<color=yellow> Ba l�ng Huy�n")
	--Msg2SubWorld("Ph�n th��ng: <color=green>NL Event")		
end


local tbFormula = {
	nWidth = 0,
	nHeight = 0,
	szComposeTitle = "Kim Nguy�n B�o",
	szFailMsg = "Ch�a c� 1 Kim Nguy�n B�o cho ta!"
}

tbFormula.tbMaterial = {
	{
	szName="Kim Nguy�n B�o",
	tbProp={4,343,1,1},
	nCount=1,
	pBindLimit = function(tbItem, nItemIndex)
		if GetItemBindState(nItemIndex) == 0 then
			return 1
		end
	end
	},
}
	
pActivity.pCompose = tbActivityCompose:new(tbFormula, "Kim Nguy�n B�o")
