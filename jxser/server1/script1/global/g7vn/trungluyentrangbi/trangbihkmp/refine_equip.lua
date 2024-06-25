Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\g7vn\\trungluyentrangbi\\trangbihkmp\\equiptable.lua")

tbBaiHuRefineEquip = tbActivityCompose:new()

tbBaiHuRefineList = 
{
	[1]= {szName="Trang BÞ HKMP", nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
--	[2]= {szName="HKMP Kh«i",   nStone = 1, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	--[3]= {szName="HKMP Th­îng Giíi ChØ", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
	--[4]= {szName="HKMP Hé UyÓn", nStone = 1, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
	--[5]= {szName="HKMP Yªu §¸i", nStone = 2, nWidth = 2, nHeight = 1, nFreeItemCellLimit = 1},
	--[6]= {szName="HKMP Y Phôc",   nStone = 3, nWidth = 2, nHeight = 3, nFreeItemCellLimit = 1},
--	[7]= {szName="HKMP Vò KhÝ", nStone = 4, nWidth = 2, nHeight = 4, nFreeItemCellLimit = 1},
	--[8]= {szName="HKMP Hµi",   nStone = 3, nWidth = 2, nHeight = 2, nFreeItemCellLimit = 1},
--	[9]= {szName="HKMP Béi",   nStone = 3, nWidth = 1, nHeight = 2, nFreeItemCellLimit = 1},
--	[10]={szName="HKMP H¹ Giíi ChØ", nStone = 2, nWidth = 1, nHeight = 1, nFreeItemCellLimit = 1},
}

function tbBaiHuRefineEquip:ComposeGiveUI()
	
	local szTitle = format("  %-15s\t%s", "Trang bÞ HKMP","Trïng LuyÖn Ngäc \nTrang bÞ HKMP")
	local strDesc = format("   %-21s\t%d", "Mang Nguyªn LiÖu Bá Vµo D©y ", 2)
	
	g_GiveItemUI(szTitle, strDesc, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function tbBaiHuRefineEquip:Compose(nComposeCount)
	local nCurTime = GetCurServerTime()
	nComposeCount = nComposeCount or 1
	
	if type(self.tbFormula.pLimitFun) == "function" then
		if self.tbFormula:pLimitFun(nComposeCount) ~= 1 then
			return 0
		end
	end
	
	-- xet cai gi do
  local tbRoomItems =  self:GetRoomItems(self.nRoomType) --  cai gi do
	local tbGoldEquip = nil
	local nEquType = 0		-- mac dinh
	local nEqIndex = 0
	for i = 1, getn(tbRoomItems) do 
		nItemQuality = GetItemQuality(tbRoomItems[i])
		local nItemTime = ITEM_GetExpiredTime(tbRoomItems[i])
		local nTimeLeftCount=(nItemTime - nCurTime)/(60*60*24)
	--	Msg2Player("---"..nTimeLeftCount.."-----")
		--cai gi do
		if nItemQuality == 1 then
		tbEquip_Hkmp1= {
	[1] = {
	{szName="Méng Long ChÝnh Hång T¨ng M·o",tbProp={0,1,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60},
	{szName="Méng Long Kim Ti ChÝnh Hång Cµ Sa",tbProp={0,2,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Méng Long HuyÒn Ti Ph¸t ®¸i",tbProp={0,3,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Méng Long PhËt Ph¸p HuyÒn Béi",tbProp={0,4,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Méng Long §¹t Ma T¨ng hµi",tbProp={0,5,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Phôc Ma Tö Kim C«n",tbProp={0,6,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Phôc Ma HuyÒn Hoµng Cµ Sa",tbProp={0,7,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Phôc Ma ¤ Kim NhuyÔn §iÒu",tbProp={0,8,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Phôc Ma PhËt T©m NhuyÔn KhÊu",tbProp={0,9,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Phôc Ma Phæ §é T¨ng hµi",tbProp={0,10,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Tø Kh«ng Gi¸ng Ma Giíi ®ao",tbProp={0,11,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Tø Kh«ng Tö Kim Cµ Sa",tbProp={0,12,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Tø Kh«ng Hé ph¸p Yªu ®¸i",tbProp={0,13,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Tø Kh«ng NhuyÔn B× Hé UyÓn",tbProp={0,14,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Tø Kh«ng Giíi LuËt Ph¸p giíi",tbProp={0,15,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",tbProp={0,16,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p",tbProp={0,17,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="H¸m Thiªn Uy Vò Thóc yªu ®¸i",tbProp={0,18,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn",tbProp={0,19,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="H¸m Thiªn Thõa Long ChiÕn Ngoa",tbProp={0,20,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="KÕ NghiÖp B«n L«i Toµn Long th­¬ng",tbProp={0,21,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",tbProp={0,22,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="KÕ NghiÖp B¹ch Hæ V« Song khÊu",tbProp={0,23,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="KÕ NghiÖp HáaV©n Kú L©n Thñ ",tbProp={0,24,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",tbProp={0,25,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ngù Long L­îng Ng©n B¶o ®ao",tbProp={0,26,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p",tbProp={0,27,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ngù Long Thiªn M«n Thóc Yªu hoµn",tbProp={0,28,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ngù Long TÊn Phong Hé yÓn",tbProp={0,29,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ngù Long TuyÖt MÖnh ChØ hoµn",tbProp={0,30,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« Gian û Thiªn KiÕm",tbProp={0,31,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« Gian Thanh Phong Truy Y",tbProp={0,32,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« Gian PhÊt V©n Ti ®¸i",tbProp={0,33,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« Gian CÇm VËn Hé UyÓn",tbProp={0,34,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« Gian B¹ch Ngäc Bµn ChØ ",tbProp={0,35,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« Ma Ma Ni qu¸n",tbProp={0,36,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« Ma Tö Kh©m Cµ Sa",tbProp={0,37,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« Ma B¨ng Tinh ChØ Hoµn",tbProp={0,38,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« Ma TÈy T­îng Ngäc KhÊu ",tbProp={0,39,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« Ma Hång Truy NhuyÔn Th¸p hµi",tbProp={0,40,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« TrÇn Ngäc N÷ Tè T©m qu¸n",tbProp={0,41,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",tbProp={0,42,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« TrÇn Tõ Bi Ngäc Ban ChØ ",tbProp={0,43,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi",tbProp={0,44,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="V« TrÇn PhËt Quang ChØ Hoµn",tbProp={0,45,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Tª Hoµng Phông Nghi ®ao",tbProp={0,46,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Tª Hoµng TuÖ T©m Khinh Sa Y",tbProp={0,47,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",tbProp={0,48,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Tª Hoµng B¨ng Tung CÈm uyÓn",tbProp={0,49,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Tª Hoµng Thóy Ngäc ChØ Hoµn",tbProp={0,50,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao",tbProp={0,51,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="BÝch H¶i Hoµn Ch©u Vò Liªn",tbProp={0,52,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="BÝch H¶i Hång Linh Kim Ti ®¸i",tbProp={0,53,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="BÝch H¶i Hång L¨ng Ba",tbProp={0,54,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="BÝch H¶i Khiªn TÕ ChØ hoµn",tbProp={0,55,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="U Lung Kim Xµ Ph¸t ®¸i",tbProp={0,56,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="U Lung XÝch YÕt MËt trang",tbProp={0,57,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="U Lung Thanh Ng« TriÒn yªu",tbProp={0,58,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="U Lung Ng©n ThÒm Hé UyÓn",tbProp={0,59,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="U Lung MÆc Thï NhuyÔn Lý ",tbProp={0,60,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Minh ¶o Tµ S¸t §éc NhËn",tbProp={0,61,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Minh ¶o U §éc ¸m Y",tbProp={0,62,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Minh ¶o §éc YÕt ChØ Hoµn",tbProp={0,63,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Minh ¶o Hñ Cèt Hé uyÓn",tbProp={0,64,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Minh ¶o Song Hoµn Xµ Hµi",tbProp={0,65,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Chó Ph­îc Ph¸ gi¸p ®Çu hoµn",tbProp={0,66,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Chó Ph­îc DiÖt L«i C¶nh Phï ",tbProp={0,67,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Chó Ph­îc U ¶o ChØ Hoµn",tbProp={0,68,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Chó Ph­îc Xuyªn T©m §éc UyÓn",tbProp={0,69,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",tbProp={0,70,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B¨ng Hµn §¬n ChØ Phi §ao",tbProp={0,71,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B¨ng Hµn HuyÒn Y Thóc Gi¸p",tbProp={0,72,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B¨ng Hµn T©m TiÔn Yªu KhÊu",tbProp={0,73,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",tbProp={0,74,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="B¨ng Hµn NguyÖt ¶nh Ngoa",tbProp={0,75,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Thiªn Quang Hoa Vò M¹n Thiªn",tbProp={0,76,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ",tbProp={0,77,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Thiªn Quang S©m La Thóc §¸i",tbProp={0,78,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",tbProp={0,79,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",tbProp={0,80,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S©m Hoang Phi Tinh §o¹t Hån",tbProp={0,81,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",tbProp={0,82,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S©m Hoang Hån Gi¶o Yªu Thóc",tbProp={0,83,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi",tbProp={0,84,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S©m Hoang Tinh VÉn Phi Lý ",tbProp={0,85,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",tbProp={0,86,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",tbProp={0,87,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",tbProp={0,88,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§Þa Ph¸ch KhÊu T©m tr¹c",tbProp={0,89,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",tbProp={0,90,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§ång Cõu Phi Long §Çu hoµn",tbProp={0,91,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§ång Cõu Gi¸ng Long C¸i Y",tbProp={0,92,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§ång Cõu TiÒm Long Yªu §¸i",tbProp={0,93,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§ång Cõu Kh¸ng Long Hé UyÓn",tbProp={0,94,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§ång Cõu KiÕn Long Ban ChØ ",tbProp={0,95,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§Þch Kh¸i Lôc Ngäc Tr­îng",tbProp={0,96,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§Þch Kh¸i Cöu §¹i C¸i Y",tbProp={0,97,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§Þch Kh¸i TriÒn M·ng yªu ®¸i",tbProp={0,98,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§Þch Kh¸i CÈu TÝch B× Hé uyÓn",tbProp={0,99,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="§Þch Kh¸i Th¶o Gian Th¹ch giíi",tbProp={0,100,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma S¸t Quû Cèc U Minh Th­¬ng",tbProp={0,101,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",tbProp={0,102,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma S¸t XÝch Ký Táa Yªu KhÊu",tbProp={0,103,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma S¸t Cö Háa Liªu Thiªn uyÓn",tbProp={0,104,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma S¸t V©n Long Thæ Ch©u giíi",tbProp={0,105,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Hoµng Kim Gi¸p Kh«i",tbProp={0,106,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",tbProp={0,107,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Hoµng Khª Cèc Thóc yªu ®¸i",tbProp={0,108,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Hoµng HuyÕt Y Thó Tr¹c",tbProp={0,109,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma Hoµng §¨ng §¹p Ngoa",tbProp={0,110,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma ThÞ LiÖt DiÖm Qu¸n MiÖn",tbProp={0,111,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma ThÞ LÖ Ma PhÖ T©m Liªn",tbProp={0,112,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma ThÞ NghiÖp Háa U Minh Giíi",tbProp={0,113,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={0,114,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Ma ThÞ s¬n  H¶i Phi Hång Lý ",tbProp={0,115,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,116,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L¨ng Nh¹c V« Ng· ®¹o bµo",tbProp={0,117,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L¨ng Nh¹c Né L«i Giíi",tbProp={0,118,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",tbProp={0,119,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",tbProp={0,120,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="CËp Phong Ch©n Vò KiÕm",tbProp={0,121,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="CËp Phong Tam Thanh Phï ",tbProp={0,122,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="CËp Phong HuyÒn Ti Tam §o¹n cÈm",tbProp={0,123,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",tbProp={0,124,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="CËp Phong Thanh Tïng Ph¸p giíi",tbProp={0,125,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",tbProp={0,126,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo",tbProp={0,127,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S­¬ng Tinh Thanh Phong Lò ®¸i",tbProp={0,128,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ",tbProp={0,129,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="S­¬ng Tinh Phong B¹o chØ hoµn",tbProp={0,130,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L«i Khung Hµn Tung B¨ng B¹ch quan",tbProp={0,131,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L«i Khung Thiªn §Þa Hé phï ",tbProp={0,132,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L«i Khung Phong L«i Thanh CÈm ®¸i",tbProp={0,133,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L«i Khung Linh Ngäc UÈn L«i",tbProp={0,134,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="L«i Khung Cöu Thiªn DÉn L«i giíi",tbProp={0,135,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Vô ¶o B¾c Minh §¹o qu¸n",tbProp={0,136,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Vô ¶o Ki B¸n phï chó ",tbProp={0,137,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Vô ¶o Thóc T©m chØ hoµn",tbProp={0,138,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",tbProp={0,139,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	{szName="Vô ¶o Tung Phong TuyÕt ¶nh ngoa",tbProp={0,140,},nQuality=1,nExpiredTime=nTimeLeftCount*24*60,},
	},
}

			nEqIndex = GetGlodEqIndex(tbRoomItems[i])
			if nEqIndex >= 1 and nEqIndex <= 140 then -- ID trang bi tu bao nhieu den bao nhieu xem trong ex_goldequi_head
				--cai gi do
				local nBindState = GetItemBindState(tbRoomItems[i])
				if nBindState ~= 0 then
					Say("Trang bÞ cña ng­¬i ®ang trong tr¹ng th¸i khãa, kh«ng thÓ trïng luyÖn.")
					return 0
				end
				
				--cai gi do
				local nG, _, _ = GetItemProp(tbRoomItems[i])
				if nG == 7 then
					Say("Trang bÞ cña ng­¬i ®· bÞ h­ h¹i kh«ng thÓ trïng luyÖn.")
					return 0
				end
				
				nEquType = 1 -----------------trung luyen ID trang bi
				tbGoldEquip = {0, nEqIndex}
				break
			end
		end	
	end
	
	if tbGoldEquip == nil then
		Say("Ng­¬i ch­a ®Æt trang bÞ HKMP nµo vµo ®©y c¶ 8.")
		return 0	
	end
		
	--local nFreeItemCellLimit = tbBaiHuRefineList[nEquType].nFreeItemCellLimit or 1
	
	--nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	
	--if tbBaiHuRefineList[nEquType].nWidth ~= 0 and tbBaiHuRefineList[nEquType].nHeight ~= 0 and CountFreeRoomByWH(tbBaiHuRefineList[nEquType].nWidth, tbBaiHuRefineList[nEquType].nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
	--	Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, tbBaiHuRefineList[nEquType].nWidth, tbBaiHuRefineList[nEquType].nHeight))
	--	return 0
--	end	

  local tbItem = {szName = "Ngäc Trïng LuyÖn", tbProp = {6,1,30104,1,0,0}, nCount = 1} ----------------------------ID ngoc trung luyen
  local nCount = self:CalcItemCount(tbRoomItems, tbItem)
  if nCount < tbBaiHuRefineList[nEquType].nStone then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>HKMP Trïng LuyÖn Ngäc mµ ng­¬i ®Æt vµo kh«ng ®ñ. <color>"
		Talk(1, "", szMsg)
		return 0;
  end
	
	local nIdx = floor((nEqIndex - 1)/10) + 1 ----------------------ID trung luyen trang bi
	local tbProduct = tbEquip_Hkmp1[1][nEqIndex] --------------------lay danh sach ID ra --------tbEquip_BaiHu trong table
	local tbMaterial = {{szName = tbProduct.szName, tbProp = tbGoldEquip, nCount = 1}, tbItem}

	if self:ConsumeMaterial(tbMaterial, nComposeCount, self.szLogTitle) ~= 1 then
		--Say("noi gi do",0)
		Msg2Player("ChÕ t¹o thÊt b¹i, mÊt ®i mét sè nguyªn liÖu.")
		return 0;
	end
	

	tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount)
	Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> Trïng LuyÖn Thµnh C«ng <color=green>Trang BÞ HKMP!")
	if type(self.tbFormula.pProductFun) == "function" then
		self.tbFormula:pProductFun(nComposeCount)
	end
	return 1;
end

function refine_HKMP()
		
	local strDesc = "<npc>LÊy <color=yellow>trang bÞ HKMP <color> muèn trïng luyÖn  vµ sè l­îng <color=yellow> Ngäc Trïng LuyÖn<color> t­¬ng øng ®Æt vµo phÝa d­íi"
	local tbOpt = {}
	local tbMate =	{
			tbMaterial = 
			{
				{szName = "Trang bÞ HKMP", tbProp = {0, {1,140}}, nQuality = 1 },----------------------ID trung luyen trang bi tu ID dau ----cuoi
				{szName = "Ngäc Trïng LuyÖn", tbProp = {6,1,30104,1,0,0},}, ----------------------------ID ngoc trung luyen
			},
			tbProduct = {szName="Trang bÞ HKMP", tbProp={0, {1,140}}}, --------------------------------------------ID trung luyen trang bi tu ID dau --- cuoi
		}
	local p = tbBaiHuRefineEquip:new(tbMate, "BaiHuRefineEquip", INVENTORY_ROOM.room_giveitem)-------------BaiHu
	tinsert(tbOpt, {"Trïng luyÖn trang bÞ HKMP", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"Hñy bá "})
	CreateNewSayEx(strDesc, tbOpt);
end
