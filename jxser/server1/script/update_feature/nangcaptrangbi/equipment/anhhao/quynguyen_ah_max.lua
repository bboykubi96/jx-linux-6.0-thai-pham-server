Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
------------------------------------------------------------------------------------------
tbQuyNguyenAnhHaoMax = tbActivityCompose:new()
tbQuyNguyenAnhHaoMax.bAccessBindItem = 0

tbQuyNguyenAnhHaoMaxList = {
	[1]= {szName="Anh Hµo H¹ng Liªn", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="Anh Hµo Kh«i",   nStone = 1, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="Anh Hµo Th­îng Giíi ChØ", nStone = 1, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="Anh Hµo Hé UyÓn", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="Anh Hµo Yªu §¸i", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="Anh Hµo Y Phôc",   nStone = 1, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="Anh Hµo Vò KhÝ", nStone = 1, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="Anh Hµo Hµi",   nStone = 1, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="Anh Hµo Béi",   nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="Anh Hµo H¹ Giíi ChØ", nStone = 1, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbQuyNguyenAnhHaoMax:ComposeGiveUI()
	local szTitle = format("%s","Quy Nguyªn Anh Hµo")
	local strDesc = format("%-18s %s\n","VËt PhÈm","Sè L­îng")
	strDesc = strDesc..format("%-22s %s\n","Trang BÞ Anh Hµo","1")
	strDesc = strDesc..format("%-22s %s","Quy Nguyªn Phï","1")
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbQuyNguyenAnhHaoMax:Compose(nComposeCount)
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
			if (nEqIndex >= IDX_AnhHaoMax_nStart and nEqIndex <= IDX_AnhHaoMax_nEnd) then
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
				
				nEquType = mod(nEqIndex - IDX_AnhHaoMax_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng­¬i ch­a ®Æt trang bÞ Anh Hµo nµo vµo ®©y c¶.")
		return 0	
	end
		
	local nFreeItemCellLimit = tbQuyNguyenAnhHaoMaxList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbQuyNguyenAnhHaoMaxList[nEquType].nWidth ~= 0 and tbQuyNguyenAnhHaoMaxList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbQuyNguyenAnhHaoMaxList[nEquType].nWidth, tbQuyNguyenAnhHaoMaxList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, tbQuyNguyenAnhHaoMaxList[nEquType].nWidth, tbQuyNguyenAnhHaoMaxList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "Ngò Linh Quy Nguyªn Phï", tbProp = {6,1,IDX_QuyNguyenPhu,1,0,0}, nCount = tbQuyNguyenAnhHaoMaxList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbQuyNguyenAnhHaoMaxList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>Ngò Linh Quy Nguyªn Phï mµ ng­¬i ®Æt vµo kh«ng ®ñ. <color>"
		Talk(1, "", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_AnhHaoMax_nStart)/10) + 1
	local tbProduct = BaoRuongAnhHaoMax[nEquType][nIdx]
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

function QuyNguyenAnhHaoMax()
	local strDesc = "<color=green>Muèn Quy Nguyªn Trang BÞ Anh Hµo Yªu CÇu:<color>\n"
	strDesc = strDesc..format("<color=yellow>%-30s %s<color>\n", "VËt PhÈm", "Sè L­îng")
	strDesc = strDesc..format("<color=red>%-30s %s<color>\n", "Trang BÞ Anh Hµo", "1")
	strDesc = strDesc..format("<color=red>%-30s %s<color>\n", "Ngò Linh Quy Nguyªn Phï", "1")
	strDesc = strDesc..format("<bclr=blue>%s %s<bclr>\n", GetName(), "H·y Chän Trang BÞ Muèn Quy Nguyªn")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang bÞ Anh Hµo", tbProp = {0, {IDX_AnhHaoMax_nStart, IDX_AnhHaoMax_nEnd}}, nQuality = 1},
			{szName = "Ngò Linh Quy Nguyªn Phï", tbProp = {6,1,IDX_QuyNguyenPhu,1,0,0},nCount = 1},
		},
		tbProduct = {szName="B¶o R­¬ng Anh Hµo", tbProp={0, {IDX_BaoRuongAnhHaoMax_Start, IDX_BaoRuongAnhHaoMax_nEnd}}},
	}
	local p = tbQuyNguyenAnhHaoMax:new(tbMate, "tbQuyNguyenAnhHaoMax", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"X¸c NhËn", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"Hñy bá "})
	CreateNewSayEx(strDesc, tbOpt);
end
