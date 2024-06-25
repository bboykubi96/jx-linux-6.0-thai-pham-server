Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
------------------------------------------------------------------------------------------
tbQuyNguyenMinhPhuong = tbActivityCompose:new()
tbQuyNguyenMinhPhuong.bAccessBindItem = 0

tbQuyNguyenMinhPhuongList = {
	[1]= {szName="Minh Ph­îng H¹ng Liªn", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="Minh Ph­îng Kh«i",   nStone = 1, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="Minh Ph­îng Th­îng Giíi ChØ", nStone = 1, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="Minh Ph­îng Hé UyÓn", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="Minh Ph­îng Yªu §¸i", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="Minh Ph­îng Y Phôc",   nStone = 1, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="Minh Ph­îng Vò KhÝ", nStone = 1, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="Minh Ph­îng Hµi",   nStone = 1, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="Minh Ph­îng Béi",   nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="Minh Ph­îng H¹ Giíi ChØ", nStone = 1, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbQuyNguyenMinhPhuong:ComposeGiveUI()
	local szTitle = format("%s","Quy Nguyªn Minh Ph­îng")
	local strDesc = format("%-18s %s\n","VËt PhÈm","Sè L­îng")
	strDesc = strDesc..format("%-22s %s\n","Trang BÞ Minh Ph­îng","1")
	strDesc = strDesc..format("%-22s %s","Quy Nguyªn Phï","1")
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbQuyNguyenMinhPhuong:Compose(nComposeCount)
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
			if (nEqIndex >= IDX_MinhPhuong_nStart and nEqIndex <= IDX_MinhPhuong_nEnd) then
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
				
				nEquType = mod(nEqIndex - IDX_MinhPhuong_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng­¬i ch­a ®Æt trang bÞ Minh Ph­îng nµo vµo ®©y c¶.")
		return 0	
	end
		
	local nFreeItemCellLimit = tbQuyNguyenMinhPhuongList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbQuyNguyenMinhPhuongList[nEquType].nWidth ~= 0 and tbQuyNguyenMinhPhuongList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbQuyNguyenMinhPhuongList[nEquType].nWidth, tbQuyNguyenMinhPhuongList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, tbQuyNguyenMinhPhuongList[nEquType].nWidth, tbQuyNguyenMinhPhuongList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "Quy Nguyªn Phï", tbProp = {6,1,IDX_QuyNguyenPhu,1,0,0}, nCount = tbQuyNguyenMinhPhuongList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbQuyNguyenMinhPhuongList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>Quy Nguyªn Phï mµ ng­¬i ®Æt vµo kh«ng ®ñ. <color>"
		Talk(1, "", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_MinhPhuong_nStart)/10) + 1
	local tbProduct = BaoRuongMinhPhuong[nEquType][nIdx]
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

function QuyNguyenMinhPhuong()
	local strDesc = "<color=green>Muèn Quy Nguyªn Trang BÞ Minh Ph­îng Yªu CÇu:<color>\n"
	strDesc = strDesc..format("<color=yellow>%-30s %s<color>\n", "VËt PhÈm", "Sè L­îng")
	strDesc = strDesc..format("<color=red>%-30s %s<color>\n", "Trang BÞ Minh Ph­îng", "1")
	strDesc = strDesc..format("<color=red>%-30s %s<color>\n", "Quy Nguyªn Phï", "1")
	strDesc = strDesc..format("<bclr=blue>%s %s<bclr>\n", GetName(), "H·y Chän Trang BÞ Muèn Quy Nguyªn")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang bÞ Minh Ph­îng", tbProp = {0, {IDX_MinhPhuong_nStart, IDX_MinhPhuong_nEnd}}, nQuality = 1},
			{szName = "Ngò Linh Quy Nguyªn Phï", tbProp = {6,1,IDX_QuyNguyenPhu,1,0,0},nCount = 1},
		},
		tbProduct = {szName="B¶o R­¬ng Minh Ph­îng", tbProp={0, {IDX_BaoRuongMinhPhuong_Start, IDX_BaoRuongMinhPhuong_nEnd}}},
	}
	local p = tbQuyNguyenMinhPhuong:new(tbMate, "tbQuyNguyenMinhPhuong", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"X¸c NhËn", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"Hñy bá "})
	CreateNewSayEx(strDesc, tbOpt);
end
