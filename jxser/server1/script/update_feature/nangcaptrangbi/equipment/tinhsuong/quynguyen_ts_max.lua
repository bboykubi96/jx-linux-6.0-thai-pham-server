Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
------------------------------------------------------------------------------------------
tbQuyNguyenTinhSuongMax = tbActivityCompose:new()
tbQuyNguyenTinhSuongMax.bAccessBindItem = 0

tbQuyNguyenTinhSuongMaxList = {
	[1]= {szName="Tinh S­¬ng H¹ng Liªn", nStone = 5, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="Tinh S­¬ng Kh«i",   nStone = 5, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="Tinh S­¬ng Th­îng Giíi ChØ", nStone = 5, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="Tinh S­¬ng Hé UyÓn", nStone = 5, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="Tinh S­¬ng Yªu §¸i", nStone = 5, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="Tinh S­¬ng Y Phôc",   nStone = 5, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="Tinh S­¬ng Vò KhÝ", nStone = 5, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="Tinh S­¬ng Hµi",   nStone = 5, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="Tinh S­¬ng Béi",   nStone = 5, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="Tinh S­¬ng H¹ Giíi ChØ", nStone = 5, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbQuyNguyenTinhSuongMax:ComposeGiveUI()
	local szTitle = format("%s","Quy Nguyªn Tinh S­¬ng")
	local strDesc = format("%-18s %s\n","VËt PhÈm","Sè L­îng")
	strDesc = strDesc..format("%-22s %s\n","Trang BÞ Tinh S­¬ng","1")
	strDesc = strDesc..format("%-22s %s","KNB ","5")
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbQuyNguyenTinhSuongMax:Compose(nComposeCount)
	nComposeCount = nComposeCount or 1
	if type(self.tbFormula.pLimitFun) == "function" then
		if self.tbFormula:pLimitFun(nComposeCount) ~= 1 then
			return 0
		end
	end
	
	local tbRoomItems =  self:GetRoomItems(self.nRoomType)
	local tbGoldEquip = nil
	local nEquType = 0
	local nEqIndex = 0
	for i = 1, getn(tbRoomItems) do 
		nItemQuality = GetItemQuality(tbRoomItems[i])
		if nItemQuality == 1 then
			nEqIndex = GetGlodEqIndex(tbRoomItems[i])
			if (nEqIndex >= IDX_TinhSuongMax_nStart and nEqIndex <= IDX_TinhSuongMax_nEnd) then
				local nBindState = GetItemBindState(tbRoomItems[i])
				if nBindState ~= 0 then
					Say("Trang bÞ cña ng­¬i ®ang trong tr¹ng th¸i khãa, kh«ng thÓ quy nguyªn")
					return 0
				end
				
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang bÞ cña ng­¬i ®· bÞ h­ h¹i kh«ng thÓ quy nguyªn.")
					return 0
				end
				
				nEquType = mod(nEqIndex - IDX_TinhSuongMax_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng­¬i ch­a ®Æt trang bÞ Tinh S­¬ng nµo vµo ®©y c¶.")
		return 0	
	end
		
	local nFreeItemCellLimit = tbQuyNguyenTinhSuongMaxList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbQuyNguyenTinhSuongMaxList[nEquType].nWidth ~= 0 and tbQuyNguyenTinhSuongMaxList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbQuyNguyenTinhSuongMaxList[nEquType].nWidth, tbQuyNguyenTinhSuongMaxList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, tbQuyNguyenTinhSuongMaxList[nEquType].nWidth, tbQuyNguyenTinhSuongMaxList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "KNB", tbProp = {4,1496,1,1,0,0}, nCount = tbQuyNguyenTinhSuongMaxList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbQuyNguyenTinhSuongMaxList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>Ngò Linh Quy Nguyªn Phï mµ ng­¬i ®Æt vµo kh«ng ®ñ. <color>"
		Talk(1, "", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_TinhSuongMax_nStart)/10) + 1
	local tbProduct = BaoRuongTinhSuongMax[nEquType][nIdx]
	local tbMaterial = {{szName = tbProduct.szName, tbProp = tbGoldEquip, nCount = 1}, tbItem}
	if self:ConsumeMaterial(tbMaterial, nComposeCount, self.szLogTitle) ~= 1 then
		Msg2Player("ChÕ t¹o thÊt b¹i, mÊt ®i mét sè nguyªn liÖu.")
		return 0;
	end
	
	tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount)
	if type(self.tbFormula.pProductFun) == "function" then
		self.tbFormula:pProductFun(nComposeCount)
	end
	return 1;
end

function QuyNguyenTinhSuongMax()
	local strDesc = "<color=green>Muèn Quy Nguyªn Trang BÞ Tinh S­¬ng Yªu CÇu:<color>\n"
	strDesc = strDesc..format("<color=yellow>%-30s %s<color>\n", "VËt PhÈm", "Sè L­îng")
	strDesc = strDesc..format("<color=red>%-30s %s<color>\n", "Trang BÞ Tinh S­¬ng", "1")
	strDesc = strDesc..format("<color=red>%-30s %s<color>\n", "KNB ", "5")
	strDesc = strDesc..format("<bclr=blue>%s %s<bclr>\n", GetName(), "H·y Chän Trang BÞ Muèn Quy Nguyªn")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang bÞ Tinh S­¬ng", tbProp = {0, {IDX_TinhSuongMax_nStart, IDX_TinhSuongMax_nEnd}}, nQuality = 1},
			{szName="KNB ",tbProp={4,1496,1,1,0,0},nCount=10},
		},
		tbProduct = {szName="B¶o R­¬ng Tinh S­¬ng", tbProp={0, {IDX_BaoRuongTinhSuongMax_Start, IDX_BaoRuongTinhSuongMax_nEnd}}},
	}
	local p = tbQuyNguyenTinhSuongMax:new(tbMate, "tbQuyNguyenTinhSuongMax", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"X¸c NhËn", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"Hñy bá "})
	CreateNewSayEx(strDesc, tbOpt);
end
