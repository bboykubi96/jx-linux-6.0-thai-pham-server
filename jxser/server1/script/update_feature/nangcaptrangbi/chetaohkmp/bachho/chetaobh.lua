IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
---------------------------------------------------------------------------------------------------------------
local tbDialogOpt = {}
CheTaoBachHo = tbActivityCompose:new()
CheTaoBachHo.bAccessBindItem = 1
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CommonMaterial_CheTaoBachHo = {
	{szName="B¹ch Hæ LÖnh",tbProp={6,1,5436,1,0,0},nCount=1},
	{szName="Ng©n L­îng",nJxb=1,nCount=30000000},
}
-------------------------------------------------------------------------------------------------
AdditiveMaterial_CheTaoBachHo = {
	{szName="Ngäc ThÇn Kú",tbProp={6,1,7000,1,0,0},nSuccessRate=5,nMaxSuccessRate=20},
}
------------------------------------------------------------------------------------------------------------------
tbFormulaList_CheTaoBachHo = {
	[1] = 
	{
		szName = "B¹ch Hæ H¹ng Liªn",
		tbSpecialMaterial = 
		{
			{szName = "§å Phæ B¹ch Hæ H¹ng Liªn", tbProp = {6,1,5510}, nSuccessRate = 100, nMaxSuccessRate = 100},
		},				
		nWidth = 2,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[2] = 
	{				
		szName = "B¹ch Hæ Kh«i",
		tbSpecialMaterial = 
		{
			{szName = "§å Phæ B¹ch Hæ Kh«i", tbProp = {6,1,5511}, nSuccessRate = 100, nMaxSuccessRate = 100},		
		},
		nWidth = 2,
		nHeight = 2,
		nFreeItemCellLimit = 1,		
	},
	[3] = 
	{
		szName = "B¹ch Hæ Th­îng Giíi",
		tbSpecialMaterial = 
		{
			{szName = "§å Phæ B¹ch Hæ Th­îng Giíi", tbProp = {6,1,5512}, nSuccessRate = 100, nMaxSuccessRate = 100},			
		},		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[4] = 
	{
		szName = "B¹ch Hæ Hé UyÓn",
		tbSpecialMaterial = 
		{
			{szName = "§å Phæ B¹ch Hæ Hé UyÓn", tbProp = {6,1,5513}, nSuccessRate = 100, nMaxSuccessRate = 100},			
		},		
		
		nWidth = 1,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[5] = 
	{
		szName = "B¹ch Hæ Yªu §¸i",
		tbSpecialMaterial = 
		{
			{szName = "§å Phæ B¹ch Hæ Yªu §¸i", tbProp = {6,1,5514}, nSuccessRate = 100, nMaxSuccessRate = 100},			
		},
		nWidth = 2,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[6] = 
	{
		szName = "B¹ch Hæ Y",
		tbSpecialMaterial = 
		{
			{szName = "§å Phæ B¹ch Hæ Y", tbProp = {6,1,5515}, nSuccessRate = 100, nMaxSuccessRate = 100},			
		},		
		nWidth = 2,
		nHeight = 3,
		nFreeItemCellLimit = 1,
	},
	[7] = 
	{
		szName = "B¹ch Hæ Vò KhÝ",
		tbSpecialMaterial = 
		{
			{szName = "§å Phæ B¹ch Hæ Vò KhÝ", tbProp = {6,1,5516}, nSuccessRate = 100, nMaxSuccessRate = 100},		
		},		
		
		nWidth = 2,
		nHeight = 4,
		nFreeItemCellLimit = 1,		
	},
	[8] = 
	{
		szName = "B¹ch Hæ Hµi",
		tbSpecialMaterial = 
		{
			{szName = "§å Phæ B¹ch Hæ Hµi", tbProp = {6,1,5517}, nSuccessRate = 100, nMaxSuccessRate = 100},		
		},			
		
		nWidth = 2,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[9] = 
	{
		szName = "B¹ch Hæ Béi",
		tbSpecialMaterial = 
		{
			{szName = "§å Phæ B¹ch Hæ Béi", tbProp = {6,1,5518}, nSuccessRate = 100, nMaxSuccessRate = 100},		
		},				
		
		nWidth = 1,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[10] = 
	{
		szName = "B¹ch Hæ H¹ Giíi",
		tbSpecialMaterial = 
		{
			{szName = "B¹ch Hæ §å Phæ H¹ Giíi", tbProp = {6,1,5519}, nSuccessRate = 100, nMaxSuccessRate = 100},		
		},		

		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
}
-----------------------------------------------------------------------------------------------------------------
function CheTaoBachHo:GetComposeRate()
	local tbRoomItems = self:GetRoomItems(self.nRoomType)
	local nRate = self:CalcRate(%AdditiveMaterial_CheTaoBachHo ,tbRoomItems)
	local tbSpecialMaterial = self.tbFormula.tbSpecialMaterial
	nRate = nRate + self:CalcRate(tbSpecialMaterial ,tbRoomItems)
	return nRate
end

function CheTaoBachHo:CalcRate(tbAdditive, tbRoomItems)	
	local nSuccessRate = 0
	for k, v in tbAdditive do
		local nCount = self:CalcItemCount(tbRoomItems, v)	
		local nSR = nCount * v.nSuccessRate
		if nSR > v.nMaxSuccessRate then
			nSR = v.nMaxSuccessRate
		end
		nSuccessRate = nSuccessRate + nSR;				
	end
	return nSuccessRate
end

function CheTaoBachHo:CheckItem(tbItem ,nItemIndex)
	if IsMyItem(nItemIndex) ~= 1 then
		return
	end
	local tbRecItem = self:MakeItem(nItemIndex)
	if tbRecItem.nQuality == 1 then
		--if GetItemBindState(nItemIndex) ~= 0 then
		--	return 1
		--end
		if ITEM_GetExpiredTime(nItemIndex) ~= 0 then
			return
		end
		local nG = GetItemProp(nItemIndex)
		if nG == 7 then
			return
		end
	end
	for k,v in tbItem do
		if k ~= "szName" and type(v) ~= "table" and v ~= -1 and tbRecItem[k] and v~= tbRecItem[k] then
			return
		elseif k == "tbProp" and type(v) == "table" then
			local tbProp = tbRecItem[k]
			for k1,v1 in v do
				if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and v1~= tbProp[k1] then
					return 
				end
			end
		end
	end	
	return 1
end

function CheTaoBachHo:ConsumeAdditive(tbAdditive, szLogTitle)
	for i=1,getn(tbAdditive) do
		local tbItem = tbAdditive[i]
		local tbRoomItems =  self:GetRoomItems(self.nRoomType)	
		local nCount = self:CalcItemCount(tbRoomItems, tbItem)
		local nMaxCount = floor(tbItem.nMaxSuccessRate / tbItem.nSuccessRate)
		if nCount > nMaxCount then
			nCount = nMaxCount
		end
		if nCount > 0 then
			self:ConsumeItem(tbRoomItems, nCount, tbItem)
		end
		self:ConsumeLog(nCount.." "..tbItem.szName, szLogTitle)
	end
	return 1;
end
---------------------------------------------------------------------KiÓm Tra Nguyªn LiÖu Vµ LÊy Nguyªn LiÖu--------------------------------------------------------------------
function CheTaoBachHo:Compose(nProductId)
	local tbProduct = self.tbFormula.tbProduct[nProductId]
	local tbGoldEquip = self.tbFormula.tbGoldEquip[nProductId]
	local tbGoldEquipEx = self.tbFormula.tbGoldEquipEx[nProductId]
	
	if not tbProduct then
		return 
	end
	
	local nFreeItemCellLimit = 1
	if self.tbFormula.nWidth ~= 0 and self.tbFormula.nHeight ~= 0 and CountFreeRoomByWH(self.tbFormula.nWidth, self.tbFormula.nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, self.tbFormula.nWidth, self.tbFormula.nHeight))
		return 0
	end

	local nSuccessRate = self:GetComposeRate()
	
	local szFailMsg = "<color=red>"..myplayersex().." Mang Nguyªn LiÖu Kh«ng §ñ Råi<color>"
	if self:CheckMaterial(%CommonMaterial_CheTaoBachHo, 1) ~=1 then
		Talk(1, "", szFailMsg)
		return 0;
	end

	if self:CheckMaterial(self.tbFormula.tbSpecialMaterial, 1) ~= 1 then
		Talk(1, "", szFailMsg)
		return 0;
	end

	if self:CheckMaterial({tbGoldEquip}, 1) ~= 1 and self:CheckMaterial({tbGoldEquipEx}, 1) ~= 1 then		--KiÓm Tra Trang BÞ Th­êng Vµ Trang BÞ Max
		Talk(1, "", szFailMsg)
		return 0;
	end
	
	
	self:ConsumeMaterial(%CommonMaterial_CheTaoBachHo, 1, self.szLogTitle)			--LÊy Nguyªn LiÖu
	self:ConsumeAdditive(self.tbFormula.tbSpecialMaterial, self.szLogTitle)			--LÊy §å Phæ
	--self:ConsumeAdditive(%AdditiveMaterial_CheTaoBachHo, self.szLogTitle)			--LÊy VËt PhÈm T¨ng %

	if random(1, 100) > nSuccessRate then
		Msg2Player("ThËt §¸ng TiÕc ChÕ T¹o §· ThÊt B¹i")
		return 0
	end
	
	if self:ConsumeMaterial({tbGoldEquip}, 1, self.szLogTitle) ~= 1 then	--LÊy Trang BÞ Khi Ðp Thµnh C«ng
		self:ConsumeMaterial({tbGoldEquipEx}, 1, self.szLogTitle)
	end
	
	tbAwardTemplet:Give(tbProduct, 1, {self.szLogTitle})
	return 1;
end
-------------------------------------------------Lùa Chän Trang BÞ--------------------------------------------------------------------------------------------------
function CheTaoBachHo:SelectEquip(nId, nCount)
	local szMsg = format("%s! H·y Lùa Chän Mét %s", myplayersex(), self.tbFormula.szName)
	local nProductCount = getn(self.tbFormula.tbProduct)
	local nEndId = nCount + nId - 1

	if nEndId > nProductCount then
		nEndId = nProductCount
	end

	local tbOpt = {}
	for i=nId, nEndId  do 
		tinsert(tbOpt, {%tbRepresentName[i], self.Compose, {self, i}})
	end
	if nId >= nCount + 1  then
		tinsert(tbOpt, {"Trang Tr­íc", self.SelectEquip, {self, nId-nCount, nCount}})
	end
	if nEndId < nProductCount then
		tinsert(tbOpt, {"Trang KÕ ", self.SelectEquip, {self, nId+nCount, nCount}})
	end
	tinsert(tbOpt, {"Hñy Bá"})
	CreateNewSayEx(szMsg, tbOpt)
end
-------------------------------------------------------------KiÓm Tra %----------------------------------------------------------------------------
function CheTaoBachHo:GiveUIOk(nCount)
	local tbMaterial	= self.tbFormula.tbMaterial
	local tbAdditive = self.tbFormula.tbAdditive
	local szFailMsg = "<color=red>"..myplayersex().." Mang Nguyªn LiÖu Kh«ng §ñ Råi<color>"

	if self:CheckMaterial(%CommonMaterial_CheTaoBachHo, 1) ~=1 then
		Talk(1, "", szFailMsg)
		return 0;
	end

	if self:CheckMaterial(self.tbFormula.tbSpecialMaterial, 1) ~=1 then
		Talk(2, "", szFailMsg, self.tbFormula.tbSpecialMaterial[1].szName)
		return 0;
	end
	
	local nSuccessRate = self:GetComposeRate()
	local szMsg = format("§Æt Nguyªn LiÖu Vµo nhËn ®­îc tØ lÖ thµnh c«ng lµ%d%%, ®¹i hiÖp cã muèn tiÕp tôc chÕ t¹o kh«ng", nSuccessRate)
	if nSuccessRate > 100 then
		szMsg = "TØ lÖ thµnh c«ng v­ît qu¸ 100% sÏ l·ng phÝ nguyªn liÖu cña ®¹i hiÖp, ng­¬i cã muèn tiÕp tôc chÕ kh«ng"
	end
	
	local tbOpt = {
		{"TiÕp Tôc ChÕ T¹o", self.SelectEquip, {self, 1, 5}},
		{"§Æt Vµo LÇn N÷a", self.ComposeGiveUI, {self}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szMsg, tbOpt)
end
-----------------------------------------------KiÓm Tra §å Phæ-----------------------------------------------------------------------------------------
function CheTaoBachHo:ComposeGiveUI()
	local szTitle = format("%s", self.tbFormula.szName)
	local szContent = self:GetMaterialList(%CommonMaterial_CheTaoBachHo)

	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = format("%s<enter>%-17s %s", szContent, "Trang BÞ Kim ¤","1")
	szContent = format("%s<enter>%-17s %s", szContent, "§å Phæ B¹ch Hæ","1")
	szContent = format("%s<enter>\t\t\t\t\t%-17s %s", szContent, "TØ LÖ Thµnh C«ng","100%")
	
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

----------------------------------ChÕ T¹o Trang BÞ B¹ch Hæ------------------------------------------------------
function CheTaoBachHo:SelectParts()
local szTitle = "<color=green>Hîp Thµnh Trang BÞ B¹ch Hæ Yªu CÇu:<color>\n"
szTitle = szTitle..format("<color=yellow>%-15s%-22s %s<color>\n", "Nguyªn LiÖu", "Sè L­îng Tèi ThiÓu", "Sè L­îng Tèi §a")
szTitle = szTitle..format("<color=red>%-22s %s<color>\n", "B¹ch Hæ LÖnh", "1")
szTitle = szTitle..format("<color=red>%-22s %s<color>\n", "§å Phæ B¹ch Hæ", "1")
szTitle = szTitle..format("<color=red>%-22s %s<color>\n", "Trang BÞ Kim ¤", "1")
szTitle = szTitle..format("<color=red>%-22s %s<color>\n", "Ng©n L­îng", "3000 V¹n")
szTitle = szTitle..format("<bclr=blue>%s %s<bclr>", GetName(), "H·y Chän Lo¹i Trang BÞ Muèn ChÕ T¹o:")
CreateNewSayEx(szTitle, %tbDialogOpt)
end

for i=1, getn(tbFormulaList_CheTaoBachHo) do
	tbFormulaList_CheTaoBachHo[i].tbProduct = tbEquip_BachHo[i]
	tbFormulaList_CheTaoBachHo[i].tbGoldEquip = tbEquip_KimO[i]
	tbFormulaList_CheTaoBachHo[i].tbGoldEquipEx = tbEquip_KimOMax[i]

	local p = CheTaoBachHo:new(tbFormulaList_CheTaoBachHo[i], "CheTaoBachHo", INVENTORY_ROOM.room_giveitem)
	local szOpt = format("ChÕ T¹o: %s", tbFormulaList_CheTaoBachHo[i].szName)
	tinsert(tbDialogOpt, {szOpt, p.ComposeGiveUI, {p}})
end
tinsert(tbDialogOpt, {"Hñy Bá "})

--====================================================================================================--
--pEventType:Reg("Thî rÌn","ChÕ T¹o B¹ch Hæ", CheTaoBachHo.SelectParts, {CheTaoBachHo})
--====================================================================================================--