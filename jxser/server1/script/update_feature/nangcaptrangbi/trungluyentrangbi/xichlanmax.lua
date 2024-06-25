Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
--------------------------------------------------------------------
tbTrungLuyenXichLanMax = tbActivityCompose:new()

tbTrungLuyenXichLanMaxList = {
	[1]= {szName="XÝch L©n H¹ng Liªn", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="XÝch L©n Kh«i",   nStone = 2, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="XÝch L©n Th­îng Giíi ChØ", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="XÝch L©n Hé UyÓn", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="XÝch L©n Yªu §¸i", nStone = 2, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="XÝch L©n Y Phôc",   nStone = 3, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="XÝch L©n Vò KhÝ", nStone = 4, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="XÝch L©n Hµi",   nStone = 3, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="XÝch L©n Béi",   nStone = 3, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="XÝch L©n H¹ Giíi ChØ", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbTrungLuyenXichLanMax:ComposeGiveUI()
	local szTitle = format("%s","Trïng LuyÖn XÝch L©n")
	local strDesc = format("%-18s %s\n","VËt PhÈm","Sè L­îng")
	strDesc = strDesc..format("%-22s %s\n","XÝch L©n Kh«i","2")
	strDesc = strDesc..format("%-22s %s\n","XÝch L©n Y Phôc","3")
	strDesc = strDesc..format("%-22s %s\n","XÝch L©n Hµi","3")
	strDesc = strDesc..format("%-22s %s\n","XÝch L©n Yªu §¸i","2")
	strDesc = strDesc..format("%-22s %s\n","XÝch L©n Hé UyÓn","1")
	strDesc = strDesc..format("%-22s %s\n","XÝch L©n Ngäc Béi","3")
	strDesc = strDesc..format("%-22s %s\n","XÝch L©n H¹ng Liªn","1")
	strDesc = strDesc..format("%-22s %s\n","XÝch L©n Giíi ChØ","2")
	strDesc = strDesc..format("%-22s %s","XÝch L©n Vò KhÝ","4")
	
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
					Say("Trang bÞ cña ng­¬i ®ang trong tr¹ng th¸i khãa, kh«ng thÓ trïng luyÖn.")
					return 0
				end
				
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang bÞ cña ng­¬i ®· bÞ h­ h¹i kh«ng thÓ trïng luyÖn.")
					return 0
				end
				
				nEquType = mod(nEqIndex - IDX_XichLan_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng­¬i Ch­a §Æt §óng Trang BÞ XÝch L©n")
		return 0	
	end
		
	local nFreeItemCellLimit = tbTrungLuyenXichLanMaxList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbTrungLuyenXichLanMaxList[nEquType].nWidth ~= 0 and tbTrungLuyenXichLanMaxList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbTrungLuyenXichLanMaxList[nEquType].nWidth, tbTrungLuyenXichLanMaxList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, tbTrungLuyenXichLanMaxList[nEquType].nWidth, tbTrungLuyenXichLanMaxList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "XÝch L©n Ngäc Trïng LuyÖn", tbProp = {6,1,IDX_TrungLuyenNgoc_XichLan,1,0,0}, nCount = tbTrungLuyenXichLanMaxList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbTrungLuyenXichLanMaxList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>XÝch L©n Trïng LuyÖn Ngäc mµ ng­¬i ®Æt vµo kh«ng ®ñ. <color>"
		Talk(1,"", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_XichLan_nStart)/10) + 1
	local tbProduct = tbEquip_XichLanMax[nEquType][nIdx]
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

function TrungLuyenXichLanMax()
	local strDesc = "<color=green>Muèn Trïng LuyÖn <color=yellow>Trang BÞ XÝch L©n<color> Yªu CÇu:<color>\n"
	strDesc = strDesc..format("\t\t\t%-30s %s\n", "Trang BÞ XÝch L©n", "Ngäc Trïng LuyÖn")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","XÝch L©n Kh«i","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","XÝch L©n Y Phôc","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","XÝch L©n Hµi","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","XÝch L©n Yªu §¸i","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","XÝch L©n Hé UyÓn","1")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","XÝch L©n Ngäc Béi","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","XÝch L©n H¹ng Liªn","1")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","XÝch L©n Giíi ChØ","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","XÝch L©n Vò KhÝ","4")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang bÞ XÝch L©n", tbProp = {0, {IDX_XichLan_nStart, IDX_XichLan_nEnd}}, nQuality = 1},
			{szName = "XÝch L©n Ngäc Trïng LuyÖn", tbProp = {6,1,IDX_TrungLuyenNgoc_XichLan,1,0,0}},
		},
		tbProduct = {szName="Trang bÞ XÝch L©n", tbProp={0, {IDX_XichLanMax_nStart, IDX_XichLanMax_nEnd}}},
	}
	local p = tbTrungLuyenXichLanMax:new(tbMate, "tbTrungLuyenXichLanMax", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"B¾t §Çu Trïng LuyÖn", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"Hñy bá "})
	CreateNewSayEx(strDesc, tbOpt);
end
