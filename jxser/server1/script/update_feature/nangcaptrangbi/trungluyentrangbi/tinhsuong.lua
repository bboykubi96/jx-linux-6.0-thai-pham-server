Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
--------------------------------------------------------------------
tbTrungLuyenTinhSuong = tbActivityCompose:new()

tbTrungLuyenTinhSuongList = {
	[1]= {szName="Tinh S��ng H�ng Li�n", nStone = 10, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="Tinh S��ng Kh�i",   nStone = 20, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="Tinh S��ng Th��ng Gi�i Ch�", nStone = 20, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="Tinh S��ng H� Uy�n", nStone = 10, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="Tinh S��ng Y�u ��i", nStone = 20, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="Tinh S��ng Y Ph�c",   nStone = 30, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="Tinh S��ng V� Kh�", nStone = 40, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="Tinh S��ng H�i",   nStone = 30, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="Tinh S��ng B�i",   nStone = 30, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="Tinh S��ng H� Gi�i Ch�", nStone = 20, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbTrungLuyenTinhSuong:ComposeGiveUI()
	local szTitle = format("%s","Tr�ng Luy�n Tinh S��ng")
	local strDesc = format("%-18s %s\n","V�t Ph�m","S� L��ng")
	strDesc = strDesc..format("%-22s %s\n","Tinh S��ng Kh�i","20")
	strDesc = strDesc..format("%-22s %s\n","Tinh S��ng Y Ph�c","30")
	strDesc = strDesc..format("%-22s %s\n","Tinh S��ng H�i","30")
	strDesc = strDesc..format("%-22s %s\n","Tinh S��ng Y�u ��i0","20")
	strDesc = strDesc..format("%-22s %s\n","Tinh S��ng H� Uy�n","10")
	strDesc = strDesc..format("%-22s %s\n","Tinh S��ng Ng�c B�i","30")
	strDesc = strDesc..format("%-22s %s\n","Tinh S��ng H�ng Li�n","10")
	strDesc = strDesc..format("%-22s %s\n","Tinh S��ng Gi�i Ch�","20")
	strDesc = strDesc..format("%-22s %s","Tinh S��ng V� Kh�","40")
	
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
					Say("Trang b� c�a ng��i �ang trong tr�ng th�i kh�a, kh�ng th� tr�ng luy�n.")
					return 0
				end
				
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang b� c�a ng��i �� b� h� h�i kh�ng th� tr�ng luy�n.")
					return 0
				end
				
				nEquType = mod(nEqIndex - IDX_TinhSuong_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng��i Ch�a ��t ��ng Trang B� Tinh S��ng")
		return 0	
	end
		
	local nFreeItemCellLimit = tbTrungLuyenTinhSuongList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbTrungLuyenTinhSuongList[nEquType].nWidth ~= 0 and tbTrungLuyenTinhSuongList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbTrungLuyenTinhSuongList[nEquType].nWidth, tbTrungLuyenTinhSuongList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, tbTrungLuyenTinhSuongList[nEquType].nWidth, tbTrungLuyenTinhSuongList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "Xu ", tbProp = {4,417,1,1,0,0}, nCount = tbTrungLuyenTinhSuongList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbTrungLuyenTinhSuongList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>Tr�ng Luy�n Ng�c m� ng��i ��t v�o kh�ng ��. <color>"
		Talk(1,"", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_TinhSuong_nStart)/10) + 1
	local tbProduct = tbEquip_TinhSuong[nEquType][nIdx]
	local tbMaterial = {{szName = tbProduct.szName, tbProp = tbGoldEquip, nCount = 1}, tbItem}

	if self:ConsumeMaterial(tbMaterial, nComposeCount, self.szLogTitle) ~= 1 then
		Msg2Player("Ch� t�o th�t b�i, m�t �i m�t s� nguy�n li�u.")
		return 0;
	end
	
	tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount)
	
	if type(self.tbFormula.pProductFun) == "function" then
		self.tbFormula:pProductFun(nComposeCount)
	end
	return 1;
end

function TrungLuyenTinhSuong()
	local strDesc = "<color=green>Mu�n Tr�ng Luy�n <color=yellow>Trang B� Tinh S��ng<color> Y�u C�u:<color>\n"
	strDesc = strDesc..format("\t\t\t%-30s %s\n", "Trang B� Tinh S��ng", " Xu")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S��ng Kh�i","20")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S��ng Y Ph�c","30")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S��ng H�i","30")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S��ng Y�u ��i","20")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S��ng H� Uy�n","10")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S��ng Ng�c B�i","30")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S��ng H�ng Li�n","10")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S��ng Gi�i Ch�","20")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Tinh S��ng V� Kh�","40")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang b� Tinh S��ng", tbProp = {0, {IDX_TinhSuong_nStart, IDX_TinhSuong_nEnd}}, nQuality = 1},
			{szName = "Xu", tbProp = {4,417,1,1,0,0}},
		},
		tbProduct = {szName="Trang b� Tinh S��ng", tbProp={0, {IDX_TinhSuong_nStart, IDX_TinhSuong_nEnd}}},
	}
	local p = tbTrungLuyenTinhSuong:new(tbMate, "tbTrungLuyenTinhSuong", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"B�t ��u Tr�ng Luy�n", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"H�y b� "})
	CreateNewSayEx(strDesc, tbOpt);
end
