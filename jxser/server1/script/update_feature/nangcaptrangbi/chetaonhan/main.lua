Include("\\script\\update_feature\\nangcaptrangbi\\chetaonhan\\ringtable.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaonhan\\trungluyencankhon.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\chetaonhan\\chetaocankhon.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
-------------------------------------------------------------------
tbVnRingUpgrade = {}

function tbVnRingUpgrade:SelectRing(strRingType)
	local strRingName = tbRingName[strRingType]
	tbOpt = {
		{format("N©ng C p %s", strRingName), tbVnRingUpgrade.UpgradeSelectedRing, {tbVnRingUpgrade, strRingType}},
		{"HÒy b·"},
	}
	CreateNewSayEx("C∏c hπ c«n g◊?", tbOpt)
end

function tbVnRingUpgrade:UpgradeSelectedRing(strRingType)
	local strRingName = tbRingName[strRingType]
	tbOpt = {
		--{format("N©ng c p %s c p 2", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 2}},
		--{format("N©ng c p %s c p 3", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 3}},
		--{format("N©ng c p %s c p 4", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 4}},
		{format("N©ng c p %s c p 5", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 5}},
		--{format("N©ng c p %s c p 6", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 6}},
		--{format("N©ng c p %s c p 7", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 7}},
		--{format("N©ng c p %s c p 8", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 8}},
		--{format("N©ng c p %s c p 9", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 9}},
		--{format("N©ng c p %s c p 10", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 10}},
		--{format("N©ng c p %s Truy“n Thuy’t", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 11}},
		{"HÒy b·"},
	}
	CreateNewSayEx("C∏c hπ c«n g◊?", tbOpt)
end

function tbVnRingUpgrade:SelectOption1(strRingType, nLevel)
	local strRingName = tbRingName[strRingType]
	tbOpt = {
		{"Kh∏ng ßÈc", tbVnRingUpgrade.SelectOption2, {tbVnRingUpgrade, strRingType, nLevel,1}},
		{"Kh∏ng L´i",tbVnRingUpgrade.SelectOption2, {tbVnRingUpgrade, strRingType, nLevel,2}},
		{"Kh∏ng H·a", tbVnRingUpgrade.SelectOption2, {tbVnRingUpgrade, strRingType, nLevel,3}},
		{"Phﬂng ThÒ", tbVnRingUpgrade.SelectOption2, {tbVnRingUpgrade, strRingType, nLevel,4}},
		{"Kh∏ng B®ng", tbVnRingUpgrade.SelectOption2, {tbVnRingUpgrade, strRingType, nLevel,5}},
		{"HÒy b·"},
	}
	CreateNewSayEx(format("N©ng c p nh…n <color=yellow>%s<color> l™n  c p <color=yellow>%d<color>  cho ph–p gi˜ lπi kh∏ng t›nh vµ hi÷u ¯ng hi÷n tπi cÒa nh…n, xin c∏c hπ h∑y ch‰n kh∏ng t›nh vµ hi÷u ¯ng cÒa nh…n hi÷n tπi Æang c„:", strRingName, nLevel), tbOpt)
end

function tbVnRingUpgrade:SelectOption2(strRingType, nLevel, nOption1)
	local strRingName = tbRingName[strRingType]
	tbOpt = {
		{"ThÍi Gian Lµm ChÀm", tbVnRingUpgrade.ConfirmSelectedOption, {tbVnRingUpgrade, strRingType, nLevel, nOption1, 1}},	
		{"ThÍi Gian TrÛng ßÈc", tbVnRingUpgrade.ConfirmSelectedOption, {tbVnRingUpgrade, strRingType, nLevel, nOption1, 2}},
		{"ThÍi Gian Cho∏ng", tbVnRingUpgrade.ConfirmSelectedOption, {tbVnRingUpgrade, strRingType, nLevel, nOption1, 3}},
		{"HÒy b·"},
	}
	CreateNewSayEx(format("N©ng c p nh…n <color=yellow>%s<color> l™n  c p <color=yellow>%d<color>  cho ph–p gi˜ lπi kh∏ng t›nh vµ hi÷u ¯ng hi÷n tπi cÒa nh…n, xin c∏c hπ h∑y ch‰n kh∏ng t›nh vµ hi÷u ¯ng cÒa nh…n hi÷n tπi Æang c„:", strRingName, nLevel), tbOpt)
end

function tbVnRingUpgrade:ConfirmSelectedOption(strRingType, nLevel, nOption1, nOption2)	
	local strRingName = tbRingName[strRingType]
	tbOpt = {
		{"X∏c nhÀn ch’ tπo", tbVnRingUpgrade.UpgradeSelectedRing2, {tbVnRingUpgrade, strRingType, nLevel, nOption1, nOption2}},	
		{"Ta muËn ch‰n lπi", tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, nLevel}},		
		{"HÒy b·"},
	}
	CreateNewSayEx(format("C∏c hπ Æ∑ l˘a ch‰n n©ng c p l™n nh…n <color=yellow>%s<color>  c p <color=yellow>%d<color>  <color=yellow>%s - %s<color>, ng≠¨i c„ muËn ch’ tπo ngay kh´ng?", strRingName, nLevel, tbOpt1Name[nOption1], tbOpt2Name[nOption2]), tbOpt)
end

function tbVnRingUpgrade:UpgradeSelectedRing2(strRingType, nLevel, nFirstOpt, nSecondOpt)
	local tbFormula = self:GetFormula(strRingType, nLevel, nFirstOpt, nSecondOpt)
	local tbItem2Ring = tbActivityCompose:new()
	local p = tbItem2Ring:new(tbFormula, "NangCap"..strRingType.."Cap"..nLevel, INVENTORY_ROOM.room_giveitem)
	p:ComposeGiveUI()
end

function tbVnRingUpgrade:GetFormula(strRingType, nLevel, nFirstOpt, nSecondOpt)
	local nOpt1, nOpt2
	if nLevel >= 1 and nLevel <= 11 then
		nOpt1 = nFirstOpt
		nOpt2 = nSecondOpt
	end
	if not tbUnnamedRing[strRingType] or not tbUnnamedRing[strRingType][nLevel] or not tbUnnamedRing[strRingType][nLevel][nOpt1] or not tbUnnamedRing[strRingType][nLevel][nOpt1][nOpt2] then
		error("upgrade ring - cannot get ring info")
		return
	end
	local tbRing = tbUnnamedRing[strRingType][nLevel]
	local tbRing1 = tbRing[nOpt1][nOpt2]	
	local tbMat = {}	
	for i =1, getn(tbRing.tbCommonMaterial) do
		tinsert(tbMat, tbRing.tbCommonMaterial[i])
	end
	for i = 1, getn(tbRing1.tbMaterial) do
		tinsert(tbMat, tbRing1.tbMaterial[i])
	end	
	local tbFormula = {		
		tbMaterial = tbMat,		
		tbProduct = tbRing1.tbProduct,	
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	return tbFormula
end

function tbVnRingUpgrade:MainDialog()
	local tbOpt = {
		--{"Ch’ Tπo: Cµn Kh´n Tinh X∂o",CheTaoCanKhon},
		{"N©ng C p: Cµn Kh´n Tinh X∂o", tbVnRingUpgrade.SelectRing, {tbVnRingUpgrade, "CanKhonGioiChi"}},
		{"TrÔng Luy÷n: Cµn Kh´n Tinh X∂o",TrungLuyenCanKhon},
		{"HÒy b·"},
	}
	local msg = "Ta c„ th” giÛp c∏c hπ n©ng c p, hπ c p, trÔng luy÷n c∏c loπi nh…n <color=yellow>[Tinh X∂o]V´ Danh<color>, tr≠Ìc ti™n ng≠¨i h∑y ch‰n loπi nh…n?"
	CreateNewSayEx(msg, tbOpt)
end
pEventType:Reg("Th«n B› ThÓ RÃn ","Li™n quan Æ’n nh…n V´ Danh", tbVnRingUpgrade.MainDialog, {tbVnRingUpgrade});