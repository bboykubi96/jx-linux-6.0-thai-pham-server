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
	local tb = {nSpecificItem = tbParam2EquipType[n_param], nItem2Consume = nItemIdx, nBindState = -2}	
	if n_param <= 0 then
		return
	elseif n_param >= 1 and n_param <= 11 then
		tbVNGetGoldEquip:ShowEquipBranchDialog(17,tb)
	elseif n_param >= 12 and n_param <= 22 then
		tbVNGetGoldEquip:GetGoldEquip(17, random(1,25), tb)
	end	
	return 1
end

function GetDesc(nItem)	
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItem, 1 ))
	local tbItemName = 
	{
		[0]= "",
		[1] = "��ng Long H�ng Li�n - T� ch�n h� ph�i",
		[2] = "��ng Long Ph�t Qu�n - T� ch�n h� ph�i",		
		[3] = "��ng Long Th��ng Gi�i Ch� - T� ch�n h� ph�i",
		[4] = "��ng Long H� Uy�n - T� ch�n h� ph�i",
		[5] = "��ng Long Y�u ��i - T� ch�n h� ph�i",
		[6] = "��ng Long Kim Kh�i - T� ch�n h� ph�i",
		[7] = "��ng Long Kh� Gi�i - T� ch�n h� ph�i",
		[8] = "��ng Long H�i - T� ch�n h� ph�i",
		[9] = "��ng Long Ng�c B�i - T� ch�n h� ph�i",
		[10] = "��ng Long H� Gi�i Ch� - T� ch�n h� ph�i",
		[11] = "B� trang b� ��ng Long - T� ch�n h� ph�i",
		[12] = "��ng Long H�ng Li�n - Ng�u nhi�n h� ph�i",
		[13] = "��ng Long Ph�t Qu�n - Ng�u nhi�n h� ph�i",		
		[14] = "��ng Long Th��ng Gi�i Ch� - Ng�u nhi�n h� ph�i",
		[15] = "��ng Long H� Uy�n - Ng�u nhi�n h� ph�i",
		[16] = "��ng Long Y�u ��i - Ng�u nhi�n h� ph�i",
		[17] = "��ng Long Kim Kh�i - Ng�u nhi�n h� ph�i)",
		[18] = "��ng Long Kh� Gi�i - Ng�u nhi�n h� ph�i",
		[19] = "��ng Long H�i - Ng�u nhi�n h� ph�i",
		[20] = "��ng Long Ng�c B�i - Ng�u nhi�n h� ph�i",
		[21] = "��ng Long H� Gi�i Ch� - Ng�u nhi�n h� ph�i",
		[22] = "B� trang b� ��ng Long - Ng�u nhi�n h� ph�i",
	}
	szDesc = szDesc..format("<color=yellow>%s<color>", tbItemName[n_param]);
	return szDesc;
end
