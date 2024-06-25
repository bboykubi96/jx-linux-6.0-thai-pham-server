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
		[1] = "NguyÖt KhuyÕt H¹ng Liªn - Tù chän hÖ ph¸i",
		[2] = "NguyÖt KhuyÕt Ph¸t Qu¸n - Tù chän hÖ ph¸i",		
		[3] = "NguyÖt KhuyÕt Th­îng Giíi ChØ - Tù chän hÖ ph¸i",
		[4] = "NguyÖt KhuyÕt Hé UyÓn - Tù chän hÖ ph¸i",
		[5] = "NguyÖt KhuyÕt Yªu §¸i - Tù chän hÖ ph¸i",
		[6] = "NguyÖt KhuyÕt Kim Kh¶i - Tù chän hÖ ph¸i",
		[7] = "NguyÖt KhuyÕt KhÝ Giíi - Tù chän hÖ ph¸i",
		[8] = "NguyÖt KhuyÕt Hµi - Tù chän hÖ ph¸i",
		[9] = "NguyÖt KhuyÕt Ngäc Béi - Tù chän hÖ ph¸i",
		[10] = "NguyÖt KhuyÕt H¹ Giíi ChØ - Tù chän hÖ ph¸i",
		[11] = "Bé trang bÞ NguyÖt KhuyÕt - Tù chän hÖ ph¸i",
		[12] = "NguyÖt KhuyÕt H¹ng Liªn - NgÉu nhiªn hÖ ph¸i",
		[13] = "NguyÖt KhuyÕt Ph¸t Qu¸n - NgÉu nhiªn hÖ ph¸i",		
		[14] = "NguyÖt KhuyÕt Th­îng Giíi ChØ - NgÉu nhiªn hÖ ph¸i",
		[15] = "NguyÖt KhuyÕt Hé UyÓn - NgÉu nhiªn hÖ ph¸i",
		[16] = "NguyÖt KhuyÕt Yªu §¸i - NgÉu nhiªn hÖ ph¸i",
		[17] = "NguyÖt KhuyÕt Kim Kh¶i - NgÉu nhiªn hÖ ph¸i)",
		[18] = "NguyÖt KhuyÕt KhÝ Giíi - NgÉu nhiªn hÖ ph¸i",
		[19] = "NguyÖt KhuyÕt Hµi - NgÉu nhiªn hÖ ph¸i",
		[20] = "NguyÖt KhuyÕt Ngäc Béi - NgÉu nhiªn hÖ ph¸i",
		[21] = "NguyÖt KhuyÕt H¹ Giíi ChØ - NgÉu nhiªn hÖ ph¸i",
		[22] = "Bé trang bÞ NguyÖt KhuyÕt - NgÉu nhiªn hÖ ph¸i",
	}
	szDesc = szDesc..format("<color=yellow>%s<color>", tbItemName[n_param]);
	return szDesc;
end
