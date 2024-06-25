Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
--------------------------------------------------------------------
tbTrungLuyenTinhSuong = tbActivityCompose:new()

tbTrungLuyenTinhSuongList = {
	[1]= {szName="Tinh S­¬ng H¹ng Liªn", nStone = 10, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="Tinh S­¬ng Kh«i",   nStone = 20, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="Tinh S­¬ng Th­îng Giíi ChØ", nStone = 20, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="Tinh S­¬ng Hé UyÓn", nStone = 10, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="Tinh S­¬ng Yªu §¸i", nStone = 20, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="Tinh S­¬ng Y Phôc",   nStone = 30, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="Tinh S­¬ng Vò KhÝ", nStone = 40, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="Tinh S­¬ng Hµi",   nStone = 30, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="Tinh S­¬ng Béi",   nStone = 30, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="Tinh S­¬ng H¹ Giíi ChØ", nStone = 20, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbTrungLuyenTinhSuong:ComposeGiveUI()
	local szTitle = format("%s","Trïng LuyÖn Tinh S­¬ng")
	local strDesc = format("%-18s %s\n","VËt PhÈm","Sè L­îng")
	strDesc = strDesc..format("%-22s %s\n","Tinh S­¬ng Kh«i","20")
	strDesc = strDesc..format("%-22s %s\n","Tinh S­¬ng Y Phôc","30")
	strDesc = strDesc..format("%-22s %s\n","Tinh S­¬ng Hµi","30")
	strDesc = strDesc..format("%-22s %s\n","Tinh S­¬ng Yªu §¸i0","20")
	strDesc = strDesc..format("%-22s %s\n","Tinh S­¬ng Hé UyÓn","10")
	strDesc = strDesc..format("%-22s %s\n","Tinh S­¬ng Ngäc Béi","30")
	strDesc = strDesc..format("%-22s %s\n","Tinh S­¬ng H¹ng Liªn","10")
	strDesc = strDesc..format("%-22s %s\n","Tinh S­¬ng Giíi ChØ","20")
	strDesc = strDesc..format("%-22s %s","Tinh S­¬ng Vò KhÝ","40")
	
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbTrungLuyenTinhSuong:Compose(nComposeCount)
	nComposeCount = nComposeCount or 1
	if type(self.tbFormula.pLimitFun) == "function" then
		if self.tbFormula:pLimitFun(nComposeCount) ~= 1 then
			return 0
		end
	end
	
	local tbRoomItems = self:GetRoomItems(self.nRoomType)
	local tbGoldEquip = nil
	local nEquType = 0
	local nEqIndex = 0
	for i = 1, getn(tbRoomItems) do 
		nItemQuality = GetItemQuality(tbRoomItems[i])
		if nItemQuality == 1 then
			nEqIndex = GetGlodEqIndex(tbRoomItems[i])
			if (nEqIndex >= IDX_TinhSuong_nStart and nEqIndex <= IDX_TinhSuong_nEnd) then
				local nBindState = GetItemBindState(tbRoomItems[i])
				if nBindState ~= 0 then
					Say("Trang bÞ cña ng­¬i ®ang trong tr¹ng th¸i khãa, kh«ng thÓ trïng luyÖn.")
					return 0
				end
				
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang bÞ cña ng­¬i ®· bÞ h­ h¹i kh«ng thÓ trïng luyÖn.")
					return 0
				end
				
				nEquType = mod(nEqIndex - IDX_TinhSuong_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng­¬i Ch­a §Æt §óng Trang BÞ Tinh S­¬ng")
		return 0	
	end
		
	local nFreeItemCellLimit = tbTrungLuyenTinhSuongList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbTrungLuyenTinhSuongList[nEquType].nWidth ~= 0 and tbTrungLuyenTinhSuongList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbTrungLuyenTinhSuongList[nEquType].nWidth, tbTrungLuyenTinhSuongList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, tbTrungLuyenTinhSuongList[nEquType].nWidth, tbTrungLuyenTinhSuongList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "Xu ", tbProp = {4,417,1,1,0,0}, nCount = tbTrungLuyenTinhSuongList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbTrungLuyenTinhSuongList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>Trïng LuyÖn Ngäc mµ ng­¬i ®Æt vµo kh«ng ®ñ. <color>"
		Talk(1,"", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_TinhSuong_nStart)/10) + 1
	local tbProduct = tbEquip_TinhSuong[nEquType][nIdx]
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

function TrungLuyenTinhSuong()
	local strDesc = "<color=green>Muèn Trïng LuyÖn <color=yellow>Trang BÞ Tinh S­¬ng<color> Yªu CÇu:<color>\n"
	strDesc = strDesc..format("\t\t\t%-30s %s\n", "Trang BÞ Tinh S­¬ng", " Xu")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S­¬ng Kh«i","20")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S­¬ng Y Phôc","30")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S­¬ng Hµi","30")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S­¬ng Yªu §¸i","20")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S­¬ng Hé UyÓn","10")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S­¬ng Ngäc Béi","30")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S­¬ng H¹ng Liªn","10")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S­¬ng Giíi ChØ","20")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S­¬ng Vò KhÝ","40")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang bÞ Tinh S­¬ng", tbProp = {0, {IDX_TinhSuong_nStart, IDX_TinhSuong_nEnd}}, nQuality = 1},
			{szName = "Xu", tbProp = {4,417,1,1,0,0}},
		},
		tbProduct = {szName="Trang bÞ Tinh S­¬ng", tbProp={0, {IDX_TinhSuong_nStart, IDX_TinhSuong_nEnd}}},
	}
	local p = tbTrungLuyenTinhSuong:new(tbMate, "tbTrungLuyenTinhSuong", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"B¾t §Çu Trïng LuyÖn", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"Hñy bá "})
	CreateNewSayEx(strDesc, tbOpt);
end
