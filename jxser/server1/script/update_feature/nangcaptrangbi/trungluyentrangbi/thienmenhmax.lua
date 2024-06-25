Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\equiptable.lua")
--------------------------------------------------------------------
tbTrungLuyenThienMenhMax = tbActivityCompose:new()

tbTrungLuyenThienMenhMaxList = {
	[1]= {szName="Thiªn MÖnh H¹ng Liªn", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[2]= {szName="Thiªn MÖnh Kh«i",   nStone = 2, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[3]= {szName="Thiªn MÖnh Th­îng Giíi ChØ", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	[4]= {szName="Thiªn MÖnh Hé UyÓn", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[5]= {szName="Thiªn MÖnh Yªu §¸i", nStone = 2, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	[6]= {szName="Thiªn MÖnh Y Phôc",   nStone = 3, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
	[7]= {szName="Thiªn MÖnh Vò KhÝ", nStone = 4, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	[8]= {szName="Thiªn MÖnh Hµi",   nStone = 3, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
	[9]= {szName="Thiªn MÖnh Béi",   nStone = 3, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	[10]={szName="Thiªn MÖnh H¹ Giíi ChØ", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbTrungLuyenThienMenhMax:ComposeGiveUI()
	local szTitle = format("%s","Trïng LuyÖn Thiªn MÖnh")
	local strDesc = format("%-18s %s\n","VËt PhÈm","Sè L­îng")
	strDesc = strDesc..format("%-22s %s\n","Thiªn MÖnh Kh«i","2")
	strDesc = strDesc..format("%-22s %s\n","Thiªn MÖnh Y Phôc","3")
	strDesc = strDesc..format("%-22s %s\n","Thiªn MÖnh Hµi","3")
	strDesc = strDesc..format("%-22s %s\n","Thiªn MÖnh Yªu §¸i","2")
	strDesc = strDesc..format("%-22s %s\n","Thiªn MÖnh Hé UyÓn","1")
	strDesc = strDesc..format("%-22s %s\n","Thiªn MÖnh Ngäc Béi","3")
	strDesc = strDesc..format("%-22s %s\n","Thiªn MÖnh H¹ng Liªn","1")
	strDesc = strDesc..format("%-22s %s\n","Thiªn MÖnh Giíi ChØ","2")
	strDesc = strDesc..format("%-22s %s","Thiªn MÖnh Vò KhÝ","4")
	
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbTrungLuyenThienMenhMax:Compose(nComposeCount)
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
			if (nEqIndex >= IDX_ThienMenh_nStart and nEqIndex <= IDX_ThienMenh_nEnd) then
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
				
				nEquType = mod(nEqIndex - IDX_ThienMenh_nStart, 10) + 1
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng­¬i Ch­a §Æt §óng Trang BÞ Thiªn MÖnh")
		return 0	
	end
		
	local nFreeItemCellLimit = tbTrungLuyenThienMenhMaxList[nEquType].nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if tbTrungLuyenThienMenhMaxList[nEquType].nWidth ~= 0 and tbTrungLuyenThienMenhMaxList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbTrungLuyenThienMenhMaxList[nEquType].nWidth, tbTrungLuyenThienMenhMaxList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, tbTrungLuyenThienMenhMaxList[nEquType].nWidth, tbTrungLuyenThienMenhMaxList[nEquType].nHeight))
		return 0
	end	

	local tbItem = {szName = "Thiªn MÖnh Ngäc Trïng LuyÖn", tbProp = {6,1,IDX_TrungLuyenNgoc_ThienMenh,1,0,0}, nCount = tbTrungLuyenThienMenhMaxList[nEquType].nStone}
	local nCount = self:CalcItemCount(tbRoomItems, tbItem)
	if nCount < tbTrungLuyenThienMenhMaxList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>Thiªn MÖnh Trïng LuyÖn Ngäc mµ ng­¬i ®Æt vµo kh«ng ®ñ. <color>"
		Talk(1,"", szMsg)
		return 0;
	end
	
	local nIdx = floor((nEqIndex - IDX_ThienMenh_nStart)/10) + 1
	local tbProduct = tbEquip_ThienMenhMax[nEquType][nIdx]
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

function TrungLuyenThienMenhMax()
	local strDesc = "<color=green>Muèn Trïng LuyÖn <color=yellow>Trang BÞ Thiªn MÖnh<color> Yªu CÇu:<color>\n"
	strDesc = strDesc..format("\t\t\t%-30s %s\n", "Trang BÞ Thiªn MÖnh", "Ngäc Trïng LuyÖn")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Thiªn MÖnh Kh«i","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Thiªn MÖnh Y Phôc","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Thiªn MÖnh Hµi","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Thiªn MÖnh Yªu §¸i","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Thiªn MÖnh Hé UyÓn","1")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Thiªn MÖnh Ngäc Béi","3")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Thiªn MÖnh H¹ng Liªn","1")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Thiªn MÖnh Giíi ChØ","2")
	strDesc = strDesc..format("\t\t\t<color=yellow>%-38s <color=red>%s<color>\n","Thiªn MÖnh Vò KhÝ","4")
	local tbOpt = {}
	local tbMate = {
		tbMaterial = {
			{szName = "Trang bÞ Thiªn MÖnh", tbProp = {0, {IDX_ThienMenh_nStart, IDX_ThienMenh_nEnd}}, nQuality = 1},
			{szName = "Thiªn MÖnh Ngäc Trïng LuyÖn", tbProp = {6,1,IDX_TrungLuyenNgoc_ThienMenh,1,0,0}},
		},
		tbProduct = {szName="Trang bÞ Thiªn MÖnh", tbProp={0, {IDX_ThienMenhMax_nStart, IDX_ThienMenhMax_nEnd}}},
	}
	local p = tbTrungLuyenThienMenhMax:new(tbMate, "tbTrungLuyenThienMenhMax", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"B¾t §Çu Trïng LuyÖn", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"Hñy bá "})
	CreateNewSayEx(strDesc, tbOpt);
end
