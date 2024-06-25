IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
-------------------------------------------------------------------------------
local tbDialogOpt = {}
CheTaoAnhHao = tbActivityCompose:new()
CheTaoAnhHao.bAccessBindItem = 1
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CommonMaterial_CheTaoAnhHao = {
	{szName="Anh H�o L�nh",tbProp={6,1,5443,1,0,0},nCount=1},
	{szName="Ng�n L��ng", nJxb=1, nCount = 400000000},
}
---------------------------------------------------------------------------------------------
AdditiveMaterial_CheTaoAnhHao = {
	{szName="Anh H�o Th�ch",tbProp={6,1,5448,1,0,0},nSuccessRate=5,nMaxSuccessRate=20},
}
---------------------------------------------------------------------------------------------------
tbFormulaList_CheTaoAnhHao = {
	[1] = 
	{
		szName = "Anh H�o H�ng Li�n",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� Anh H�o H�ng Li�n", tbProp = {6,1,5580}, nSuccessRate = 20, nMaxSuccessRate = 20},
		},				
		nWidth = 2,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[2] = 
	{				
		szName = "Anh H�o Kh�i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� Anh H�o Kh�i", tbProp = {6,1,5581}, nSuccessRate = 20, nMaxSuccessRate = 20},		
		},
		nWidth = 2,
		nHeight = 2,
		nFreeItemCellLimit = 1,		
	},
	[3] = 
	{
		szName = "Anh H�o Th��ng Gi�i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� Anh H�o Th��ng Gi�i", tbProp = {6,1,5582}, nSuccessRate = 20, nMaxSuccessRate = 20},			
		},		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[4] = 
	{
		szName = "Anh H�o H� Uy�n",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� Anh H�o H� Uy�n", tbProp = {6,1,5583}, nSuccessRate = 20, nMaxSuccessRate = 20},			
		},		
		
		nWidth = 1,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[5] = 
	{
		szName = "Anh H�o Y�u ��i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� Anh H�o Y�u ��i", tbProp = {6,1,5584}, nSuccessRate = 20, nMaxSuccessRate = 20},			
		},
		nWidth = 2,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
	[6] = 
	{
		szName = "Anh H�o Y",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� Anh H�o Y", tbProp = {6,1,5585}, nSuccessRate = 20, nMaxSuccessRate = 20},			
		},		
		nWidth = 2,
		nHeight = 3,
		nFreeItemCellLimit = 1,
	},
	[7] = 
	{
		szName = "Anh H�o V� Kh�",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� Anh H�o V� Kh�", tbProp = {6,1,5586}, nSuccessRate = 20, nMaxSuccessRate = 20},		
		},		
		
		nWidth = 2,
		nHeight = 4,
		nFreeItemCellLimit = 1,		
	},
	[8] = 
	{
		szName = "Anh H�o H�i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� Anh H�o H�i", tbProp = {6,1,5587}, nSuccessRate = 20, nMaxSuccessRate = 20},		
		},			
		
		nWidth = 2,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[9] = 
	{
		szName = "Anh H�o B�i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� Anh H�o B�i", tbProp = {6,1,5588}, nSuccessRate = 20, nMaxSuccessRate = 20},		
		},				
		
		nWidth = 1,
		nHeight = 2,
		nFreeItemCellLimit = 1,
	},
	[10] = 
	{
		szName = "Anh H�o H� Gi�i",
		tbSpecialMaterial = 
		{
			{szName = "�� Ph� Anh H�o H� Gi�i", tbProp = {6,1,5589}, nSuccessRate = 20, nMaxSuccessRate = 20},		
		},		

		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	},
}
---------------------------------------------------------------------------------------------------------------------------------------
function CheTaoAnhHao:GetComposeRate()
	local tbRoomItems = self:GetRoomItems(self.nRoomType)
	local nRate = self:CalcRate(%AdditiveMaterial_CheTaoAnhHao ,tbRoomItems)
	local tbSpecialMaterial = self.tbFormula.tbSpecialMaterial
	nRate = nRate + self:CalcRate(tbSpecialMaterial ,tbRoomItems)
	return nRate
end

function CheTaoAnhHao:CalcRate(tbAdditive, tbRoomItems)	
	
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

function CheTaoAnhHao:CheckItem(tbItem ,nItemIndex)
	if IsMyItem(nItemIndex) ~= 1 then
		return
	end
	local tbRecItem = self:MakeItem(nItemIndex)
	if tbRecItem.nQuality == 1 then
		--if GetItemBindState(nItemIndex) ~= 0 then
		--	return
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

function CheTaoAnhHao:ConsumeAdditive(tbAdditive, szLogTitle)
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
----------------------------------------------------------------------------Ki�m Tra Nguy�n Li�u V� L�y Nguy�n Li�u----------------------------------------------------------------------------------------------------
function CheTaoAnhHao:Compose(nProductId)
	local tbProduct = self.tbFormula.tbProduct[nProductId]
	local tbGoldEquip = self.tbFormula.tbGoldEquip[nProductId]
	local tbGoldEquipEx = self.tbFormula.tbGoldEquipEx[nProductId]
	
	if not tbProduct then
		return 
	end
	
	local nFreeItemCellLimit = 1
	if self.tbFormula.nWidth ~= 0 and self.tbFormula.nHeight ~= 0 and CountFreeRoomByWH(self.tbFormula.nWidth, self.tbFormula.nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, self.tbFormula.nWidth, self.tbFormula.nHeight))
		return 0
	end

	local nSuccessRate = self:GetComposeRate()
	
	local szFailMsg = "<color=red>"..myplayersex().." Mang Nguy�n Li�u Kh�ng �� R�i<color>"
	if self:CheckMaterial(%CommonMaterial_CheTaoAnhHao, 1) ~=1 then
		Talk(1,"", szFailMsg)
		return 0;
	end

	if self:CheckMaterial(self.tbFormula.tbSpecialMaterial, 1) ~=1 then
		Talk(1, "", szFailMsg)
		return 0;
	end
	
	if self:CheckMaterial({tbGoldEquip}, 1) ~= 1 and self:CheckMaterial({tbGoldEquipEx}, 1) ~= 1 then
		Talk(1, "", szFailMsg)
		return 0;
	end
	
	
	self:ConsumeMaterial(%CommonMaterial_CheTaoAnhHao, 1, self.szLogTitle)			--L�y Nguy�n Li�u
	self:ConsumeAdditive(self.tbFormula.tbSpecialMaterial, self.szLogTitle)			--L�y �� Ph�
	self:ConsumeAdditive(%AdditiveMaterial_CheTaoAnhHao, self.szLogTitle)				--L�y V�t Ph�m T�ng T� L� %

	if random(1, 100) > nSuccessRate then
		Msg2Player("Th�t ��ng Ti�c Ch� T�o �� Th�t B�i")
		return 0
	end
	
	if self:ConsumeMaterial({tbGoldEquip}, 1, self.szLogTitle) ~= 1 then				--L�y Trang B� Khi �p Th�nh C�ng
		self:ConsumeMaterial({tbGoldEquipEx}, 1, self.szLogTitle)
	end
	
	tbAwardTemplet:Give(tbProduct, 1, {self.szLogTitle})
	return 1;
end
--------------------------------------------L�a Ch�n Trang B� Mu�n Ch� T�o-----------------------------------------------------------------------------------------------------------------
function CheTaoAnhHao:SelectEquip(nId, nCount)
	local szMsg = format("%s! H�y L�a Ch�n M�t %s", myplayersex(), self.tbFormula.szName)
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
		tinsert(tbOpt, {"Trang tr��c", self.SelectEquip, {self, nId-nCount, nCount}})
	end
	if nEndId < nProductCount then
		tinsert(tbOpt, {"Trang k�", self.SelectEquip, {self, nId+nCount, nCount}})
	end
	tinsert(tbOpt, {"H�y B�"})
	CreateNewSayEx(szMsg, tbOpt)
end
---------------------------------------------Ki�m Tra T� L� %----------------------------------------------------------------------------------------------------------------------------
function CheTaoAnhHao:GiveUIOk(nCount)
	local tbMaterial = self.tbFormula.tbMaterial
	local tbAdditive = self.tbFormula.tbAdditive
	local szFailMsg = "<color=red>"..myplayersex().." Mang Nguy�n Li�u Kh�ng �� R�i<color>"

	if self:CheckMaterial(%CommonMaterial_CheTaoAnhHao, 1) ~=1 then
		Talk(1, "", szFailMsg)
		return 0;
	end

	if self:CheckMaterial(self.tbFormula.tbSpecialMaterial, 1) ~= 1 then
		Talk(2, "", szFailMsg, self.tbFormula.tbSpecialMaterial[1].szName)
		return 0;
	end
	
	local nSuccessRate = self:GetComposeRate()
	local szMsg = format("��t nguy�n li�u v�o nh�n ���c t� l� th�nh c�ng l�%d%%, ��i hi�p c� mu�n ti�p t�c ch� t�o kh�ng?", nSuccessRate)
	if nSuccessRate > 100 then
		szMsg = "T� l� th�nh c�ng v��t qu� 100% s� l�ng ph� nguy�n li�u c�a ��i hi�p, ng��i c� mu�n ti�p t�c ch� kh�ng?"
	end
	
	local tbOpt = {
		{"Ti�p T�c Ch� T�o", self.SelectEquip, {self, 1, 5}},
		{"��t V�o L�n N�a", self.ComposeGiveUI, {self}},
		{"H�y B�"},
	}
	CreateNewSayEx(szMsg, tbOpt)
end
----------------------------------------------Nguy�n Li�u Y�u C�u--------------------------------------------------------------------
function CheTaoAnhHao:ComposeGiveUI()
	local szTitle = format("��i %s", self.tbFormula.szName)
	local szContent = self:GetMaterialList(%CommonMaterial_CheTaoAnhHao)
	
	szContent = gsub(szContent, "<color=?%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = format("%s<enter>%-17s %s", szContent, "Trang B� Di�u D��ng","1")
	szContent = format("%s<enter>%-17s %s", szContent, "�� Ph� Anh H�o","1/10%")
	szContent = format("%s<enter>%-17s %s", szContent, "Anh H�o Th�ch","1 > 4")
	
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end
------------------------------------------------Ch� T�o Trang B� Anh H�o-----------------------------------------------------------
function CheTaoAnhHao:SelectParts()
local szTitle = "<color=green>H�p Th�nh Trang B� Anh H�o Y�u C�u:<color>\n"
szTitle = szTitle..format("<color=yellow>%-15s%-22s %s<color>\n", "Nguy�n Li�u", "S� L��ng T�i Thi�u", "S� L��ng T�i �a")
szTitle = szTitle..format("<color=red>%-22s %s<color>\n", "Anh H�o L�nh", "1")
szTitle = szTitle..format("<color=red>%-22s %s<color>\n", "�� Ph� Anh H�o", "1/10%")
szTitle = szTitle..format("<color=red>%-22s %s<color>\n", "Trang B� Di�u D��ng", "1")
szTitle = szTitle..format("<color=red>%-22s %-22s %s<color>\n", "Anh H�o Th�ch", "1/5%", "4/20%")
szTitle = szTitle..format("<color=red>%-22s %s<color>\n", "Ng�n L��ng", "40000 V�n")
szTitle = szTitle..format("<bclr=blue>%s %s<bclr>", GetName(), "H�y Ch�n Lo�i Trang B� Mu�n Ch� T�o:")
CreateNewSayEx(szTitle, %tbDialogOpt)
end

for i=1, getn(tbFormulaList_CheTaoAnhHao) do
	tbFormulaList_CheTaoAnhHao[i].tbProduct = tbEquip_AnhHao[i]			--Trang B� Goi Ra
	tbFormulaList_CheTaoAnhHao[i].tbGoldEquip = tbEquip_DieuDuong[i]		--Trang B� Thu Ve
	tbFormulaList_CheTaoAnhHao[i].tbGoldEquipEx = tbEquip_DieuDuongMax[i]		--Trang B� Max Thu Ve
	
	local p = CheTaoAnhHao:new(tbFormulaList_CheTaoAnhHao[i], "CheTaoAnhHao", INVENTORY_ROOM.room_giveitem)
	local szOpt = format("Ch� T�o: %s", tbFormulaList_CheTaoAnhHao[i].szName)
	tinsert(tbDialogOpt, {szOpt, p.ComposeGiveUI, {p}})
end
tinsert(tbDialogOpt, {"H�y B� "})
--==================================================================================================================--
--pEventType:Reg("Th� r�n","Ch� T�o Trang B� Anh H�o", CheTaoAnhHao.SelectParts, {CheTaoAnhHao})
--==================================================================================================================--