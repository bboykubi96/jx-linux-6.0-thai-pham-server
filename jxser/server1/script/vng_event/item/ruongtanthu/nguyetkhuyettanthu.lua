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
		tbVNGetGoldEquip:ShowEquipBranchDialog(12,tb)
	elseif n_param >= 12 and n_param <= 22 then
		tbVNGetGoldEquip:GetGoldEquip(12, random(1,27), tb)
	end	
	return 1
end

function GetDesc(nItem)	
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItem, 1 ))
	local tbItemName = 
	{
		[0]= "",
		[1] = "Nguy�t Khuy�t H�ng Li�n - T� ch�n h� ph�i",
		[2] = "Nguy�t Khuy�t Ph�t Qu�n - T� ch�n h� ph�i",		
		[3] = "Nguy�t Khuy�t Th��ng Gi�i Ch� - T� ch�n h� ph�i",
		[4] = "Nguy�t Khuy�t H� Uy�n - T� ch�n h� ph�i",
		[5] = "Nguy�t Khuy�t Y�u ��i - T� ch�n h� ph�i",
		[6] = "Nguy�t Khuy�t Kim Kh�i - T� ch�n h� ph�i",
		[7] = "Nguy�t Khuy�t Kh� Gi�i - T� ch�n h� ph�i",
		[8] = "Nguy�t Khuy�t H�i - T� ch�n h� ph�i",
		[9] = "Nguy�t Khuy�t Ng�c B�i - T� ch�n h� ph�i",
		[10] = "Nguy�t Khuy�t H� Gi�i Ch� - T� ch�n h� ph�i",
		[11] = "B� trang b� Nguy�t Khuy�t - T� ch�n h� ph�i",
		[12] = "Nguy�t Khuy�t H�ng Li�n - Ng�u nhi�n h� ph�i",
		[13] = "Nguy�t Khuy�t Ph�t Qu�n - Ng�u nhi�n h� ph�i",		
		[14] = "Nguy�t Khuy�t Th��ng Gi�i Ch� - Ng�u nhi�n h� ph�i",
		[15] = "Nguy�t Khuy�t H� Uy�n - Ng�u nhi�n h� ph�i",
		[16] = "Nguy�t Khuy�t Y�u ��i - Ng�u nhi�n h� ph�i",
		[17] = "Nguy�t Khuy�t Kim Kh�i - Ng�u nhi�n h� ph�i)",
		[18] = "Nguy�t Khuy�t Kh� Gi�i - Ng�u nhi�n h� ph�i",
		[19] = "Nguy�t Khuy�t H�i - Ng�u nhi�n h� ph�i",
		[20] = "Nguy�t Khuy�t Ng�c B�i - Ng�u nhi�n h� ph�i",
		[21] = "Nguy�t Khuy�t H� Gi�i Ch� - Ng�u nhi�n h� ph�i",
		[22] = "B� trang b� Nguy�t Khuy�t - Ng�u nhi�n h� ph�i",
	}
	szDesc = szDesc..format("<color=yellow>%s<color>", tbItemName[n_param]);
	return szDesc;
end
