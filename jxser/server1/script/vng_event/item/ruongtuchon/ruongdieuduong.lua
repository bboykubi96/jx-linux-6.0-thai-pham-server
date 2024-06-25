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
		tbVNGetGoldEquip:ShowEquipBranchDialog(13,tb)
	elseif n_param >= 12 and n_param <= 22 then
		tbVNGetGoldEquip:GetGoldEquip(13, random(1,27), tb)
	end	
	return 1
end

function GetDesc(nItem)	
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItem, 1 ))
	local tbItemName = 
	{
		[0]= "",
		[1] = "DiÖu D­¬ng H¹ng Liªn - Tù chän hÖ ph¸i",
		[2] = "DiÖu D­¬ng Ph¸t Qu¸n - Tù chän hÖ ph¸i",		
		[3] = "DiÖu D­¬ng Th­îng Giíi ChØ - Tù chän hÖ ph¸i",
		[4] = "DiÖu D­¬ng Hé UyÓn - Tù chän hÖ ph¸i",
		[5] = "DiÖu D­¬ng Yªu §¸i - Tù chän hÖ ph¸i",
		[6] = "DiÖu D­¬ng Kim Kh¶i - Tù chän hÖ ph¸i",
		[7] = "DiÖu D­¬ng KhÝ Giíi - Tù chän hÖ ph¸i",
		[8] = "DiÖu D­¬ng Hµi - Tù chän hÖ ph¸i",
		[9] = "DiÖu D­¬ng Ngäc Béi - Tù chän hÖ ph¸i",
		[10] = "DiÖu D­¬ng H¹ Giíi ChØ - Tù chän hÖ ph¸i",
		[11] = "Bé trang bÞ DiÖu D­¬ng - Tù chän hÖ ph¸i",
		[12] = "DiÖu D­¬ng H¹ng Liªn - NgÉu nhiªn hÖ ph¸i",
		[13] = "DiÖu D­¬ng Ph¸t Qu¸n - NgÉu nhiªn hÖ ph¸i",		
		[14] = "DiÖu D­¬ng Th­îng Giíi ChØ - NgÉu nhiªn hÖ ph¸i",
		[15] = "DiÖu D­¬ng Hé UyÓn - NgÉu nhiªn hÖ ph¸i",
		[16] = "DiÖu D­¬ng Yªu §¸i - NgÉu nhiªn hÖ ph¸i",
		[17] = "DiÖu D­¬ng Kim Kh¶i - NgÉu nhiªn hÖ ph¸i)",
		[18] = "DiÖu D­¬ng KhÝ Giíi - NgÉu nhiªn hÖ ph¸i",
		[19] = "DiÖu D­¬ng Hµi - NgÉu nhiªn hÖ ph¸i",
		[20] = "DiÖu D­¬ng Ngäc Béi - NgÉu nhiªn hÖ ph¸i",
		[21] = "DiÖu D­¬ng H¹ Giíi ChØ - NgÉu nhiªn hÖ ph¸i",
		[22] = "Bé trang bÞ DiÖu D­¬ng - NgÉu nhiªn hÖ ph¸i",
	}
	szDesc = szDesc..format("<color=yellow>%s<color>", tbItemName[n_param]);
	return szDesc;
end
