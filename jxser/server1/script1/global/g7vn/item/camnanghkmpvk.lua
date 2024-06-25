Include("\\script\\lib\\awardtemplet.lua")

tbPirate_Box_Key_Require = {
	["nguhanhkythach"] = {6, 1, 2125},
}

tbPirateBoxNewAward = 
{	
	["nguhanhkythach"] = 
	{
		{szName = "§å phæ Hoµng Kim - Phôc Ma Tö Kim C«n", tbProp={6,1,244,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - Tø Kh«ng Gi¸ng Ma Giíi §ao", tbProp={6,1,249,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy", tbProp={6,1,254,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - KÕ NghiÖp B«n L«i Toµn Long Th­¬ng", tbProp={6,1,259,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - Ngù Long L­îng Ng©n B¶o §ao", tbProp={6,1,264,1,1,0,0}, nCount=1,nRate=5.2},

		{szName = "§å phæ Hoµng Kim - V« Gian û Thiªn KiÕm", tbProp={6,1,269,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - V« Ma TÈy T­îng Ngäc KhÊu", tbProp={6,1,277,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - Tª Hoµng Phông Nghi §ao", tbProp={6,1,284,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao", tbProp={6,1,289,1,1,0,0}, nCount=1,nRate=5.2},

		{szName = "§å phæ Hoµng Kim - Minh ¶o Tµ S¸t §éc NhËn", tbProp={6,1,299,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - B¨ng Hµn §¬n ChØ Phi §ao", tbProp={6,1,309,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - Thiªn Quang Hoa Vò M¹n Thiªn", tbProp={6,1,314,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - S©m Hoang Phi Tinh §o¹t Hån", tbProp={6,1,319,1,1,0,0}, nCount=1,nRate=5.2},

		{szName = "§å phæ Hoµng Kim - §ång Cõu Kh¸ng Long Hé UyÓn", tbProp={6,1,332,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - §Þch Kh¸i Lôc Ngäc Tr­îng", tbProp={6,1,334,1,1,0,0}, nCount=1,nRate=5.2},
		{szName = "§å phæ Hoµng Kim - Ma S¸t Quû Cèc U Minh Th­¬ng	", tbProp={6,1,339,1,1,0,0}, nCount=1,nRate=5.2},

		{szName = "§å phæ hoµng kim - L¨ng Nh¹c Th¸i Cùc KiÕm", tbProp={6,1,354,1,1,0,0}, nCount=1,nRate=5.6},
		{szName = "§å phæ Hoµng Kim - CËp Phong Ch©n Vò KiÕm", tbProp={6,1,359,1,1,0,0}, nCount=1,nRate=5.6},
		{szName = "§å phæ Hoµng Kim - S­¬ng Tinh Thiªn Niªn Hµn ThiÕt", tbProp={6,1,364,1,1,0,0}, nCount=1,nRate=5.6},
	},	
}

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)
	
	--dofile("script/global/g7vn/item/camnanghkmpvk.lua")

	local tbKey2 = tbPirate_Box_Key_Require["nguhanhkythach"]
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount2 < 15 then
		Say("CÇn ph¶i cã 15 ngò hµnh kú th¹ch", 1, "§ãng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tbOpt = {}
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("Sö dông 15 ngò hµnh kú th¹ch/#VnPirateBoxGiveAward(%d, '%s')", nIndexItem, "nguhanhkythach"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "§ãng/Oncancel")
		Say("Sö dông 15 ngò hµnh kú th¹ch ®Ó më:", getn(tbOpt), tbOpt)
	end
	return 1	
end
function Oncancel()end

function VnPirateBoxGiveAward(nItemIdx, strKeyType)
	local tbKey = tbPirate_Box_Key_Require[strKeyType]
	local tbAward = tbPirateBoxNewAward[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 15, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("CÇn ph¶i 15 ngò hµnh kú th¹ch ®Ó më", 1, "§ãng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 4339, -1) ~= 1 then
		Say("Kh«ng t×m thÊy CÈm Nang §å Phæ Vò KhÝ Hoµng Kim", 1, "§ãng/no")
		return
	end

	--if GetLevel() > 100 and  GetLevel() < 155 then
	--	local tbExpAward = 
	--	{
	--		[1] = {szName = "§iÓm kinh nghiÖm", nExp_tl = 1000000000},
	--	}
	--	tbAwardTemplet:Give(tbExpAward, 1 , {"ThuongThemMoCamnanghkmp", "ThuongThemMoCamnanghkmp"})
	--end

	tbAwardTemplet:Give(tbAward, 1, {"MoCamNangDoPhoVKHKMP", "MoCamNangDoPhoVKHKMP"})		
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· më <color=yellow>CÈm Nang §å Phæ Vò KhÝ Hoµng Kim <color> thµnh c«ng")
end