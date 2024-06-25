
IncludeLib("FILESYS");

Include("\\script\\misc\\eventsys\\type\\map.lua")
Include("\\script\\item\\forbiditem.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\item\\heart_head.lua")

GameTemplet = {}

GameTemplet.szMapType = "âßÄ#Ì#" -- script viet hoa By http://tranhba.com #Ä±###Ý#±Ý£#

GameTemplet.tbForbitItemType = -- script viet hoa By http://tranhba.com ##¤# #####µ##
{
	"PK",
}

GameTemplet.Player =
{
	szPath = "\\script\\missions\\zhaojingling\\gametemplet\\player.lua",
	szClassName = "Player"
}

GameTemplet.tbNpcTypeList = -- script viet hoa By http://tranhba.com npc#Äµµ#Ý
{
	["âß####"] = 
	{
		nNpcId = 1234,
		szName = "âß####",
		nLevel = 90,
		nIsboss = 1, -- script viet hoa By http://tranhba.com #¤#°npc¿Ðß¤²##Ìß#â©##
		szScriptPath = "\\script\\missions\\zhaojingling\\gametemplet\\npc_script.lua",-- script viet hoa By http://tranhba.com ¸ù¾ÝÓÎÏ·ÄÚÈÝ¶¨ÖÆµÄÄ³¸önpc½Å±¾,Ö÷ÒªÕë¶Ô¶Ô»°npc
	},
	["âß#### 2"] = 
	{-- script viet hoa By http://tranhba.com ¸ÝÝ©ß#######
		nNpcId = 2354,
		szName = "¸Ýß########Ä·#³#",
		nLevel = 90,
		nIsboss = 1, -- script viet hoa By http://tranhba.com #¤#°npc¿Ðß¤²##Ìß#â©##
		szScriptPath = "\\script\\missions\\zhaojingling\\gametemplet\\npc_script.lua",-- script viet hoa By http://tranhba.com ¸ù¾ÝÓÎÏ·ÄÚÈÝ¶¨ÖÆµÄÄ³¸önpc½Å±¾
	},	
}
GameTemplet.tbTrapList = 
{
	["Trap ±#·###ã·ãó³×#ß¤±##±ð#¤#º#Ä##Ð#"] =
	{
		
		szPosPath = "",-- script viet hoa By http://tranhba.com Trap#·#Ä##±ª#Ä##
		szTrapFile = "",-- script viet hoa By http://tranhba.com Trap#Å±##Ä¢###
	}
}


function GameTemplet:AddATrap(szPosPath, szTrapFile)
	
	if (TabFile_Load(szPosPath, szPosPath) == 0) then
		print("Load TabFile Error!"..szPosPath)
		return 0
	end
	local nRowCount = TabFile_GetRowCount(szPosPath)
	for nRow=2, nRowCount do
		local nX = TabFile_GetCell(szPosPath, nRow, 1)
		local nY = TabFile_GetCell(szPosPath, nRow, 2)
		for nMapId, bFlag in self.tbMapList do
			if bFlag then
				AddMapTrap(nMapId, nX,nY, szTrapFile);
			end
		end
	end
end

function GameTemplet:AddAllTrap()
	for key, value in self.tbTrapList do
		self:AddATrap(value.szPosPath, value.szTrapFile)
	end
end

function GameTemplet:AddANpc(szName, szPosPath)
	local tbNpc = self.tbNpcTypeList[szName]
	
	if (TabFile_Load(szPosPath, szPosPath) == 0) then
		print("Load TabFile Error!"..szPosPath)
		return 0
	end
	if not tbNpc then
		return 
	end
	local nRowCount = TabFile_GetRowCount(szPosPath)
	for nRow=2, nRowCount do
		local nX = TabFile_GetCell(szPosPath, nRow, 1)
		local nY = TabFile_GetCell(szPosPath, nRow, 2)
		for nMapId, bFlag in self.tbMapList do
			if bFlag then
				basemission_CallNpc(tbNpc, nMapId, nX, nY)
			end
		end
	end
end

function GameTemplet:AddAllNpc()
	for key, value in self.tbNpcTypeList do
		self:AddANpc(key, value.szPosPath)
	end
end

function GameTemplet:MoveToTrap(szType)
	if not self.tbTrapList[szType] then
		return 
	end
	
	self:MoveTo(nil, self.tbTrapList[szType].szPosPath)
end


function GameTemplet:MoveTo(nMapId, szPosPath, nStartRow, nEndRow)	
	if (TabFile_Load(szPosPath, szPosPath) == 0) then
		print("Load TabFile Error!"..szPosPath)
		return 0
	end
	
	local nRowCount = TabFile_GetRowCount(szPosPath)
	nStartRow = nStartRow or 2
	nEndRow = nEndRow or nRowCount	
	local nRow = random(nStartRow, nEndRow)
	local nX = TabFile_GetCell(szPosPath, nRow, "POSX")
	local nY = TabFile_GetCell(szPosPath, nRow, "POSY")

	if nMapId then
		NewWorld(nMapId, nX/32, nY/32)
	else
		SetPos(nX/32, nY/32)
	end
end

function GameTemplet:new()
	local tb = {}
	for key, value in self do 
		tb[key] = value
	end
	return tb
end


function GameTemplet:AssociateMap(nMapId)
	self.tbMapList = self.tbMapList or {}
	self.tbMapList[nMapId] = 1
end


function GameTemplet:RegMap(szType, varFun, ...)
	for nMapId, bFlag in self.tbMapList do
		if bFlag then
			local nRegId = EventSys:GetType(szType):Reg(nMapId, varFun, unpack(arg))
			self.tbRegId = self.tbRegId or {}
			self.tbRegId[szType] = self.tbRegId[szType] or {}
			tinsert(self.tbRegId[szType], nRegId)
		end
	end	
end

function GameTemplet:UnRegAll()
	if self.tbRegId then
		for szType, tbId in self.tbRegId do
			for i=1, getn(tbId) do
				for nMapId, _ in self.tbMapList do
					EventSys:GetType(szType):UnReg(nMapId, tbId[i])
				end
			end
		end
	end
end

function GameTemplet:RegAll()
	self:UnRegAll()
	self.pPlayer = DynamicExecute(self.Player.szPath, "getglobal", self.Player.szClassName)
	self:RegMap("LeaveMap", self.pPlayer.OnLeaveMap, self.pPlayer)
	self:RegMap("EnterMap", self.pPlayer.OnEnterMap, self.pPlayer)
end



function GameTemplet:SetForbitItem()
	local szMapType = self.szMapType
	for nMapId, bFlag in self.tbMapList do
		if bFlag then
			set_MapType(nMapId, szMapType)
		end
	end
	for i=1, getn(self.tbForbitItemType) do
		
		if self.tbForbitItemType[i] == "MATE" then
			for nMapId, bFlag in self.tbMapList do
				if bFlag then
					FORBITMAP_LIST[nMapId] = 1
				end
			end
			
		end
		
		tb_MapType[szMapType] = tb_MapType[szMapType] or {}
		tinsert(tb_MapType[szMapType], self.tbForbitItemType[i])
	end
end


function GameTemplet:Start()
	self:AssociateMap(20)	
	self:RegAll()
	self:AddAllTrap()
	self:AddAllNpc()
end
