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
		tbVNGetGoldEquip:ShowEquipBranchDialog(29,tb)
	elseif n_param >= 12 and n_param <= 22 then
		tbVNGetGoldEquip:GetGoldEquip(29, random(1,27), tb)
	end	
	return 1
end

function GetDesc(nItem)	
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItem, 1 ))
	local tbItemName = 
	{
		[0]= "",
		[1] = "Anh H�o H�ng Li�n - T� ch�n h� ph�i",
		[2] = "Anh H�o Ph�t Qu�n - T� ch�n h� ph�i",		
		[3] = "Anh H�o Th��ng Gi�i Ch� - T� ch�n h� ph�i",
		[4] = "Anh H�o H� Uy�n - T� ch�n h� ph�i",
		[5] = "Anh H�o Y�u ��i - T� ch�n h� ph�i",
		[6] = "Anh H�o Kim Kh�i - T� ch�n h� ph�i",
		[7] = "Anh H�o Kh� Gi�i - T� ch�n h� ph�i",
		[8] = "Anh H�o H�i - T� ch�n h� ph�i",
		[9] = "Anh H�o Ng�c B�i - T� ch�n h� ph�i",
		[10] = "Anh H�o H� Gi�i Ch� - T� ch�n h� ph�i",
		[11] = "B� trang b� Anh H�o - T� ch�n h� ph�i",
		[12] = "Anh H�o H�ng Li�n - Ng�u nhi�n h� ph�i",
		[13] = "Anh H�o Ph�t Qu�n - Ng�u nhi�n h� ph�i",		
		[14] = "Anh H�o Th��ng Gi�i Ch� - Ng�u nhi�n h� ph�i",
		[15] = "Anh H�o H� Uy�n - Ng�u nhi�n h� ph�i",
		[16] = "Anh H�o Y�u ��i - Ng�u nhi�n h� ph�i",
		[17] = "Anh H�o Kim Kh�i - Ng�u nhi�n h� ph�i)",
		[18] = "Anh H�o Kh� Gi�i - Ng�u nhi�n h� ph�i",
		[19] = "Anh H�o H�i - Ng�u nhi�n h� ph�i",
		[20] = "Anh H�o Ng�c B�i - Ng�u nhi�n h� ph�i",
		[21] = "Anh H�o H� Gi�i Ch� - Ng�u nhi�n h� ph�i",
		[22] = "B� trang b� Anh H�o - Ng�u nhi�n h� ph�i",
	}
	szDesc = szDesc..format("<color=yellow>%s<color>", tbItemName[n_param]);
	return szDesc;
end
