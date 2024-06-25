tbConfig = {}
tbConfig[1] = --Add NPC
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi Khëi §éng Server SÏ T¶i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
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
	tbMessageParam = {"¤ng L·o Nu«i Ngùa"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"[Phiªn Vò] => [B¹ch Hæ]",3} },	
--		{"AddDialogOpt",	{"[Phiªn Vò] => [XÝch Long C©u TruyÒn ThuyÕt]",4} },
--		{"AddDialogOpt",	{"[XÝch Long C©u TruyÒn ThuyÕt] => [S­ Tö TruyÒn ThuyÕt]",5} },
	--{"AddDialogOpt",	{"[S­ Tö TruyÒn ThuyÕt HoÆc Cäp] => [Ngùa 1 Skill  TruyÒn ThuyÕt]",6} },
---	{"AddDialogOpt",	{"[Ngù Phong TruyÒn ThuyÕt] => [H·n HuyÕt TruyÒn ThuyÕt]",7} },
	},
}
tbConfig[3] = 
{
	nId = 3,
	szMessageType = "CreateCompose",
	szName = "Ng­êi Nu«i D¹y Thó",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Sö Tö Hoµng Kim",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"C¸c H¹ Kh«ng §ñ 10 ¤ Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
        -- {"AddOneMaterial",	{"Phiªn Vò",{tbProp={0,9377},nQuality=1},1} },
        {"AddOneMaterial",	{"Phiªn Vò",{tbProp={0,10,7,10},},1} },
		{"AddOneMaterial",	{"ThuÇn thó quyÓn",{tbProp={6,1,8010,1},},2} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},1500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,9380},},1,"[N©ng CÊp ThÇn Thó] [B¹ch Hæ]"} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "Ng­êi Nu«i D¹y Thó",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"xÝch long c©u",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"C¸c H¹ Kh«ng §ñ 10 ¤ Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"phiªn vò TruyÒn ThuyÕt",{tbProp={0,4947},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},4000} },
	         {"AddOneMaterial",	{"M· bµi -xÝch long c©u",{tbProp={6,1,30214,1,0,0},},1} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},3000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,4948},},1,"[N©ng CÊp ThÇn Thó] [xÝch long c©u]"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Ng­êi Nu«i D¹y Thó",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"S­ Tö TruyÒn ThuyÕt",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"C¸c H¹ Kh«ng §ñ 10 ¤ Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"xÝch long c©u TruyÒn ThuyÕt",{tbProp={0,4948},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},4000} },
	         {"AddOneMaterial",	{"M· bµi -S­ Tö ",{tbProp={6,1,30215,1,0,0},},1} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},3000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,4949},},1,"[N©ng CÊp ThÇn Thó] [S­ Tö TruyÒn ThuyÕt]"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Ng­êi Nu«i D¹y Thó",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ngôa 1 skill TruyÒn ThuyÕt",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"C¸c H¹ Kh«ng §ñ 10 ¤ Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"S­ Tö Ho¹c Cäp TruyÒn ThuyÕt",{tbProp={0,{2840,3109}},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},5000} },
	         {"AddOneMaterial",	{"M· bµi - L¹C ®µ ",{tbProp={6,1,30219,1,0,0},},1} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},3000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,4912},},1,"[N©ng CÊp ThÇn Thó] [Ngôa 1 skill TruyÒn ThuyÕt]"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Ng­êi Nu«i D¹y Thó",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H·n HuyÕt TruyÒn ThuyÕt",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"C¸c H¹ Kh«ng §ñ 10 ¤ Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Ngù Phong TruyÒn ThuyÕt",{tbProp={0,3945},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},6000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},3000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3946},},1,"[N©ng CÊp ThÇn Thó] [H·n HuyÕt TruyÒn ThuyÕt]"} },
	},
}
