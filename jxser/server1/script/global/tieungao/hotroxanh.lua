
tbDoXanh =
{
	[1]=
	{
		szName = "D©y chuyÒn",
		tbEquip =
		{
			{"D©y chuyÒn n÷",0,4,0},
			{"D©y chuyÒn nam ",0,4,1},
		}
	},
	[2]=
	{
		szName = "¸o gi¸p",
		tbEquip =
		{
			{"Aã tang­ cÊp 6",0,2,0},
			{"Aã thæ cÊp 6",0,2,1},
			{"MËt trang nam cÊp 6",0,2,n2},
			{"Gi¸ng Sa Bµo cÊp 6",0,2,3},
			{"Gi¸p nam cÊp 6",0,2,4},
			{"V¹n L­u Quy T«ng Y cÊp 6",0,2,5},
			{"TuyÒn Long bµo cÊp 6",0,2,6},
			{"Long Tiªu ®¹o Y cÊp 6",0,2,8},
			{"Cöu VÜ B¹ch Hå trang cÊp 6",0,2,9},
			{"TrÇm H­¬ng sam c¸p 6",0,2,10},
			{"Gi¸p n÷ cÊp 6",0,2,11},
			{"V¹n Chóng TÒ T©m Y cÊp 6",0,2,12},
			{"L­u Tiªn QuÇn cÊp 6",0,2,13},
		}
	},
	[3]=
	{
		szName = "§ai l­ng",
		tbEquip =
		{
			{"Thiªn Tµm Yªu §¸i cÊp 6",0,6,0},
			{"B¹ch Kim Yªu §¸i cÊp 6",0,6,1},
		}
	},
	[4]=
	{
		szName = "Giµy",
		tbEquip =
		{
			{"Cöu TiÕt X­¬ng VÜ Ngoa cÊp 6",0,5,0},
			{"Thiªn Tµm Ngoa cÊp 6",0,5,1},
			{"Kim Lò hµi cÊp 6",0,5,2},
			{"Phi Phông Ngoa cÊp 6",0,5,3},
		}
	},
	[5]=
	{
		szName = "Bao tay",
		tbEquip =
		{
			{"Long Phông HuyÕt Ngäc Tr¹c cÊp 6",0,8,0},
			{"Thiªn Tµm Hé UyÓn cÊp 6",0,8,1},
		}
	},
	[6]=
	{
		szName = "Nãn",
		tbEquip =
		{
			{"Tú L« m·o cÊp 6",0,7,0},
			{"Ngò l·o qu¸n cÊp 6",0,7,1},
			{"Tu La Ph¸t kÕt cÊp 6",0,7,2},
			{"Th«ng Thiªn Ph¸t Qu¸n cÊp 6",0,7,3},
			{"YÓm NhËt kh«i cÊp 6",0,7,4},
			{"TrÝch Tinh hoµn cÊp 6",0,7,5},
			{"¤ Tµm M·o",0,7,6},
			{"Quan ¢m Ph¸t Qu¸n cÊp 6",0,7,7},
			{"¢m D­¬ng V« Cùc qu¸n cÊp 6",0,7,8},
			{"HuyÒn Tª DiÖn Tr¸o cÊp 6",0,7,9},
			{"Long HuyÕt §Çu hoµn cÊp 6",0,7,10},
			{"Long L©n Kh«i cÊp 6",0,7,11},
			{"Thanh Tinh Thoa cÊp 6",0,7,12},
			{"Kim Phông TriÓn SÝ cÊp 6 ",0,7,13},
		}
	},
	[7]=
	{
		szName = "Vò khÝ c©n chiÕn",
		tbEquip =
		{
			{"KiÕm",0,0,0},
			{"§ao",0,0,1},
			{"Bæng",0,0,2},
			{"KÝch",0,0,3},
			{"chïy",0,0,4},
			{"Song ®ao",0,0,5},
		}
	},
	[8]=
	{
		szName = "Ngäc béi",
		tbEquip =
		{
			{"H­¬ng Nang n÷",0,9,0},
			{"Ngäc béi nam",0,9,1},
		}
	},
	[9]=
	{
		szName = "Vò khÝ tÇm xa",
		tbEquip =
		{
			{"Tiªu",0,1,0},
			{"Phi §ao",0,1,1},
			{"Ná",0,1,2},
		}
	},
	[10]=
	{
		szName = "NhÉn",
		tbEquip =
		{
			{"Giíi ChØ ",0,3,0},
		}
	},
}
function hotroxanh()
	if check_faction() == 1 then
		Talk(1, "", "Gia nhËp m«n ph¸i míi cã thÓ nhËn trang bÞ ")
		return
	end
	local tbOpt = {}
	for i=1, getn(tbDoXanh) do
		tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
	end
	
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	CreateNewSayEx("<npc>Xin mêi lùa chän trang bÞ:", tbOpt)
end
function laydoxanh1(nType)
	local tbEquip = %tbDoXanh[nType]["tbEquip"]
	local tbOpt = {}
	for i=1, getn(tbEquip) do
		tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
	end
	
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	local szTitle = format("<npc>Xin mêi lùa chän trang bÞ:")
	CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
	local tbOpt = {}
	tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
	tinsert(tbOpt, {"Méc", laydoxanh3, {nIndex, nType, 1}})
	tinsert(tbOpt, {"Thñy", laydoxanh3, {nIndex, nType, 2}})
	tinsert(tbOpt, {"Háa", laydoxanh3, {nIndex, nType, 3}})
	tinsert(tbOpt, {"Thæ ", laydoxanh3, {nIndex, nType, 4}})
	
	
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	local szTitle = format("<npc>Chän hÖ:")
	CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
	--g_AskClientNumberEx(0, 10, "Sè l­îng:", {laydoxanh4, {nIndex, nType, nSeries}})
	laydoxanh4(nIndex, nType, nSeries,1)
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
	if nCount > 1 then
		Say("MAX COUNT")
		return
	end
	local taskdoxanh = GetTask(1401)
	if taskdoxanh < 1  then
		Say("B¹n chu¨ nhËn code th©n thñ! Xin h·y nhËn code t©n thñ tr­íc!")
		return
		
	end
	if taskdoxanh >= 10 then
		Say("B¹n ®· lÊy ®óng 10 mãn råi nªn kh«ng thÓ lÊy thªm")
		return
	end
	local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
	
		local ItemIndex = AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 6, nSeries, 100, 10) 
		SetItemBindState(ItemIndex,-2)
		SetTask(1401, GetTask(1401) + 1) 
end
