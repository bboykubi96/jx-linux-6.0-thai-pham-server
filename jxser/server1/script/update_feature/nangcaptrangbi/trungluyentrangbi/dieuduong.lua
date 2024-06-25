Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
--------------------------------------------------------------------
tbTrungLuyenDieuDuong = tbActivityCompose:new()

tbTrungLuyenDieuDuongList = {
	[1]= {szName="Di÷u D≠¨ng Hπng Li™n", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="Di÷u D≠¨ng Kh´i",   nStone = 2, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="Di÷u D≠¨ng Th≠Óng GiÌi Chÿ", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="Di÷u D≠¨ng HÈ Uy”n", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="Di÷u D≠¨ng Y™u ß∏i", nStone = 2, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="Di÷u D≠¨ng Y PhÙc",   nStone = 3, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="Di÷u D≠¨ng VÚ Kh›", nStone = 4, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="Di÷u D≠¨ng Hµi",   nStone = 3, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="Di÷u D≠¨ng BÈi",   nStone = 3, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="Di÷u D≠¨ng Hπ GiÌi Chÿ", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbTrungLuyenDieuDuong:ComposeGiveUI()
	local szTitle = format("%s","TrÔng Luy÷n Di÷u D≠¨ng")
	local strDesc = format("%-18s %s\n","VÀt Ph»m","SË L≠Óng")
	strDesc = strDesc..format("%-22s %s\n","Di÷u D≠¨ng Kh´i","2")
	strDesc = strDesc..format("%-22s %s\n","Di÷u D≠¨ng Y PhÙc","3")
	strDesc = strDesc..format("%-22s %s\n","Di÷u D≠¨ng Hµi","3")
	strDesc = strDesc..format("%-22s %s\n","Di÷u D≠¨ng Y™u ß∏i","2")
	strDesc = strDesc..format("%-22s %s\n","Di÷u D≠¨ng HÈ Uy”n","1")
	strDesc = strDesc..format("%-22s %s\n","Di÷u D≠¨ng Ng‰c BÈi","3")
	strDesc = strDesc..format("%-22s %s\n","Di÷u D≠¨ng Hπng Li™n","1")
	strDesc = strDesc..format("%-22s %s\n","Di÷u D≠¨ng GiÌi Chÿ","2")
	strDesc = strDesc..format("%-22s %s","Di÷u D≠¨ng VÚ Kh›","4")
	
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbTrungLuyenDieuDuong:Compose(nComposeCount)
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
			if (nEqIndex >= IDX_DieuDuong_nStart and nEqIndex <= IDX_DieuDuong_nEnd) then
				local nBindState = GetItemBindState(tbRoomItems[i])
				if nBindState ~= 0 then
					Say("Trang bﬁ cÒa ng≠¨i Æang trong trπng th∏i kh„a, kh´ng th” trÔng luy÷n.")
					return 0
				end
				
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang bﬁ cÒa ng≠¨i Æ∑ bﬁ h≠ hπi kh´ng th” trÔng luy÷n.")
					return 0
				end
				
				nEquType = mod(nEqIndex - IDX_DieuDuong_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng≠¨i Ch≠a ß∆t ßÛng Trang Bﬁ Di÷u D≠¨ng")
		return 0	
	end
		
	local nFreeItemCellLimit = tbTrungLuyenDieuDuongList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbTrungLuyenDieuDuongList[nEquType].nWidth ~= 0 and tbTrungLuyenDieuDuongList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbTrungLuyenDieuDuongList[nEquType].nWidth, tbTrungLuyenDieuDuongList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("ß” b∂o Æ∂m tµi s∂n cÒa Æπi hi÷p, xin h∑y Æ” trËng %d %dx%d hµnh trang", nFreeItemCellLimit, tbTrungLuyenDieuDuongList[nEquType].nWidth, tbTrungLuyenDieuDuongList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "Xu ", tbProp = {4,417,1,1,0,0},  nCount = tbTrungLuyenDieuDuongList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbTrungLuyenDieuDuongList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>TrÔng Luy÷n Ng‰c mµ ng≠¨i Æ∆t vµo kh´ng ÆÒ. <color>"
		Talk(1,"", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_DieuDuong_nStart)/10) + 1
	local tbProduct = tbEquip_DieuDuong[nEquType][nIdx]
	local tbMaterial = {{szName = tbProduct.szName, tbProp = tbGoldEquip, nCount = 1}, tbItem}

	if self:ConsumeMaterial(tbMaterial, nComposeCount, self.szLogTitle) ~= 1 then
		Msg2Player("Ch’ tπo th t bπi, m t Æi mÈt sË nguy™n li÷u.")
		return 0;
	end
	
	tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount)
	
	if type(self.tbFormula.pProductFun) == "function" then
		self.tbFormula:pProductFun(nComposeCount)
	end
	return 1;
end

function TrungLuyenDieuDuong()
	local strDesc = "<color=green>MuËn TrÔng Luy÷n <color=yellow>Trang Bﬁ Di÷u D≠¨ng<color> Y™u C«u:<color>\n"
	strDesc = strDesc..format("\t\t\t%-30s %s\n", "Trang Bﬁ Di÷u D≠¨ng", "Xu")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Di÷u D≠¨ng Kh´i","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Di÷u D≠¨ng Y PhÙc","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Di÷u D≠¨ng Hµi","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Di÷u D≠¨ng Y™u ß∏i","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Di÷u D≠¨ng HÈ Uy”n","1")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Di÷u D≠¨ng Ng‰c BÈi","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Di÷u D≠¨ng Hπng Li™n","1")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Di÷u D≠¨ng GiÌi Chÿ","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Di÷u D≠¨ng VÚ Kh›","4")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang bﬁ Di÷u D≠¨ng", tbProp = {0, {IDX_DieuDuong_nStart, IDX_DieuDuong_nEnd}}, nQuality = 1},
			{szName = "Xu", tbProp = {4,417,1,1,0,0}},
		},
		tbProduct = {szName="Trang bﬁ Di÷u D≠¨ng", tbProp={0, {IDX_DieuDuong_nStart, IDX_DieuDuong_nEnd}}},
	}
	local p = tbTrungLuyenDieuDuong:new(tbMate, "tbTrungLuyenDieuDuong", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"Bæt ß«u TrÔng Luy÷n", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"HÒy b· "})
	CreateNewSayEx(strDesc, tbOpt);
end
