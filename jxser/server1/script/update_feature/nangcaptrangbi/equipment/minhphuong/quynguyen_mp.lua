Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
------------------------------------------------------------------------------------------
tbQuyNguyenMinhPhuong = tbActivityCompose:new()
tbQuyNguyenMinhPhuong.bAccessBindItem = 0

tbQuyNguyenMinhPhuongList = {
	[1]= {szName="Minh Ph��ng H�ng Li�n", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="Minh Ph��ng Kh�i",   nStone = 1, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="Minh Ph��ng Th��ng Gi�i Ch�", nStone = 1, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="Minh Ph��ng H� Uy�n", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="Minh Ph��ng Y�u ��i", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="Minh Ph��ng Y Ph�c",   nStone = 1, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="Minh Ph��ng V� Kh�", nStone = 1, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="Minh Ph��ng H�i",   nStone = 1, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="Minh Ph��ng B�i",   nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="Minh Ph��ng H� Gi�i Ch�", nStone = 1, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbQuyNguyenMinhPhuong:ComposeGiveUI()
	local szTitle = format("%s","Quy Nguy�n Minh Ph��ng")
	local strDesc = format("%-18s %s\n","V�t Ph�m","S� L��ng")
	strDesc = strDesc..format("%-22s %s\n","Trang B� Minh Ph��ng","1")
	strDesc = strDesc..format("%-22s %s","Quy Nguy�n Ph�","1")
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
					Say("Trang b� c�a ng��i �ang trong tr�ng th�i kh�a, kh�ng th� quy nguy�n")
					return 0
				end
				
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang b� c�a ng��i �� b� h� h�i kh�ng th� quy nguy�n.")
					return 0
				end
				
				nEquType = mod(nEqIndex - IDX_MinhPhuong_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng��i ch�a ��t trang b� Minh Ph��ng n�o v�o ��y c�.")
		return 0	
	end
		
	local nFreeItemCellLimit = tbQuyNguyenMinhPhuongList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbQuyNguyenMinhPhuongList[nEquType].nWidth ~= 0 and tbQuyNguyenMinhPhuongList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbQuyNguyenMinhPhuongList[nEquType].nWidth, tbQuyNguyenMinhPhuongList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, tbQuyNguyenMinhPhuongList[nEquType].nWidth, tbQuyNguyenMinhPhuongList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "Quy Nguy�n Ph�", tbProp = {6,1,IDX_QuyNguyenPhu,1,0,0}, nCount = tbQuyNguyenMinhPhuongList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbQuyNguyenMinhPhuongList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>Quy Nguy�n Ph� m� ng��i ��t v�o kh�ng ��. <color>"
		Talk(1, "", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_MinhPhuong_nStart)/10) + 1
	local tbProduct = BaoRuongMinhPhuong[nEquType][nIdx]
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

function QuyNguyenMinhPhuong()
	local strDesc = "<color=green>Mu�n Quy Nguy�n Trang B� Minh Ph��ng Y�u C�u:<color>\n"
	strDesc = strDesc..format("<color=yellow>%-30s %s<color>\n", "V�t Ph�m", "S� L��ng")
	strDesc = strDesc..format("<color=red>%-30s %s<color>\n", "Trang B� Minh Ph��ng", "1")
	strDesc = strDesc..format("<color=red>%-30s %s<color>\n", "Quy Nguy�n Ph�", "1")
	strDesc = strDesc..format("<bclr=blue>%s %s<bclr>\n", GetName(), "H�y Ch�n Trang B� Mu�n Quy Nguy�n")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang b� Minh Ph��ng", tbProp = {0, {IDX_MinhPhuong_nStart, IDX_MinhPhuong_nEnd}}, nQuality = 1},
			{szName = "Ng� Linh Quy Nguy�n Ph�", tbProp = {6,1,IDX_QuyNguyenPhu,1,0,0},nCount = 1},
		},
		tbProduct = {szName="B�o R��ng Minh Ph��ng", tbProp={0, {IDX_BaoRuongMinhPhuong_Start, IDX_BaoRuongMinhPhuong_nEnd}}},
	}
	local p = tbQuyNguyenMinhPhuong:new(tbMate, "tbQuyNguyenMinhPhuong", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"X�c Nh�n", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"H�y b� "})
	CreateNewSayEx(strDesc, tbOpt);
end
