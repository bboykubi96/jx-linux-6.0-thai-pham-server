
ItemClass = {}
function ItemClass:_init()
	self.szName = ""
	self.tbProp = {} -- script viet hoa By http://tranhba.com {nItemGenre, nDetailType, nParticualrType, nLevel, nSeries, nLuck}
	self.nVersion = 4-- script viet hoa By http://tranhba.com Ä#Ì#°#±#ºÅ##Ä¿#°ã·#Ä£#4
	self.nRandSeed = 0 -- script viet hoa By http://tranhba.com 0±Ý£#²########ó###ã
	self.nQuality = 0 -- script viet hoa By http://tranhba.com 0#âÝ# 1 ###ð  4°##ð
	self.tbParam = {0,0,0,0,0,0}-- script viet hoa By http://tranhba.com ã·ãóÄ###£«#¤ or #¤##ß#²#£ý####â###ß###ßß´##°±#²#¿Ð#¤##ß#²#£ý##
	self.nUpgradeLevel = nil
	self.nCurDurability = nil 
	self.nMaxDurability = nil
	self.nExpiredTime = nil
	self.nLeftUsageTime = nil
	self.nItemLockState = nil
	self.nBindState = nil
	self.nCount = 1
end

function ItemClass:Pack(...)
	return arg
end

-- script viet hoa By http://tranhba.com Ðó³Ð¿â£ý#ý#Ä#µ##
function ItemClass:New()
	local tb = {}
	for key, value in self do
		tb[key] = value
	end
	self:_init()
	return tb
end

-- script viet hoa By http://tranhba.com #ï#ý´¿£ý#ýÐó³Ðß#######
function ItemClass:NewFormPureData(tbItem)
	local tb = self:New()
	for key, value in tbItem do
		if type(value) ~= "function" then
			tb[key] = value
		end
	end
	return tb
end

-- script viet hoa By http://tranhba.com #ï#ý####IndexÐó³Ð#µ##£ý#ý
function ItemClass:NewFromItemIndex(nItemIndex)
	local tb = self:New()
	
	tb.szName			= GetItemName(nItemIndex)
	tb.nRandSeed		= ITEM_GetItemRandSeed(nItemIndex)
	tb.nQuality 		= GetItemQuality(nItemIndex)
	tb.nBindState		= GetItemBindState(nItemIndex)
	tb.tbParam			= GetItemAllParams(nItemIndex)
	tb.nUpgradeLevel	= GetPlatinaLevel(nItemIndex)
	tb.nExpiredTime		=  ITEM_GetExpiredTime(nItemIndex)
	tb.nLeftUsageTime	= ITEM_GetLeftUsageTime(nItemIndex)
	
	-- script viet hoa By http://tranhba.com ¤ý£±·#ã####ª
	
	if tb.nQuality == 1 then
		tb.tbProp = {0, GetGlodEqIndex(nItemIndex)}
	elseif tb.nQuality == 4 then
		tb.tbProp = {0, GetPlatinaEquipIndex(nItemIndex)}
	else
		tb.tbProp = self:Pack(GetItemProp(nItemIndex))
	end
	
		
	if IsItemStackable(nItemIndex) == 1 then -- script viet hoa By http://tranhba.com ###ã####¿´###ã£ý##·#ÄÝ#·
		tb.nCount = GetItemStackCount(nItemIndex)
	else-- script viet hoa By http://tranhba.com #####ã####¿´ÄÝ#·
		tb.nCurDurability = GetCurDurability(nItemIndex)
		tb.nMaxDurability = GetMaxDurability(nItemIndex)	
	end
		
	return tb
end

-- script viet hoa By http://tranhba.com ##Ì##µ###Ä´¿£ý#ý##²#°#º#º¯£ý
function ItemClass:GetPureData()
	local tb = {}
	for key, value in self do
		if type(value) ~= "function" then
			tb[key] = value
		end
	end
	return tb
end

function ItemClass:AddStackCount(nItemIndex, nAddCount)
	if nAddCount <= 0 then
		return 0
	end
	local nOrgStackCount = GetItemStackCount(nItemIndex)
	local nMaxStackCount = GetItemMaxStackCount(nItemIndex)
	local nStackCount = nOrgStackCount + nAddCount
	if nStackCount >= nMaxStackCount then
		nStackCount = nMaxStackCount
	end
	SetItemStackCount(nItemIndex, nStackCount)
	return nStackCount - nOrgStackCount -- script viet hoa By http://tranhba.com ####¤##ã¸########ã£ý
end


function ItemClass:CreateItem(nPlayerIndex, nCopysCount, varLogTitle)
	local nItemIndex = self:GenBaseItem()
	self:SetExtProperty(nItemIndex)
	return nItemIndex
end

-- script viet hoa By http://tranhba.com ##Ý##ß¤##ãß####µ##
function ItemClass:AddToPlayer(nPlayerIndex, nCopysCount, varLogTitle)
	local nCount = (self.nCount or 1) * nCopysCount
	
	for i=1, nCount do 
		local nItemIndex = self:GenBaseItem()
		if nItemIndex > 0 then
			if IsItemStackable(nItemIndex) == 1 then -- script viet hoa By http://tranhba.com #¤ãó###ã####,ãÅ#¯####´#£ý## ceil(topCount / MaxStackCount)
				i = i + self:AddStackCount(nCount - i)
			end
			self:SetExtProperty(nItemIndex)
			lib:DoFunByPlayer(nPlayerIndex, AddItemByIndex, nItemIndex)
		end
	end
	local szLog = ""
	self:WriteLog(varLogTitle, szLog)
end

function ItemClass:WriteLog(varLogTitle, szLog)
	
end

-- script viet hoa By http://tranhba.com ######Ðó³Ðß########ï±#£ý#ý##¤#£#£ý#ý##
function ItemClass:GenBaseItem()
	local nRow = 0
	if self.nQuality and (self.nQuality == 1 or tbItem.self == 4) then
		nRow = 1
	end
	local uRandSeed	= tonumber(format("%u", self.nRandSeed))
	
	local nItemGenre		= self.tbProp[1] or 0
	local nDetailType		= (self.tbProp[2] or 0) - nRow
	local nParticualrType	= self.tbProp[3] or 0
	local nLevel			= self.tbProp[4] or 0
	local nSeries			= self.tbProp[5] or random(0,4)
	local nLuck				= self.tbProp[6] or 0
	
	return NewItemEx(self.nVersion,uRandSeed,self.nQuality,
		nItemGenre, nDetailType, nParticualrType, nLevel, nSeries, nLuck, 		
		self.tbParam[1] or 0,
		self.tbParam[2] or 0,
		self.tbParam[3] or 0,
		self.tbParam[4] or 0,
		self.tbParam[5] or 0,
		self.tbParam[6] or 0,
		self.nUpgradeLevel)
end

-- script viet hoa By http://tranhba.com ÐÌ#·##Ý©#Ä£«#¤
function ItemClass:SetExtProperty(nItemIndex)		
	if IsItemStackable(nItemIndex) ~= 1 then -- script viet hoa By http://tranhba.com #¤ãó²#¿Ð###ã#Ä#µ##
		if self.nCurDurability then -- script viet hoa By http://tranhba.com ÐÌ#·#±#°ÄÝ#·#Ì
			SetCurDurability(nItemIndex, self.nCurDurability)
		end
		
		if self.nMaxDurability then -- script viet hoa By http://tranhba.com  ÐÌ#·##´ãÄÝ#·#Ì
			SetMaxDurability(nItemIndex, self.nMaxDurability)
		end
	end
	if self.nExpiredTime then
		ITEM_SetExpiredTime(nItemIndex, self.nExpiredTime)-- script viet hoa By http://tranhba.com  ÐÌ#·ã####ó
	end
	
	if self.nUsageTime or self.nLeftUsageTime then
		ITEM_SetLeftUsageTime(nItemIndex, self.nUsageTime or self.nLeftUsageTime) -- script viet hoa By http://tranhba.com  ÐÌ#·£#ã·#ó
	end
	
	if self.nItemLockState == 1 then -- script viet hoa By http://tranhba.com ÐÌ#·###ª
		LockItem(nItemIndex);
	end
	
	if self.nBindState then
		SetItemBindState(nItemIndex, self.nBindState)-- script viet hoa By http://tranhba.com #ï#ýnBindState°ã######
	end
end
