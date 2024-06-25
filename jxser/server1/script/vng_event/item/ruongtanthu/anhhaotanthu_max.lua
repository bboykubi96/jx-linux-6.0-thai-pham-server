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
		[1] = "Anh Hµo H¹ng Liªn - Tù chän hÖ ph¸i",
		[2] = "Anh Hµo Ph¸t Qu¸n - Tù chän hÖ ph¸i",		
		[3] = "Anh Hµo Th­îng Giíi ChØ - Tù chän hÖ ph¸i",
		[4] = "Anh Hµo Hé UyÓn - Tù chän hÖ ph¸i",
		[5] = "Anh Hµo Yªu §¸i - Tù chän hÖ ph¸i",
		[6] = "Anh Hµo Kim Kh¶i - Tù chän hÖ ph¸i",
		[7] = "Anh Hµo KhÝ Giíi - Tù chän hÖ ph¸i",
		[8] = "Anh Hµo Hµi - Tù chän hÖ ph¸i",
		[9] = "Anh Hµo Ngäc Béi - Tù chän hÖ ph¸i",
		[10] = "Anh Hµo H¹ Giíi ChØ - Tù chän hÖ ph¸i",
		[11] = "Bé trang bÞ Anh Hµo - Tù chän hÖ ph¸i",
		[12] = "Anh Hµo H¹ng Liªn - NgÉu nhiªn hÖ ph¸i",
		[13] = "Anh Hµo Ph¸t Qu¸n - NgÉu nhiªn hÖ ph¸i",		
		[14] = "Anh Hµo Th­îng Giíi ChØ - NgÉu nhiªn hÖ ph¸i",
		[15] = "Anh Hµo Hé UyÓn - NgÉu nhiªn hÖ ph¸i",
		[16] = "Anh Hµo Yªu §¸i - NgÉu nhiªn hÖ ph¸i",
		[17] = "Anh Hµo Kim Kh¶i - NgÉu nhiªn hÖ ph¸i)",
		[18] = "Anh Hµo KhÝ Giíi - NgÉu nhiªn hÖ ph¸i",
		[19] = "Anh Hµo Hµi - NgÉu nhiªn hÖ ph¸i",
		[20] = "Anh Hµo Ngäc Béi - NgÉu nhiªn hÖ ph¸i",
		[21] = "Anh Hµo H¹ Giíi ChØ - NgÉu nhiªn hÖ ph¸i",
		[22] = "Bé trang bÞ Anh Hµo - NgÉu nhiªn hÖ ph¸i",
	}
	szDesc = szDesc..format("<color=yellow>%s<color>", tbItemName[n_param]);
	return szDesc;
end
