Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
--Include("\\script\\global\\g7vn\\trungluyentrangbi\\trangbihkmp\\equiptable.lua")

tbHanCheRefineEquip = tbActivityCompose:new()

tbHanCheRefineList = 
{
	[1]= {szName="Trang B� HKMP", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
--	[2]= {szName="HKMP Kh�i",   nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	--[3]= {szName="HKMP Th��ng Gi�i Ch�", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	--[4]= {szName="HKMP H� Uy�n", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	--[5]= {szName="HKMP Y�u ��i", nStone = 2, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	--[6]= {szName="HKMP Y Ph�c",   nStone = 3, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
--	[7]= {szName="HKMP V� Kh�", nStone = 4, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	--[8]= {szName="HKMP H�i",   nStone = 3, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
--	[9]= {szName="HKMP B�i",   nStone = 3, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
--	[10]={szName="HKMP H� Gi�i Ch�", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbHanCheRefineEquip:ComposeGiveUI()
	
	local szTitle = format("  %-15s\t%s", "Trang b� HKMP","Tr�ng Luy�n Ng�c \nTrang b� HKMP")
	local strDesc = format("   %-21s\t%d", "Mang Nguy�n Li�u B� V�o D�y", 2)
	
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbHanCheRefineEquip:Compose(nComposeCount)
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
		--Msg2Player("---"..nTimeLeftCount.."-----")
		--cai gi do
		if nItemQuality == 1 then
		nEqIndex = GetGlodEqIndex(tbRoomItems[i])
		tbEquip_Hkmp1 = {
	[1] = {
			{szName="[H�n ch� th�i gian]",tbProp={0,nEqIndex},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*nTimeLeftCount},
	},
}

			
			if nEqIndex >= 1 and nEqIndex <= 1000 then -- ID trang bi tu bao nhieu den bao nhieu xem trong ex_goldequi_head
				--cai gi do
				local nBindState = GetItemBindState(tbRoomItems[i])
				if nBindState ~= 0 then
					Say("Trang b� c�a ng��i �ang trong tr�ng th�i kh�a, kh�ng th� tr�ng luy�n.")
					return 0
				end
				
				--cai gi do
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang b� c�a ng��i �� b� h� h�i kh�ng th� tr�ng luy�n.")
					return 0
				end
				
				nEquType = 1 -----------------trung luyen ID trang bi
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng��i ch�a ��t trang b� HKMP n�o v�o ��y c�.")
		return 0	
	end
		
  local tbItem = {szName = "Ng�c Tr�ng Luy�n", tbProp = {6,1,30104,1,0,0}, nCount = 2} ----------------------------ID ngoc trung luyen
  local nCount = self:CalcItemCount(tbRoomItems, tbItem)
    if nCount < 1 then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>HKMP Tr�ng Luy�n Ng�c m� ng��i ��t v�o kh�ng ��. <color>"
		Talk(1, "", szMsg)
		return 0;
  end

	local tbProduct = tbEquip_Hkmp1[1][1] --------------------lay danh sach ID ra --------tbEquip_HanChe trong table
	local tbMaterial = {{szName = tbProduct.szName, tbProp = tbGoldEquip, nCount = 1}, tbItem}

	self:ConsumeMaterial(tbMaterial, nComposeCount, self.szLogTitle) 
	tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount)
	Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> Tr�ng Luy�n Th�nh C�ng <color=green>Trang B� HKMP!")
end

function refine_HanChe()
		
	local strDesc = "<npc>L�y <color=yellow>trang b� HKMP <color> mu�n tr�ng luy�n  v� s� l��ng <color=yellow> Ng�c Tr�ng Luy�n<color> t��ng �ng ��t v�o ph�a d��i"
	local tbOpt = {}
	local tbMate =	{
			tbMaterial = 
			{
				{szName = "Trang b� HKMP", tbProp = {0, {1,140}}, nQuality = 1 },----------------------ID trung luyen trang bi tu ID dau ----cuoi
				{szName = "Ng�c Tr�ng Luy�n", tbProp = {6,1,30104,1,0,0},}, ----------------------------ID ngoc trung luyen
			},
			tbProduct = {szName="Trang b� HKMP", tbProp={0, {1,140}}}, --------------------------------------------ID trung luyen trang bi tu ID dau --- cuoi
		}
	local p = tbHanCheRefineEquip:new(tbMate, "HanCheRefineEquip", INVENTORY_ROOM.room_giveitem)-------------HanChe
	tinsert(tbOpt, {"Tr�ng luy�n trang b� H�n Ch�", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"H�y b� "})
	CreateNewSayEx(strDesc, tbOpt);
end
