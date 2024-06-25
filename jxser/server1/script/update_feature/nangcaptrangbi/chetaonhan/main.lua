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
		{format("N�ng C�p %s", strRingName), tbVnRingUpgrade.UpgradeSelectedRing, {tbVnRingUpgrade, strRingType}},
		{"H�y b�"},
	}
	CreateNewSayEx("C�c h� c�n g�?", tbOpt)
end

function tbVnRingUpgrade:UpgradeSelectedRing(strRingType)
	local strRingName = tbRingName[strRingType]
	tbOpt = {
		--{format("N�ng c�p %s c�p 2", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 2}},
		--{format("N�ng c�p %s c�p 3", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 3}},
		--{format("N�ng c�p %s c�p 4", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 4}},
		{format("N�ng c�p %s c�p 5", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 5}},
		--{format("N�ng c�p %s c�p 6", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 6}},
		--{format("N�ng c�p %s c�p 7", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 7}},
		--{format("N�ng c�p %s c�p 8", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 8}},
		--{format("N�ng c�p %s c�p 9", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 9}},
		--{format("N�ng c�p %s c�p 10", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 10}},
		--{format("N�ng c�p %s Truy�n Thuy�t", strRingName), tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, 11}},
		{"H�y b�"},
	}
	CreateNewSayEx("C�c h� c�n g�?", tbOpt)
end

function tbVnRingUpgrade:SelectOption1(strRingType, nLevel)
	local strRingName = tbRingName[strRingType]
	tbOpt = {
		{"Kh�ng ��c", tbVnRingUpgrade.SelectOption2, {tbVnRingUpgrade, strRingType, nLevel,1}},
		{"Kh�ng L�i",tbVnRingUpgrade.SelectOption2, {tbVnRingUpgrade, strRingType, nLevel,2}},
		{"Kh�ng H�a", tbVnRingUpgrade.SelectOption2, {tbVnRingUpgrade, strRingType, nLevel,3}},
		{"Ph�ng Th�", tbVnRingUpgrade.SelectOption2, {tbVnRingUpgrade, strRingType, nLevel,4}},
		{"Kh�ng B�ng", tbVnRingUpgrade.SelectOption2, {tbVnRingUpgrade, strRingType, nLevel,5}},
		{"H�y b�"},
	}
	CreateNewSayEx(format("N�ng c�p nh�n <color=yellow>%s<color> l�n  c�p <color=yellow>%d<color>  cho ph�p gi� l�i kh�ng t�nh v� hi�u �ng hi�n t�i c�a nh�n, xin c�c h� h�y ch�n kh�ng t�nh v� hi�u �ng c�a nh�n hi�n t�i �ang c�:", strRingName, nLevel), tbOpt)
end

function tbVnRingUpgrade:SelectOption2(strRingType, nLevel, nOption1)
	local strRingName = tbRingName[strRingType]
	tbOpt = {
		{"Th�i Gian L�m Ch�m", tbVnRingUpgrade.ConfirmSelectedOption, {tbVnRingUpgrade, strRingType, nLevel, nOption1, 1}},	
		{"Th�i Gian Tr�ng ��c", tbVnRingUpgrade.ConfirmSelectedOption, {tbVnRingUpgrade, strRingType, nLevel, nOption1, 2}},
		{"Th�i Gian Cho�ng", tbVnRingUpgrade.ConfirmSelectedOption, {tbVnRingUpgrade, strRingType, nLevel, nOption1, 3}},
		{"H�y b�"},
	}
	CreateNewSayEx(format("N�ng c�p nh�n <color=yellow>%s<color> l�n  c�p <color=yellow>%d<color>  cho ph�p gi� l�i kh�ng t�nh v� hi�u �ng hi�n t�i c�a nh�n, xin c�c h� h�y ch�n kh�ng t�nh v� hi�u �ng c�a nh�n hi�n t�i �ang c�:", strRingName, nLevel), tbOpt)
end

function tbVnRingUpgrade:ConfirmSelectedOption(strRingType, nLevel, nOption1, nOption2)	
	local strRingName = tbRingName[strRingType]
	tbOpt = {
		{"X�c nh�n ch� t�o", tbVnRingUpgrade.UpgradeSelectedRing2, {tbVnRingUpgrade, strRingType, nLevel, nOption1, nOption2}},	
		{"Ta mu�n ch�n l�i", tbVnRingUpgrade.SelectOption1, {tbVnRingUpgrade, strRingType, nLevel}},		
		{"H�y b�"},
	}
	CreateNewSayEx(format("C�c h� �� l�a ch�n n�ng c�p l�n nh�n <color=yellow>%s<color>  c�p <color=yellow>%d<color>  <color=yellow>%s - %s<color>, ng��i c� mu�n ch� t�o ngay kh�ng?", strRingName, nLevel, tbOpt1Name[nOption1], tbOpt2Name[nOption2]), tbOpt)
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
		--{"Ch� T�o: C�n Kh�n Tinh X�o",CheTaoCanKhon},
		{"N�ng C�p: C�n Kh�n Tinh X�o", tbVnRingUpgrade.SelectRing, {tbVnRingUpgrade, "CanKhonGioiChi"}},
		{"Tr�ng Luy�n: C�n Kh�n Tinh X�o",TrungLuyenCanKhon},
		{"H�y b�"},
	}
	local msg = "Ta c� th� gi�p c�c h� n�ng c�p, h� c�p, tr�ng luy�n c�c lo�i nh�n <color=yellow>[Tinh X�o]V� Danh<color>, tr��c ti�n ng��i h�y ch�n lo�i nh�n?"
	CreateNewSayEx(msg, tbOpt)
end
pEventType:Reg("Th�n B� Th� R�n ","Li�n quan ��n nh�n V� Danh", tbVnRingUpgrade.MainDialog, {tbVnRingUpgrade});