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
		tbVNGetGoldEquip:ShowEquipBranchDialog(8,tb)
	elseif n_param >= 12 and n_param <= 22 then
		tbVNGetGoldEquip:GetGoldEquip(8, random(1,25), tb)
	end	
	return 1
end

function GetDesc(nItem)	
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItem, 1 ))
	local tbItemName = 
	{
		[0]= "",
		[1] = "XÝch L©n H¹ng Liªn - Tù chän hÖ ph¸i",
		[2] = "XÝch L©n Ph¸t Qu¸n - Tù chän hÖ ph¸i",		
		[3] = "XÝch L©n Th­îng Giíi ChØ - Tù chän hÖ ph¸i",
		[4] = "XÝch L©n Hé UyÓn - Tù chän hÖ ph¸i",
		[5] = "XÝch L©n Yªu §¸i - Tù chän hÖ ph¸i",
		[6] = "XÝch L©n Kim Kh¶i - Tù chän hÖ ph¸i",
		[7] = "XÝch L©n KhÝ Giíi - Tù chän hÖ ph¸i",
		[8] = "XÝch L©n Hµi - Tù chän hÖ ph¸i",
		[9] = "XÝch L©n Ngäc Béi - Tù chän hÖ ph¸i",
		[10] = "XÝch L©n H¹ Giíi ChØ - Tù chän hÖ ph¸i",
		[11] = "Bé trang bÞ XÝch L©n - Tù chän hÖ ph¸i",
		[12] = "XÝch L©n H¹ng Liªn - NgÉu nhiªn hÖ ph¸i",
		[13] = "XÝch L©n Ph¸t Qu¸n - NgÉu nhiªn hÖ ph¸i",		
		[14] = "XÝch L©n Th­îng Giíi ChØ - NgÉu nhiªn hÖ ph¸i",
		[15] = "XÝch L©n Hé UyÓn - NgÉu nhiªn hÖ ph¸i",
		[16] = "XÝch L©n Yªu §¸i - NgÉu nhiªn hÖ ph¸i",
		[17] = "XÝch L©n Kim Kh¶i - NgÉu nhiªn hÖ ph¸i)",
		[18] = "XÝch L©n KhÝ Giíi - NgÉu nhiªn hÖ ph¸i",
		[19] = "XÝch L©n Hµi - NgÉu nhiªn hÖ ph¸i",
		[20] = "XÝch L©n Ngäc Béi - NgÉu nhiªn hÖ ph¸i",
		[21] = "XÝch L©n H¹ Giíi ChØ - NgÉu nhiªn hÖ ph¸i",
		[22] = "Bé trang bÞ XÝch L©n - NgÉu nhiªn hÖ ph¸i",
	}
	szDesc = szDesc..format("<color=yellow>%s<color>", tbItemName[n_param]);
	return szDesc;
end
