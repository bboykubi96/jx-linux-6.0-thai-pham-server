IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
---------------------------------------------------------------------------------------------------------------
local tbDialogOpt = {}
KiemDinhTinhSuong = tbActivityCompose:new()
KiemDinhTinhSuong.bAccessBindItem = 0
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CommonMaterial_KiemDinhTinhSuong = {
	{szName="KNB ",tbProp={4,1496,1,1,0,0},nCount=1},
}
-------------------------------------------------------------------------------------------------
tbFormulaList_KiemDinhTinhSuong = {
	[1] = 
	{
		szName = "Tinh S��ng H�ng Li�n",
		tbSpecialMaterial = 
		{
			{szName = "B�o R��ng Tinh S��ng H�ng Li�n", tbProp = {6,1,5700}, nCount = 1},
		},				
		nWidth = 2,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[2] = 
	{				
		szName = "Tinh S��ng Kh�i",
		tbSpecialMaterial = 
		{
			{szName = "B�o R��ng Tinh S��ng Kh�i", tbProp = {6,1,5701}, nCount = 1},		
		},
		nWidth = 2,
		nHeight = 2,
		nFreeItemCellLimit = 1,		
	},
	[3] = 
	{
		szName = "Tinh S��ng Th��ng Gi�i",
		tbSpecialMaterial = 
		{
			{szName = "B�o R��ng Tinh S��ng Th��ng Gi�i", tbProp = {6,1,5702}, nCount = 1},			
		},		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[4] = 
	{
		szName = "Tinh S��ng H� Uy�n",
		tbSpecialMaterial = 
		{
			{szName = "B�o R��ng Tinh S��ng H� Uy�n", tbProp = {6,1,5703}, nCount = 1},			
		},		
		
		nWidth = 1,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[5] = 
	{
		szName = "Tinh S��ng Y�u ��i",
		tbSpecialMaterial = 
		{
			{szName = "B�o R��ng Tinh S��ng Y�u ��i", tbProp = {6,1,5704}, nCount = 1},			
		},
		nWidth = 2,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[6] = 
	{
		szName = "Tinh S��ng Y",
		tbSpecialMaterial = 
		{
			{szName = "B�o R��ng Tinh S��ng Y", tbProp = {6,1,5705}, nCount = 1},			
		},		
		nWidth = 2,
		nHeight = 3,
		nFreeItemCellLimit = 1,
	},
	[7] = 
	{
		szName = "Tinh S��ng V� Kh�",
		tbSpecialMaterial = 
		{
			{szName = "B�o R��ng Tinh S��ng V� Kh�", tbProp = {6,1,5706}, nCount = 1},		
		},		
		
		nWidth = 2,
		nHeight = 4,
		nFreeItemCellLimit = 1,		
	},
	[8] = 
	{
		szName = "Tinh S��ng H�i",
		tbSpecialMaterial = 
		{
			{szName = "B�o R��ng Tinh S��ng H�i", tbProp = {6,1,5707}, nCount = 1},		
		},			
		
		nWidth = 2,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[9] = 
	{
		szName = "Tinh S��ng B�i",
		tbSpecialMaterial = 
		{
			{szName = "B�o R��ng Tinh S��ng B�i", tbProp = {6,1,5708}, nCount = 1},		
		},				
		
		nWidth = 1,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[10] = 
	{
		szName = "Tinh S��ng H� Gi�i",
		tbSpecialMaterial = 
		{
			{szName = "Tinh S��ng B�o R��ng H� Gi�i", tbProp = {6,1,5709}, nCount = 1},		
		},		

		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
}
-----------------------------------------------------------------------------------------------------------------
function KiemDinhTinhSuong:CheckItem(tbItem ,nItemIndex)
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

function KiemDinhTinhSuong:ConsumeAdditive(tbAdditive, szLogTitle)
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
---------------------------------------------------------------------Ki�m Tra Nguy�n Li�u V� L�y Nguy�n Li�u--------------------------------------------------------------------
function KiemDinhTinhSuong:Compose(nProductId)
	local tbProduct = self.tbFormula.tbProduct[nProductId]
	
	if not tbProduct then
		return 
	end
	
	local nFreeItemCellLimit = 1
	if self.tbFormula.nWidth ~= 0 and self.tbFormula.nHeight ~= 0 and CountFreeRoomByWH(self.tbFormula.nWidth, self.tbFormula.nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, self.tbFormula.nWidth, self.tbFormula.nHeight))
		return 0
	end
	
	local szFailMsg = "<color=red>"..myplayersex().." Mang Nguy�n Li�u Kh�ng �� R�i<color>"
	if self:CheckMaterial(%CommonMaterial_KiemDinhTinhSuong, 1) ~=1 then
		Talk(1, "", szFailMsg)
		return 0;
	end

	self:ConsumeMaterial(%CommonMaterial_KiemDinhTinhSuong, 1, self.szLogTitle)	--L�y Nguy�n Li�u
	self:ConsumeAdditive(self.tbFormula.tbSpecialMaterial, self.szLogTitle)	--L�y B�o R��ng
	
	tbAwardTemplet:Give(tbProduct, 1, {self.szLogTitle})
	return 1;
end
-------------------------------------------------L�a Ch�n Trang B�--------------------------------------------------------------------------------------------------
function KiemDinhTinhSuong:SelectEquip(nId, nCount)
	local msg = "Ti�p Theo H�y Ch�n\nM�n Ph�i Theo H��ng Ch� C�ng"
	local szMsg = format("Ng��i �� L�a Ch�n %s, %s", self.tbFormula.szName, msg)
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
		tinsert(tbOpt, {"Trang Tr��c", self.SelectEquip, {self, nId-nCount, nCount}})
	end
	if nEndId < nProductCount then
		tinsert(tbOpt, {"Trang K� ", self.SelectEquip, {self, nId+nCount, nCount}})
	end
	tinsert(tbOpt, {"H�y B�"})
	CreateNewSayEx(szMsg, tbOpt)
end
-------------------------------------------------------------Ki�m Tra Nguy�n Li�u----------------------------------------------------------------------------
function KiemDinhTinhSuong:GiveUIOk(nCount)
	local tbMaterial = self.tbFormula.tbMaterial
	local tbAdditive = self.tbFormula.tbAdditive
	
	local szFailMsg = "<color=red>"..myplayersex().." Mang Nguy�n Li�u Kh�ng �� R�i<color>"
	if self:CheckMaterial(%CommonMaterial_KiemDinhTinhSuong, 1) ~= 1 then
		Talk(1, "", szFailMsg)
		return 0;
	end

	if self:CheckMaterial(self.tbFormula.tbSpecialMaterial, 1) ~= 1 then
		Talk(2, "", szFailMsg, self.tbFormula.tbSpecialMaterial[1].szName)
		return 0;
	end
	
	if (nCount ~= 2) then
		Talk(1,"","Ng��i ��t V�o Nguy�n Li�u Kh�ng Ch�nh X�c")
		return
	end
	
	local szMsg = format("Ki�m ��nh B�o R��ng Tinh S��ng")
	local tbOpt = {
		{"Ti�p T�c Ki�m ��nh", self.SelectEquip, {self, 1, 5}},
		{"��t L�i L�n N�a", self.ComposeGiveUI, {self}},
		{"H�y B�"},
	}
	CreateNewSayEx(szMsg, tbOpt)
end
-----------------------------------------------Ki�m Tra B�o R��ng-----------------------------------------------------------------------------------------
function KiemDinhTinhSuong:ComposeGiveUI()
	local szTitle = format("��i %s", self.tbFormula.szName)
	local szContent = self:GetMaterialList(%CommonMaterial_KiemDinhTinhSuong)
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	
	szContent = format("%s<enter>%-17s %s", szContent, "B�o R��ng Tinh S��ng","1")
	
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

----------------------------------��i Trang B� Tinh S��ng------------------------------------------------------
function KiemDinhTinhSuong:SelectParts()
local szTitle = "<color=green>Mu�n Ki�m ��nh Trang B� Tinh S��ng Y�u C�u:<color>\n"
szTitle = szTitle..format("<color=yellow>%-30s %s<color>\n", "V�t Ph�m", "S� L��ng")
szTitle = szTitle..format("<color=red>%-30s %s<color>\n", "B�o R��ng Tinh S��ng", "1")
szTitle = szTitle..format("<color=red>%-30s %s<color>\n", "KNB ", "1")
szTitle = szTitle..format("<bclr=blue>%s %s<bclr>", GetName(), "H�y Ch�n Lo�i Trang B� Mu�n Ki�m ��nh:")
CreateNewSayEx(szTitle, %tbDialogOpt)
end

for i=1, getn(tbFormulaList_KiemDinhTinhSuong) do
	tbFormulaList_KiemDinhTinhSuong[i].tbProduct = tbEquip_TinhSuong[i]
	local p = KiemDinhTinhSuong:new(tbFormulaList_KiemDinhTinhSuong[i], "KiemDinhTinhSuong", INVENTORY_ROOM.room_giveitem)
	local szOpt = format("��i %s", tbFormulaList_KiemDinhTinhSuong[i].szName)
	tinsert(tbDialogOpt, {szOpt, p.ComposeGiveUI, {p}})
end
tinsert(tbDialogOpt, {"H�y B� "})
--=====================================================================================================--
--pEventType:Reg("Th� r�n", "Ki�m ��nh B�o R��ng Tinh S��ng", KiemDinhTinhSuong.SelectParts, {KiemDinhTinhSuong})
--=====================================================================================================--