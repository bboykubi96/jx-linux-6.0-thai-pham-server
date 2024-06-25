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
	--	return Talk(1, "", "ChiÕn tr­êng ®ang diÔn ra, c¸c h¹ h·y t¹m l¸nh...")
	end
	if GetLevel()<80 then
	 return Talk(1, "", "CÊp 80 trë lªn míi cã thÓ vËn tiªu ®­îc.")
	end
	if self.nTaskCount >= %MAX_TASK_COUNT then
		return Talk(1, "", "Ng­êi ®i chuyÓn hµng nhiÒu qu¸, xin ®¹i hiÖp h·y chê ®îi.")
	end
	
	for k,v in self.tbTaskList do
		if v.szPlayerName == szName then
			return Talk(1, "", "Ng­¬i ®· tiÕp nhËn nhiÖm vô, kh«ng ®­îc nhËn tiÕp.")
		end
	end
	
	for k,v in self.tbWinners do
		if k == szName then
			return Talk(1, "", "PhÇn th­ëng lÇn tr­íc ng­¬i vÉn ch­a nhËn.")
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
	local szNpcName = format("%s hµng bu«n lËu", szName)

	DynamicExecute("\\script\\activitysys\\config\\12\\carriage.lua", "add_carriage", nMapId, pTask.nId, szNpcName, GetCurCamp())
	self:AddEscortTask(pTask.nId, pTask)	
	Msg2SubWorld("<color=green>Cao thñ <color=yellow>"..GetName().."<color=blue> §· nhËn chuyÕn hµng lËu tõ<color=yellow> L©m Tiªu §Çu<color=green> b¾t ®Çu di chuyÓn")
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
		CallPlayerFunction(nPlayerIndex, Msg2Player, "NhiÖm vô cña ng­¬i ®· thÊt b¹i.")
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
		CallPlayerFunction(nPlayerIndex, Msg2Player, "NhiÖm vô hoµn thµnh, ng­¬i cã thÓ trë vÒ nhËn phÇn th­ëng.")
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
		Talk(1, "", "§¹i hiÖp vÉn ch­a giao hµng cho ta, nhanh ®i chuyÓn hµng ®Õn ®©y ®i.")
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
		NpcFunLib:AddFightNpc({szName="S¬n tÆc",nNpcId=tbNpcId[nIndex],nLevel=95,bNoRevive=0},{%MOSTER_POS[i]})
	end
	
end


function pActivity:GiveAward()
	
	local tbAward = {			
	{szName="Kim Nguyªn B¶o",tbProp={4,343,1,1,0,0},nCount=1},
		{szName="D· TÈu Chi LÖnh",tbProp={6,1,4407,1,1,0},nCount=5},
	--	{szName="Cµn Kh«n T¹o Hãa §an (®¹i) ",tbProp={6,1,215,1,1},nCount=500},
	--	{szName="Tói Quµ Sù KiÖn",tbProp={6,1,30324,1,1,0},nCount=20},
	--	{szName="M·nh ®å Phôc Hy",tbProp={6,1,4419,1,1,0},nCount=1},
	--	{szName="D©y Thõng",tbProp={6,1,4416,1,1,0},nCount=1},
	--	{szName="Bã Cá",tbProp={6,1,4415,1,1,0},nCount=1},
--{szName="TÝn VËt TÝn Sø",tbProp={6,1,4426,1,1,0},nCount=1},

	}
	--Earn(100); --50 van	

	tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "NhËn phÇn th­ëng tõ Th­¬ng Bu«n"})
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 1000000}}, "test", 1);
	str = "<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color=blue> Hoµn thµnh nhiÖm vô vËn tiªu vµ nhËn ®­îc phÇn th­ëng"
	AddGlobalCountNews(str, 2)
	Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color=blue> §· hoµn thµnh chuyÕn bu«n lËu thµnh c«ng t¹i<color=yellow> Ba l¨ng HuyÖn")
	--Msg2SubWorld("PhÇn th­ëng: <color=green>NL Event")		
end


local tbFormula = {
	nWidth = 0,
	nHeight = 0,
	szComposeTitle = "Kim Nguyªn B¶o",
	szFailMsg = "Ch­a cã 1 Kim Nguyªn B¶o cho ta!"
}

tbFormula.tbMaterial = {
	{
	szName="Kim Nguyªn B¶o",
	tbProp={4,343,1,1},
	nCount=1,
	pBindLimit = function(tbItem, nItemIndex)
		if GetItemBindState(nItemIndex) == 0 then
			return 1
		end
	end
	},
}
	
pActivity.pCompose = tbActivityCompose:new(tbFormula, "Kim Nguyªn B¶o")
