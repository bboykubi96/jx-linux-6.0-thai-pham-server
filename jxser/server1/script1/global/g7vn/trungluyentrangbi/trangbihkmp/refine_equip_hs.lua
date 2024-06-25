Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\g7vn\\trungluyentrangbi\\trangbihkmp\\equiptable_hs.lua")

tbBaiHuRefineEquip = tbActivityCompose:new()

tbBaiHuRefineList = 
{
	[1]= {szName="Trang BÞ HKMP Hoa S¬n", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
--	[2]= {szName="HKMP Kh«i",   nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	--[3]= {szName="HKMP Th­îng Giíi ChØ", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	--[4]= {szName="HKMP Hé UyÓn", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	--[5]= {szName="HKMP Yªu §¸i", nStone = 2, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	--[6]= {szName="HKMP Y Phôc",   nStone = 3, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
--	[7]= {szName="HKMP Vò KhÝ", nStone = 4, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	--[8]= {szName="HKMP Hµi",   nStone = 3, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
--	[9]= {szName="HKMP Béi",   nStone = 3, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
--	[10]={szName="HKMP H¹ Giíi ChØ", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbBaiHuRefineEquip:ComposeGiveUI()
	
	local szTitle = format("  %-15s\t%s", "Trang bÞ HKMP","Trïng LuyÖn Ngäc \nTrang bÞ HKMP Hoa S¬n")
	local strDesc = format("   %-21s\t%d", "Mang Nguyªn LiÖu Bá Vµo D©y", 2)
	
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbBaiHuRefineEquip:Compose(nComposeCount)
	local nCurTime = GetCurServerTime()
	nComposeCount = nComposeCount or 1
	
	if type(self.tbFormula.pLimitFun) == "function" then
		if self.tbFormula:pLimitFun(nComposeCount) ~= 1 then
			return 0
		end
	end
	
	-- xet cai gi do
  local tbRoomItems =  self:GetRoomItems(self.nRoomType) --  cai gi do
	local tbGoldEquip = nil
	local nEquType = 0		-- mac dinh
	local nEqIndex = 0
	for i = 1, getn(tbRoomItems) do 
		nItemQuality = GetItemQuality(tbRoomItems[i])
		local nItemTime = ITEM_GetExpiredTime(tbRoomItems[i])
		local nTimeLeftCount=(nItemTime - nCurTime)/(60*60*24)
	--	Msg2Player("---"..nTimeLeftCount.."-----")
		--cai gi do
		if nItemQuality == 1 then
		tbEquip_Hkmp2= {
	[1] = {
	{szName="Ph¸ Ngäc ThÇn Uy Vò KiÕm",tbProp={0,681,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60},
	{szName="Ph¸ Ngäc T­¬ng Sinh Phï ",tbProp={0,682,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60},
	{szName="Ph¸ Ngäc §o¹n cÈm Yªu §¸i",tbProp={0,683,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60},
	{szName="Ph¸ Ngäc Thóy Ngäc HuyÒn Hoµng Béi",tbProp={0,684,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60},
	{szName="Ph¸ Ngäc Thanh Tïng Ph¸p giíi",tbProp={0,685,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60},
	},
}

			nEqIndex = GetGlodEqIndex(tbRoomItems[i])
	if nEqIndex >= 681 and nEqIndex <= 685 then -- ID trang bi tu bao nhieu den bao nhieu xem trong ex_goldequi_head
				--cai gi 685
				local nBindState = GetItemBindState(tbRoomItems[i])
				if nBindState ~= 0 then
					Say("Trang bÞ cña ng­¬i ®ang trong tr¹ng th¸i khãa, kh«ng thÓ trïng luyÖn.")
					return 0
				end
				
				--cai gi do
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang bÞ cña ng­¬i ®· bÞ h­ h¹i kh«ng thÓ trïng luyÖn.")
					return 0
				end
				
				nEquType = 1 -----------------trung luyen ID trang bi
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng­¬i ch­a ®Æt trang bÞ HKMP nµo vµo ®©y c¶ .")
		return 0	
	end
		
	--local nFreeItemCellLimit = tbBaiHuRefineList[nEquType].nFreeItemCellLimit or 1
	
	--nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	
	--if tbBaiHuRefineList[nEquType].nWidth ~= 0 and tbBaiHuRefineList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbBaiHuRefineList[nEquType].nWidth, tbBaiHuRefineList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
	--	Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, tbBaiHuRefineList[nEquType].nWidth, tbBaiHuRefineList[nEquType].nHeight))
	--	return 0
--	end	

  local tbItem = {szName = "Ngäc Trïng LuyÖn", tbProp = {6,1,30104,1,0,0}, nCount = 1} ----------------------------ID ngoc trung luyen
  local nCount = self:CalcItemCount(tbRoomItems, tbItem)
  if nCount < tbBaiHuRefineList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>HKMP Trïng LuyÖn Ngäc mµ ng­¬i ®Æt vµo kh«ng ®ñ. <color>"
		Talk(1, "", szMsg)
		return 0;
  end
	
	local nIdx = floor((nEqIndex - 1)/10) + 1 ----------------------ID trung luyen trang bi
	local tbProduct = tbEquip_Hkmp2[1][nEqIndex] --------------------lay danh sach ID ra --------tbEquip_BaiHu trong table
	local tbMaterial2 = {{szName = tbProduct.szName, tbProp = tbGoldEquip, nCount = 1}, tbItem}

	if self:ConsumeMaterial(tbMaterial2, nComposeCount, self.szLogTitle) ~= 1 then
		--Say("noi gi do",0)
		Msg2Player("ChÕ t¹o thÊt b¹i, mÊt ®i mét sè nguyªn liÖu.")
		return 0;
	end
	

	tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount)
	Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> Trïng LuyÖn Thµnh C«ng <color=green>Trang BÞ HKMP!")
	if type(self.tbFormula.pProductFun) == "function" then
		self.tbFormula:pProductFun(nComposeCount)
	end
	return 1;
end

function refine_HKMP_hs()
		
	local strDesc = "<npc>LÊy <color=yellow>trang bÞ HKMP HS<color> muèn trïng luyÖn  vµ sè l­îng <color=yellow> Ngäc Trïng LuyÖn<color> t­¬ng øng ®Æt vµo phÝa d­íi"
	local tbOpt = {}
	local tbMate1 =	{
			tbMaterial2 = 
			{
				{szName = "Trang bÞ HKMP ", tbProp = {0, {681,685}}, nQuality = 1 },----------------------ID trung luyen trang bi tu ID dau ----cuoi
				{szName = "Ngäc Trïng LuyÖn", tbProp = {6,1,30104,1,0,0},}, ----------------------------ID ngoc trung luyen
			},
			tbProduct = {szName="Trang bÞ HKMP", tbProp={0, {681,685}}}, --------------------------------------------ID trung luyen trang bi tu ID dau --- cuoi
		}
	local p = tbBaiHuRefineEquip:new(tbMate1, "BaiHuRefineEquip", INVENTORY_ROOM.room_giveitem)-------------BaiHu
	tinsert(tbOpt, {"Trïng luyÖn trang bÞ HKMP hs", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"Hñy bá "})
	CreateNewSayEx(strDesc, tbOpt);
end
