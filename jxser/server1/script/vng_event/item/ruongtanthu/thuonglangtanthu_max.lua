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
		tbVNGetGoldEquip:ShowEquipBranchDialog(18,tb)
	elseif n_param >= 12 and n_param <= 22 then
		tbVNGetGoldEquip:GetGoldEquip(18, random(1,27), tb)
	end	
	return 1
end

function GetDesc(nItem)	
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItem, 1 ))
	local tbItemName = 
	{
		[0]= "",
		[1] = "Th��ng Lang H�ng Li�n - T� ch�n h� ph�i",
		[2] = "Th��ng Lang Ph�t Qu�n - T� ch�n h� ph�i",		
		[3] = "Th��ng Lang Th��ng Gi�i Ch� - T� ch�n h� ph�i",
		[4] = "Th��ng Lang H� Uy�n - T� ch�n h� ph�i",
		[5] = "Th��ng Lang Y�u ��i - T� ch�n h� ph�i",
		[6] = "Th��ng Lang Kim Kh�i - T� ch�n h� ph�i",
		[7] = "Th��ng Lang Kh� Gi�i - T� ch�n h� ph�i",
		[8] = "Th��ng Lang H�i - T� ch�n h� ph�i",
		[9] = "Th��ng Lang Ng�c B�i - T� ch�n h� ph�i",
		[10] = "Th��ng Lang H� Gi�i Ch� - T� ch�n h� ph�i",
		[11] = "B� trang b� Th��ng Lang - T� ch�n h� ph�i",
		[12] = "Th��ng Lang H�ng Li�n - Ng�u nhi�n h� ph�i",
		[13] = "Th��ng Lang Ph�t Qu�n - Ng�u nhi�n h� ph�i",		
		[14] = "Th��ng Lang Th��ng Gi�i Ch� - Ng�u nhi�n h� ph�i",
		[15] = "Th��ng Lang H� Uy�n - Ng�u nhi�n h� ph�i",
		[16] = "Th��ng Lang Y�u ��i - Ng�u nhi�n h� ph�i",
		[17] = "Th��ng Lang Kim Kh�i - Ng�u nhi�n h� ph�i)",
		[18] = "Th��ng Lang Kh� Gi�i - Ng�u nhi�n h� ph�i",
		[19] = "Th��ng Lang H�i - Ng�u nhi�n h� ph�i",
		[20] = "Th��ng Lang Ng�c B�i - Ng�u nhi�n h� ph�i",
		[21] = "Th��ng Lang H� Gi�i Ch� - Ng�u nhi�n h� ph�i",
		[22] = "B� trang b� Th��ng Lang - Ng�u nhi�n h� ph�i",
	}
	szDesc = szDesc..format("<color=yellow>%s<color>", tbItemName[n_param]);
	return szDesc;
end
