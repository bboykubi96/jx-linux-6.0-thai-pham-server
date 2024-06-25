Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
------------------------------------------------------------------------------------------
tbQuyNguyenAnhHao = tbActivityCompose:new()
tbQuyNguyenAnhHao.bAccessBindItem = 0

tbQuyNguyenAnhHaoList = {
	[1]= {szName="Anh Hµo H¹ng Liªn", nStone = 10, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="Anh Hµo Kh«i",   nStone = 10, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="Anh Hµo Th­îng Giíi ChØ", nStone = 10, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="Anh Hµo Hé UyÓn", nStone = 10, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="Anh Hµo Yªu §¸i", nStone = 10, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="Anh Hµo Y Phôc",   nStone = 10, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="Anh Hµo Vò KhÝ", nStone = 10, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="Anh Hµo Hµi",   nStone = 10, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="Anh Hµo Béi",   nStone = 10, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="Anh Hµo H¹ Giíi ChØ", nStone = 10, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbQuyNguyenAnhHao:ComposeGiveUI()
	local szTitle = format("%s","Quy Nguyªn Anh Hµo")
	local strDesc = format("%-18s %s\n","VËt PhÈm","Sè L­îng")
	strDesc = strDesc..format("%-22s %s\n","Trang BÞ Anh Hµo","1")
	strDesc = strDesc..format("%-22s %s","knb ","10")
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbQuyNguyenAnhHao:Compose(nComposeCount)
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
			if (nEqIndex >= IDX_AnhHao_nStart and nEqIndex <= IDX_AnhHao_nEnd) then
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
				
				nEquType = mod(nEqIndex - IDX_AnhHao_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng­¬i ch­a ®Æt trang bÞ Anh Hµo nµo vµo ®©y c¶.")
		return 0	
	end
		
	local nFreeItemCellLimit = tbQuyNguyenAnhHaoList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbQuyNguyenAnhHaoList[nEquType].nWidth ~= 0 and tbQuyNguyenAnhHaoList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbQuyNguyenAnhHaoList[nEquType].nWidth, tbQuyNguyenAnhHaoList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, tbQuyNguyenAnhHaoList[nEquType].nWidth, tbQuyNguyenAnhHaoList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "KNB", tbProp = {4,1496,1,1,0,0}, nCount = tbQuyNguyenAnhHaoList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbQuyNguyenAnhHaoList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>Ngò Linh Quy Nguyªn Phï mµ ng­¬i ®Æt vµo kh«ng ®ñ. <color>"
		Talk(1, "", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_AnhHao_nStart)/10) + 1
	local tbProduct = BaoRuongAnhHao[nEquType][nIdx]
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

function QuyNguyenAnhHao()
	local strDesc = "<color=green>Muèn Quy Nguyªn Trang BÞ Anh Hµo Yªu CÇu:<color>\n"
	strDesc = strDesc..format("<color=yellow>%-30s %s<color>\n", "VËt PhÈm", "Sè L­îng")
	strDesc = strDesc..format("<color=red>%-30s %s<color>\n", "Trang BÞ Anh Hµo", "1")
	strDesc = strDesc..format("<color=red>%-30s %s<color>\n", "KNB ", "10")
	strDesc = strDesc..format("<bclr=blue>%s %s<bclr>\n", GetName(), "H·y Chän Trang BÞ Muèn Quy Nguyªn")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang bÞ Anh Hµo", tbProp = {0, {IDX_AnhHao_nStart, IDX_AnhHao_nEnd}}, nQuality = 1},
			  {szName="KNB ",tbProp={4,1496,1,1,0,0},nCount=10},
		},
		tbProduct = {szName="B¶o R­¬ng Anh Hµo", tbProp={0, {IDX_BaoRuongAnhHao_Start, IDX_BaoRuongAnhHao_nEnd}}},
	}
	local p = tbQuyNguyenAnhHao:new(tbMate, "tbQuyNguyenAnhHao", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"X¸c NhËn", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"Hñy bá "})
	CreateNewSayEx(strDesc, tbOpt);
end
