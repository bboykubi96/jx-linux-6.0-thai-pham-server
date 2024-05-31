tbConfig = {}
tbConfig[1] = --Add NPC
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi Khëi §éng Server SÏ T¶i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thî May Hoµng Kim"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
	},
}
tbConfig[2] = --§èi tho¹i
{
	nId = 2,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thî May Hoµng Kim"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Shop Thiªn Th¹ch",3} },		
	--	{"AddDialogOpt",	{"N©ng CÊp Phi Phong",18} },
	--	{"AddDialogOpt",	{"Trïng LuyÖn Phi Phong",9} },
	},
}
tbConfig[3] = 
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C¸c H¹ H·y Chän Lo¹i Trang Søc Muèn N©ng CÊp"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"§æi Duyªn Qu©n + TuÖ Thanh (15 Ngµy)",4} },
		{"AddDialogOpt",	{"§ái Cµn Kh«n Song TuyÖt Béi",5} },
		{"AddDialogOpt",	{"§ái Cµn Kh«n Song TuyÖt Béi 7 Ngµy",6} },
	--	{"AddDialogOpt",	{"[Xuyªn Y Ph¸ Gi¸p CÊp 7] => [Xuyªn Y Ph¸ Gi¸p CÊp 8]",6} },
	--	{"AddDialogOpt",	{"[Xuyªn Y Ph¸ Gi¸p CÊp 8] => [Xuyªn Y Ph¸ Gi¸p CÊp 9]",7} },
	--	{"AddDialogOpt",	{"[Xuyªn Y Ph¸ Gi¸p CÊp 9] => [Xuyªn Y Ph¸ Gi¸p CÊp 10]",8} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi NhÉn Cµn Kh«n(15 Ngµy)",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 9",{tbProp={4,1325,1,1,0,0},},100 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=15*24*60,tbProp={0,208},},1,"[N©ng CÊp Ngo¹i Trang] [Duyªn Qu©n + TuÖ Thanh]"} },
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=15*24*60,tbProp={0,209},},1,"[N©ng CÊp Ngo¹i Trang] [Duyªn Qu©n + TuÖ Thanh]"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§ái Cµn Kh«n Song TuyÖt Béi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 9",{tbProp={4,1325,1,1,0,0},},100 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2219,1,0,0},},1,"[N©ng CÊp Ngo¹i Trang] [Cµn Kh«n Song TuyÖt Béi"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§ái Cµn Kh«n Song TuyÖt Béi 7 Ngµy",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 1",{tbProp={4,1317,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 2",{tbProp={4,1318,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 3",{tbProp={4,1319,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 4",{tbProp={4,1320,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 5",{tbProp={4,1321,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 6",{tbProp={4,1322,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 7",{tbProp={4,1323,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 8",{tbProp={4,1324,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 9",{tbProp={4,1325,1,1,0,0},},25 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4377,1,0,0},},1,"[N©ng CÊp Ngo¹i Trang] [Cµn Kh«n Song TuyÖt Béi 7 Ngµy"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Xuyªn Y Ph¸ Gi¸p CÊp 9",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Xuyªn Y Ph¸ Gi¸p CÊp 8",{tbProp={0,3995},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},5999} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2999} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3996},},1,"[N©ng CÊp Ngo¹i Trang] [Xuyªn Y Ph¸ Gi¸p CÊp 9]"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Xuyªn Y Ph¸ Gi¸p CÊp 10",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Xuyªn Y Ph¸ Gi¸p CÊp 9",{tbProp={0,3996},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},9999} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},150} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3997},},1,"[N©ng CÊp Ngo¹i Trang] [Xuyªn Y Ph¸ Gi¸p CÊp 10]"} },
	},
}
tbConfig[9] = 
{
	nId = 9,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C¸c H¹ H·y Chän Lo¹i Ngò Hµnh Ên Muèn N©ng CÊp"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Trïng LuyÖn Phi Phong CÊp 1",10} },
		{"AddDialogOpt",	{"Trïng LuyÖn Phi Phong CÊp 2",11} },
		--{"AddDialogOpt",	{"Trïng LuyÖn Phi Phong CÊp 3",12} },
		--{"AddDialogOpt",	{"Trïng LuyÖn Phi Phong CÊp 4",13} },
	--	{"AddDialogOpt",	{"[Ngò Hµnh Ên CÊp 9] => [Ngò Hµnh Ên CÊp 10]",14} },
	----	{"AddDialogOpt",	{"[Ngò Hµnh Ên CÊp 10] => [T©n NhËm Ên Gi¸m H¹]",15} },
	--	{"AddDialogOpt",	{"[T©n NhËm Ên Gi¸m H¹] => [T©n NhËm Ên Gi¸m Trung]",16} },
	---	{"AddDialogOpt",	{"[T©n NhËm Ên Gi¸m Trung => [T©n NhËm Ên Gi¸m Th­îng]",17} },
	},
}
tbConfig[10] = 
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ngò Hµnh Ên CÊp 6",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 1",{tbProp={0,3467},nQuality=1},1} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3467},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong CÊp 1]"} },
	},
}
tbConfig[11] = 
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong CÊp 2",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 2",{tbProp={0,3468},nQuality=1},1} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3468},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong CÊp 2]"} },
	},
}
tbConfig[12] = 
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong CÊp 3",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 1",{tbProp={0,3469},nQuality=1},1} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3469},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong CÊp 3]"} },
	},
}
tbConfig[13] = 
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong CÊp 4",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 4",{tbProp={0,3470},nQuality=1},1} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3470},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong CÊp 4]"} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ngò Hµnh Ên CÊp 10",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Ngò Hµnh Ên CÊp 9",{tbProp={0,3958},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},15000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3959},},1,"[N©ng CÊp Ngo¹i Trang] [Ngò Hµnh Ên CÊp 10]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T©n NhËm Ên Gi¸m H¹",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Ngò Hµnh Ên CÊp 10",{tbProp={0,3959},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},18000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},10000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3960},},1,"[N©ng CÊp Ngo¹i Trang] [T©n NhËm Ên Gi¸m H¹]"} },
	},
}
tbConfig[16] = 
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T©n NhËm Ên Gi¸m Trung",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"T©n NhËm Ên Gi¸m H¹",{tbProp={0,3960},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},21000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},20000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3961},},1,"[N©ng CÊp Ngo¹i Trang] [T©n NhËm Ên Gi¸m Trung]"} },
	},
}
tbConfig[17] = 
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T©n NhËm Ên Gi¸m Th­îng",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"T©n NhËm Ên Gi¸m trung",{tbProp={0,3961},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},24000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},5000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3962},},1,"[N©ng CÊp Ngo¹i Trang] [T©n NhËm Ên Gi¸m Th­îng]"} },
	},
}
tbConfig[18] = 
{
	nId = 18,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C¸c H¹ H·y Chän Lo¹i Trang Søc Muèn N©ng CÊp"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"[Phi Phong CÊp 1]",19} },
		{"AddDialogOpt",	{"[Phi Phong CÊp 1] => [Phi Phong CÊp 2]",20} },
	--	{"AddDialogOpt",	{"[Phi Phong CÊp 2] => [Phi Phong CÊp 3]",21} },
	--	{"AddDialogOpt",	{"[Phi Phong CÊp 3] => [Phi Phong CÊp 4]",22} },
	--	{"AddDialogOpt",	{"[Phi Phong K×nh Thiªn] => [Phi Phong V« Cùc]",23} },
	--	{"AddDialogOpt",	{"[Phi Phong V« Cùc] => [Phi Phong + 3 Kü N¨ng]",24} },
	},
}
tbConfig[19] = 
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong CÊp 1",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
	--	{"AddOneMaterial",	{"Phi Phong K×nh L«i",{tbProp={0,3932},nQuality=1},1} },
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 9",{tbProp={4,1325,1,1,0,0},},100 }},

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3467},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong CÊp 1]"} },
	},
}
tbConfig[20] = 
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong CÊp 2",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 1",{tbProp={0,3467},nQuality=1},1} },
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 9",{tbProp={4,1325,1,1,0,0},},100 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3468},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong CÊp 2]"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong CÊp 3",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
	--	{"AddOneMaterial",	{"Phi Phong PhÖ Quang",{tbProp={0,3468},nQuality=1},1} },
		{"AddOneMaterial",	{"Phi Phong CÊp 2",{tbProp={0,3468},nQuality=1},1} },
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 9",{tbProp={4,1325,1,1,0,0},},100 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3469},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong CÊp 3]"} },
	},
}
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong CÊp 4",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 4",{tbProp={0,3469},nQuality=1},1} },
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M¶nh Thiªn Th¹ch Sè 9",{tbProp={4,1325,1,1,0,0},},100 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3470},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong CÊp 4]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong V« Cùc",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong K×nh Thiªn",{tbProp={0,3936},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},15000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3937},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong V« Cùc]"} },
	},
}
tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong + 3 Kü N¨ng",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong V« Cùc",{tbProp={0,3937},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},18000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},5000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,5980},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong + 3 Kü N¨ng]"} },
	},
}
