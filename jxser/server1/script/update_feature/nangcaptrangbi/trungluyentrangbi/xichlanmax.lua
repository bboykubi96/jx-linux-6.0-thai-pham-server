Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
--------------------------------------------------------------------
tbTrungLuyenXichLanMax = tbActivityCompose:new()

tbTrungLuyenXichLanMaxList = {
	[1]= {szName="X�ch L�n H�ng Li�n", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="X�ch L�n Kh�i",   nStone = 2, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="X�ch L�n Th��ng Gi�i Ch�", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="X�ch L�n H� Uy�n", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="X�ch L�n Y�u ��i", nStone = 2, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="X�ch L�n Y Ph�c",   nStone = 3, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="X�ch L�n V� Kh�", nStone = 4, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="X�ch L�n H�i",   nStone = 3, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="X�ch L�n B�i",   nStone = 3, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="X�ch L�n H� Gi�i Ch�", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbTrungLuyenXichLanMax:ComposeGiveUI()
	local szTitle = format("%s","Tr�ng Luy�n X�ch L�n")
	local strDesc = format("%-18s %s\n","V�t Ph�m","S� L��ng")
	strDesc = strDesc..format("%-22s %s\n","X�ch L�n Kh�i","2")
	strDesc = strDesc..format("%-22s %s\n","X�ch L�n Y Ph�c","3")
	strDesc = strDesc..format("%-22s %s\n","X�ch L�n H�i","3")
	strDesc = strDesc..format("%-22s %s\n","X�ch L�n Y�u ��i","2")
	strDesc = strDesc..format("%-22s %s\n","X�ch L�n H� Uy�n","1")
	strDesc = strDesc..format("%-22s %s\n","X�ch L�n Ng�c B�i","3")
	strDesc = strDesc..format("%-22s %s\n","X�ch L�n H�ng Li�n","1")
	strDesc = strDesc..format("%-22s %s\n","X�ch L�n Gi�i Ch�","2")
	strDesc = strDesc..format("%-22s %s","X�ch L�n V� Kh�","4")
	
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbTrungLuyenXichLanMax:Compose(nComposeCount)
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
			if (nEqIndex >= IDX_XichLan_nStart and nEqIndex <= IDX_XichLan_nEnd) then
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
				
				nEquType = mod(nEqIndex - IDX_XichLan_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng��i Ch�a ��t ��ng Trang B� X�ch L�n")
		return 0	
	end
		
	local nFreeItemCellLimit = tbTrungLuyenXichLanMaxList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbTrungLuyenXichLanMaxList[nEquType].nWidth ~= 0 and tbTrungLuyenXichLanMaxList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbTrungLuyenXichLanMaxList[nEquType].nWidth, tbTrungLuyenXichLanMaxList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, tbTrungLuyenXichLanMaxList[nEquType].nWidth, tbTrungLuyenXichLanMaxList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "X�ch L�n Ng�c Tr�ng Luy�n", tbProp = {6,1,IDX_TrungLuyenNgoc_XichLan,1,0,0}, nCount = tbTrungLuyenXichLanMaxList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbTrungLuyenXichLanMaxList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>X�ch L�n Tr�ng Luy�n Ng�c m� ng��i ��t v�o kh�ng ��. <color>"
		Talk(1,"", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_XichLan_nStart)/10) + 1
	local tbProduct = tbEquip_XichLanMax[nEquType][nIdx]
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

function TrungLuyenXichLanMax()
	local strDesc = "<color=green>Mu�n Tr�ng Luy�n <color=yellow>Trang B� X�ch L�n<color> Y�u C�u:<color>\n"
	strDesc = strDesc..format("\t\t\t%-30s %s\n", "Trang B� X�ch L�n", "Ng�c Tr�ng Luy�n")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","X�ch L�n Kh�i","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","X�ch L�n Y Ph�c","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","X�ch L�n H�i","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","X�ch L�n Y�u ��i","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","X�ch L�n H� Uy�n","1")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","X�ch L�n Ng�c B�i","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","X�ch L�n H�ng Li�n","1")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","X�ch L�n Gi�i Ch�","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","X�ch L�n V� Kh�","4")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang b� X�ch L�n", tbProp = {0, {IDX_XichLan_nStart, IDX_XichLan_nEnd}}, nQuality = 1},
			{szName = "X�ch L�n Ng�c Tr�ng Luy�n", tbProp = {6,1,IDX_TrungLuyenNgoc_XichLan,1,0,0}},
		},
		tbProduct = {szName="Trang b� X�ch L�n", tbProp={0, {IDX_XichLanMax_nStart, IDX_XichLanMax_nEnd}}},
	}
	local p = tbTrungLuyenXichLanMax:new(tbMate, "tbTrungLuyenXichLanMax", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"B�t ��u Tr�ng Luy�n", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"H�y b� "})
	CreateNewSayEx(strDesc, tbOpt);
end
