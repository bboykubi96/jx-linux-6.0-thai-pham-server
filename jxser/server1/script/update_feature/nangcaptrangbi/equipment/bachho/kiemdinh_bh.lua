IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
---------------------------------------------------------------------------------------------------------------
local tbDialogOpt = {}
KiemDinhBachHo = tbActivityCompose:new()
KiemDinhBachHo.bAccessBindItem = 0
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CommonMaterial_KiemDinhBachHo = {
	{szName="KiÓm §Þnh Phï",tbProp={6,1,3007,1,0,0},nCount=1},
}
-------------------------------------------------------------------------------------------------
tbFormulaList_KiemDinhBachHo = {
	[1] = 
	{
		szName = "B¹ch Hæ H¹ng Liªn",
		tbSpecialMaterial = 
		{
			{szName = "B¶o R­¬ng B¹ch Hæ H¹ng Liªn", tbProp = {6,1,5660}, nCount = 1},
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
			{szName = "B¶o R­¬ng B¹ch Hæ Kh«i", tbProp = {6,1,5661}, nCount = 1},		
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
			{szName = "B¶o R­¬ng B¹ch Hæ Th­îng Giíi", tbProp = {6,1,5662}, nCount = 1},			
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
			{szName = "B¶o R­¬ng B¹ch Hæ Hé UyÓn", tbProp = {6,1,5663}, nCount = 1},			
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
			{szName = "B¶o R­¬ng B¹ch Hæ Yªu §¸i", tbProp = {6,1,5664}, nCount = 1},			
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
			{szName = "B¶o R­¬ng B¹ch Hæ Y", tbProp = {6,1,5665}, nCount = 1},			
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
			{szName = "B¶o R­¬ng B¹ch Hæ Vò KhÝ", tbProp = {6,1,5666}, nCount = 1},		
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
			{szName = "B¶o R­¬ng B¹ch Hæ Hµi", tbProp = {6,1,5667}, nCount = 1},		
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
			{szName = "B¶o R­¬ng B¹ch Hæ Béi", tbProp = {6,1,5668}, nCount = 1},		
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
			{szName = "B¹ch Hæ B¶o R­¬ng H¹ Giíi", tbProp = {6,1,5669}, nCount = 1},		
		},		

		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
}
-----------------------------------------------------------------------------------------------------------------
function KiemDinhBachHo:CheckItem(tbItem ,nItemIndex)
	if IsMyItem(nItemIndex) ~= 1 then
		return
	end
	local tbRecItem = self:MakeItem(nItemIndex)
	if tbRecItem.nQuality == 1 then
		if GetItemBindState(nItemIndex) ~= 0 then
			return 1
		end
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

function KiemDinhBachHo:ConsumeAdditive(tbAdditive, szLogTitle)
	for i=1,getn(tbAdditive) do
		local tbItem = tbAdditive[i]
		local tbRoomItems =  self:GetRoomItems(self.nRoomType)	
		local nCount = self:CalcItemCount(tbRoomItems, tbItem)
		if nCount > 0 then
			self:ConsumeItem(tbRoomItems, nCount, tbItem)
		end
		self:ConsumeLog(nCount.." "..tbItem.szName, szLogTitle)
	end
	return 1;
end
---------------------------------------------------------------------KiÓm Tra Nguyªn LiÖu Vµ LÊy Nguyªn LiÖu--------------------------------------------------------------------
function KiemDinhBachHo:Compose(nProductId)
	local tbProduct = self.tbFormula.tbProduct[nProductId]
	
	if not tbProduct then
		return 
	end
	
	local nFreeItemCellLimit = 1
	if self.tbFormula.nWidth ~= 0 and self.tbFormula.nHeight ~= 0 and CountFreeRoomByWH(self.tbFormula.nWidth, self.tbFormula.nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, self.tbFormula.nWidth, self.tbFormula.nHeight))
		return 0
	end
	
	local szFailMsg = "<color=red>"..myplayersex().." Mang Nguyªn LiÖu Kh«ng §ñ Råi<color>"
	if self:CheckMaterial(%CommonMaterial_KiemDinhBachHo, 1) ~=1 then
		Talk(1, "", szFailMsg)
		return 0;
	end

	self:ConsumeMaterial(%CommonMaterial_KiemDinhBachHo, 1, self.szLogTitle)	--LÊy Nguyªn LiÖu
	self:ConsumeAdditive(self.tbFormula.tbSpecialMaterial, self.szLogTitle)	--LÊy B¶o R­¬ng
	
	tbAwardTemplet:Give(tbProduct, 1, {self.szLogTitle})
	return 1;
end
-------------------------------------------------Lùa Chän Trang BÞ--------------------------------------------------------------------------------------------------
function KiemDinhBachHo:SelectEquip(nId, nCount)
	local msg = "TiÕp Theo H·y Chän\nM«n Ph¸i Theo H­íng Chñ C«ng"
	local szMsg = format("Ng­¬i §· Lùa Chän %s, %s", self.tbFormula.szName, msg)
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
-------------------------------------------------------------KiÓm Tra Nguyªn LiÖu----------------------------------------------------------------------------
function KiemDinhBachHo:GiveUIOk(nCount)
	local tbMaterial = self.tbFormula.tbMaterial
	local tbAdditive = self.tbFormula.tbAdditive
	
	local szFailMsg = "<color=red>"..myplayersex().." Mang Nguyªn LiÖu Kh«ng §ñ Råi<color>"
	if self:CheckMaterial(%CommonMaterial_KiemDinhBachHo, 1) ~= 1 then
		Talk(1, "", szFailMsg)
		return 0;
	end

	if self:CheckMaterial(self.tbFormula.tbSpecialMaterial, 1) ~= 1 then
		Talk(2, "", szFailMsg, self.tbFormula.tbSpecialMaterial[1].szName)
		return 0;
	end
	
	if (nCount ~= 2) then
		Talk(1,"","Ng­¬i §Æt Vµo Nguyªn LiÖu Kh«ng ChÝnh X¸c")
		return
	end
	
	local szMsg = format("KiÓm §Þnh B¶o R­¬ng B¹ch Hæ")
	local tbOpt = {
		{"TiÕp Tôc KiÓm §Þnh", self.SelectEquip, {self, 1, 5}},
		{"§Æt L¹i LÇn N÷a", self.ComposeGiveUI, {self}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szMsg, tbOpt)
end
-----------------------------------------------KiÓm Tra B¶o R­¬ng-----------------------------------------------------------------------------------------
function KiemDinhBachHo:ComposeGiveUI()
	local szTitle = format("§æi %s", self.tbFormula.szName)
	local szContent = self:GetMaterialList(%CommonMaterial_KiemDinhBachHo)
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	
	szContent = format("%s<enter>%-17s %s", szContent, "B¶o R­¬ng B¹ch Hæ","1")
	
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

----------------------------------§æi Trang BÞ B¹ch Hæ------------------------------------------------------
function KiemDinhBachHo:SelectParts()
local szTitle = "<color=green>Muèn KiÓm §Þnh Trang BÞ B¹ch Hæ Yªu CÇu:<color>\n"
szTitle = szTitle..format("<color=yellow>%-30s %s<color>\n", "VËt PhÈm", "Sè L­îng")
szTitle = szTitle..format("<color=red>%-30s %s<color>\n", "B¶o R­¬ng B¹ch Hæ", "1")
szTitle = szTitle..format("<color=red>%-30s %s<color>\n", "Ngò Linh KiÓm §Þnh Phï", "1")
szTitle = szTitle..format("<bclr=blue>%s %s<bclr>", GetName(), "H·y Chän Lo¹i Trang BÞ Muèn KiÓm §Þnh:")
CreateNewSayEx(szTitle, %tbDialogOpt)
end

for i=1, getn(tbFormulaList_KiemDinhBachHo) do
	tbFormulaList_KiemDinhBachHo[i].tbProduct = tbEquip_BachHo[i]
	local p = KiemDinhBachHo:new(tbFormulaList_KiemDinhBachHo[i], "KiemDinhBachHo", INVENTORY_ROOM.room_giveitem)
	local szOpt = format("§æi %s", tbFormulaList_KiemDinhBachHo[i].szName)
	tinsert(tbDialogOpt, {szOpt, p.ComposeGiveUI, {p}})
end
tinsert(tbDialogOpt, {"Hñy Bá "})
--=====================================================================================================--
--pEventType:Reg("Thî rÌn", "KiÓm §Þnh B¶o R­¬ng B¹ch Hæ", KiemDinhBachHo.SelectParts, {KiemDinhBachHo})
--=====================================================================================================--