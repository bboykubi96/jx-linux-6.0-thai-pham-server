Include("\\script\\vng_feature\\getgoldequip.lua")

tbParam2EquipType = {
	[1] = 0,
	[2] = 1,	
	[3] = 2,
	[4] = 3,
	[5] = 4,
	[6] = 5,
	[7] = 6,
	[8] = 7,
	[9] = 8,
	[10] = 9,
	[11] = 10,
	[12] = 0,
	[13] = 1,
	[14] = 2,
	[15] = 3,
	[16] = 4,
	[17] = 5,
	[18] = 6,
	[19] = 7,
	[20] = 8,
	[21] = 9,
	[22] = 10,
}

function main(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx, 1 ))
	local tb = {nSpecificItem = tbParam2EquipType[n_param], nItem2Consume = nItemIdx}	
	if n_param <= 0 then
		return
	elseif n_param >= 1 and n_param <= 11 then
		tbVNGetGoldEquip:ShowEquipBranchDialog(2,tb)
	elseif n_param >= 12 and n_param <= 22 then
		tbVNGetGoldEquip:GetGoldEquip(2, random(1,25), tb)
	end	
	return 1
end

function GetDesc(nItem)	
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItem, 1 ))
	local tbItemName = 
	{
		[0]= "",
		[1] = "V�n L�c H�ng Li�n - T� ch�n h� ph�i",
		[2] = "V�n L�c Ph�t Qu�n - T� ch�n h� ph�i",		
		[3] = "V�n L�c Th��ng Gi�i Ch� - T� ch�n h� ph�i",
		[4] = "V�n L�c H� Uy�n - T� ch�n h� ph�i",
		[5] = "V�n L�c Y�u ��i - T� ch�n h� ph�i",
		[6] = "V�n L�c Kim Kh�i - T� ch�n h� ph�i",
		[7] = "V�n L�c Kh� Gi�i - T� ch�n h� ph�i",
		[8] = "V�n L�c H�i - T� ch�n h� ph�i",
		[9] = "V�n L�c Ng�c B�i - T� ch�n h� ph�i",
		[10] = "V�n L�c H� Gi�i Ch� - T� ch�n h� ph�i",
		[11] = "B� trang b� V�n L�c - T� ch�n h� ph�i",
		[12] = "V�n L�c H�ng Li�n - Ng�u nhi�n h� ph�i",
		[13] = "V�n L�c Ph�t Qu�n - Ng�u nhi�n h� ph�i",		
		[14] = "V�n L�c Th��ng Gi�i Ch� - Ng�u nhi�n h� ph�i",
		[15] = "V�n L�c H� Uy�n - Ng�u nhi�n h� ph�i",
		[16] = "V�n L�c Y�u ��i - Ng�u nhi�n h� ph�i",
		[17] = "V�n L�c Kim Kh�i - Ng�u nhi�n h� ph�i)",
		[18] = "V�n L�c Kh� Gi�i - Ng�u nhi�n h� ph�i",
		[19] = "V�n L�c H�i - Ng�u nhi�n h� ph�i",
		[20] = "V�n L�c Ng�c B�i - Ng�u nhi�n h� ph�i",
		[21] = "V�n L�c H� Gi�i Ch� - Ng�u nhi�n h� ph�i",
		[22] = "B� trang b� V�n L�c - Ng�u nhi�n h� ph�i",
	}
	szDesc = szDesc..format("<color=yellow>%s<color>", tbItemName[n_param]);
	return szDesc;
end
