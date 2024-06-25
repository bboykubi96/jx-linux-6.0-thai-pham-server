Include("\\script\\activitysys\\config\\1007\\variables.lua")
tbConfig = {}

--C¸ch kiÕm nguyªn liÖu trong c¸c ho¹t ®éng
tbConfig[1] = --Tèng kim 1000 ®iÓm
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 1000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_PNVN", "TongKim1000"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TongKim1000", "25 Hoµng Th¹ch", 1}},
	},
}

tbConfig[2] = --Tèng kim 3000 ®iÓm
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},60,"Event_PNVN", "TongKim3000"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TongKim3000", "50 Hoµng Th¹ch", 1}},
	},
}

tbConfig[3] =		--V­ît ¶i 17
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 17",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_PNVN", "VuotAi17"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAi17", "25 Hoµng Th¹ch", 1}},
	},
}

tbConfig[4] =  				--V­ît ¶i 28
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 28",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},50,"Event_PNVN", "VuotAi28"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAi28", "50 Hoµng Th¹ch", 1}},
	},
}

tbConfig[5] = --Thñy tÆc ®Çu lÜnh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt chÕt 1 thñy tÆc ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},25,"Event_PNVN", "TieuDietThuyTacDauLinh"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietThuyTacDauLinh", "25 Hoµng Th¹ch", 1}},
	},
}

tbConfig[6] = --thuû tÆc ®¹i ®Çu lÜnh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt thuû tÆc ®¹i ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},50,"Event_PNVN", "TieuDietThuyTacDaiDauLinh"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietThuyTacDaiDauLinh", "50 Hoµng Th¹ch", 1}},
	},
}

tbConfig[7] = --Viªm ®Õ - v­ît ¶i thø 10
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V­ît qua ¶i Viªm §Õ thø 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},50,"Event_PNVN", "VuotAiViemDe10"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAiViemDe10", "50 Hoµng Th¹ch", 1}},
	},
}
tbConfig[8] = --Boss Hoµng Kim
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt boss Hoµng Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},50,"Event_PNVN", "TieuDietBossTheGioi"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossTheGioi", "50 Hoµng Th¹ch", 1}},
	},
}
tbConfig[9] = --boss s¸t thñ
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô s¸t thñ cÊp 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},35,"Event_PNVN", "TieuDietBossS¸tThñ"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossSatThu", "15 Hoµng Th¹ch", 1}},
	},
}

---§èi tho¹i víi Npc
tbConfig[10] =
{
	nId = 10,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo TiÓu Ph­¬ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"TiÓu Ph­¬ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nép Hoµng Th¹ch",12} },
		{"AddDialogOpt",	{"Hîp thµnh B¨ng Tinh Th¹ch",11} },
		{"AddDialogOpt",	{"TÆng bã hoa hång",16} },
	},
}

tbConfig[11] = --Hîp thµnh B¨ng Tinh Th¹ch
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh B¨ng Tinh Th¹ch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B¨ng Tinh Th¹ch",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"Hoµng Th¹ch",{tbProp={6,1,30153,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
		{"AddOneMaterial",	{"Thiªn Tinh Th¹ch",{tbProp={6,1,30154,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30155,1,0,0},nExpiredTime=nItemExpiredTime,},1,"Event_PNVN", "GhepBangTinhThach"} },
	},
}

tbConfig[12] = --Nép vËt phÈm Hoµng Th¹ch
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Nép vËt phÈm Hoµng Th¹ch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Nép vËt phÈm Hoµng Th¹ch",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"Dang cap yeu cau 50 tro len",">="} },
		{"ThisActivity:HandInHoangThachLimit", {nil}},
		{"AddOneMaterial",	{"Hoµng Th¹ch",{tbProp={6,1,30153,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },		
	},
	tbActition = 
	{
		{"ThisActivity:HandInHoangThach", {nil}},
	},
}

tbConfig[13] = --sö dông B¨ng Tinh Th¹ch
{
	nId = 13,
	szMessageType = "ItemScript",
	szName = "Sö dông B¨ng Tinh Th¹ch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30155,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"Dang cap yeu cau 50 tro len",">="} },
		{"PlayerFunLib:VnCheckInCity", {"default"}},
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },		
		{"ThisActivity:UseBTT_Limit", {nil}},
	},
	tbActition = 
	{
		{"ThisActivity:Use_BTT", {nil}},		
	},
}

---§èi tho¹i víi Npc
tbConfig[14] =
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Thî GhÐp Hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thî GhÐp Hoa"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"GhÐp bã hoa Hång",15} },
		{"AddDialogOpt",	{"NhËn th­ëng ®¹t mèc 1000 event",30} },
	},
}

tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "GhÐp bã hoa hång",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Bã Hoa Hång",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"Hoa Hång",{tbProp={6,1,4285,1,0,0},nExpiredTime=nItemExpiredTime,},5} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},150000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4284,1,0,0},nExpiredTime=nItemExpiredTime,},1,"Event_PNVN", "GhepHoaHong"} },
	},
}

tbConfig[16] =
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "TÆng bã hoa hång",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>TÆng bã hoa hång",1,1,1,0.02},
	tbCondition = 
	{
		{"ThisActivity:HandInTangBoHoaHongLimit", {nil}},
		{"AddOneMaterial",	{"Bã Hoa Hång",{tbProp={6,1,4284,1,0,0},nExpiredTime=nItemExpiredTime,},1} },		
	},
	tbActition = 
	{
		{"ThisActivity:HandInTangBoHoaHong", {nil}},
	},
}

tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo long nhi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"BÐ Long"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"§æi mÆt n¹ cöu mÖnh",21} },
		{"AddDialogOpt",	{"§æi mÆt n¹ tr­êng c«ng",22} },
		{"AddDialogOpt",	{"§æi MÆt n¹ kiªn ng¹nh",23} },
		{"AddDialogOpt",	{"§æi mÆt n¹ quû ¶nh",18} },
		{"AddDialogOpt",	{"§æi håi thiªn t¸i t¹o cÈm nang",19} },
		{"AddDialogOpt",	{"§æi nhÊt kû cµn kh«n phï",20} },
		{"AddDialogOpt",	{"§æi mÆt n¹ v­¬ng gi¶",24} },
	},
}
tbConfig[18] = --Ò»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "§æi mÆt n¹ quû ¶nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"MÆt n¹ quû ¶nh",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{201509100000, 201509282359, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},15} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,455,1,0,0},nExpiredTime=10080,},1,"[Ho¹t ®éng trung thu][§æi quû ¶nh]"} },
	},
}
tbConfig[19] = --Ò»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "§æi håi thiªn t¸i t¹o cÈm nang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"CÈm nang thay ®æi trêi ®Êt",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},13} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1781,1,0,0},nExpiredTime=20160, tbParam={60}},1,"[Ho¹t ®éng trung thu][§æi håi thiªn t¸i t¹o cÈm nang]"} },
	},
}
tbConfig[20] = --Ò»¸öÏ¸½Ú
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "§æi nhÊt kû cµn kh«n phï",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"NhÊt Kû Cµn Kh«n Phï",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},300} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2126,1,0,0},nExpiredTime=30*60*24,},1,"[Ho¹t ®éng trung thu][§æi nhÊt kû cµn kh«n phï]"} },
	},
}
tbConfig[21] = --Ò»¸öÏ¸½Ú
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "§æi mÆt n¹ cöu mÖnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"MÆt n¹ cöu mÖnh",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},15} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,454,1,0,0},nExpiredTime=10080,},1,"[Ho¹t ®éng trung thu][§æi mÆt n¹ cöu mÖnh]"} },
	},
}

tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "§æi mÆt n¹ tr­êng c«ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"MÆt n¹ tr­êng c«ng",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},15} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,479,1,0,0},nExpiredTime=10080,},1,"[Ho¹t ®éng trung thu][§æi mÆt n¹ tr­êng c«ng]"} },
	},
}
tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "§æi MÆt n¹ kiªn ng¹nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"MÆt n¹ kiªn ng¹nh",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},30} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,480,1,0,0},nExpiredTime=10080,},1,"[Ho¹t ®éng trung thu][§æi MÆt n¹ kiªn ng¹nh]"} },
	},
}

tbConfig[24] = --Ò»¸öÏ¸½Ú
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "§æi mÆt n¹ v­¬ng gi¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"MÆt n¹ v­¬ng gi¶",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},150} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,561,1,0,0},nExpiredTime=15*60*24,},1,"[Ho¹t ®éng trung thu][§æi nhÊt kû cµn kh«n phï]"} },
	},
}

tbConfig[25] = --Ò»¸öÏ¸½Ú
{
	nId = 25,
	szMessageType = "NpcOnDeath",
	szName = "§¸nh qu¸i rít Hoa Hång",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"50,60,70,80,90"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,4285,1,0,0},nExpiredTime=nItemExpiredTime,},1,"1"} },
	},
}

tbConfig[26] = --boss s¸t thñ
{
	nId = 26,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô s¸t thñ cÊp 80",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{80} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},2,"Event_PNVN", "TieuDietBossS¸tThñ"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossSatThu", "2 Hoµng Th¹ch", 1}},
	},
}

tbConfig[27] = --boss s¸t thñ
{
	nId = 27,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô s¸t thñ cÊp 70",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{70} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},1,"Event_PNVN", "TieuDietBossS¸tThñ"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossSatThu", "1 Hoµng Th¹ch", 1}},
	},
}

tbConfig[28] = --Ò»¸öÏ¸½Ú
{
	nId = 28,
	szMessageType = "ClickNpc",
	szName = "Click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chñ TiÖm"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Thiªn Tinh Th¹ch",29} },
	},
}

ITEM_COIN		= {szName="TiÒn §ång",tbProp={4,417,1,1,0,0},}

tbConfig[29] = --Ò»¸öÏ¸½Ú
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "buy healing bag",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua Thiªn Tinh Th¹ch",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"TiÒn §ång",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Thiªn Tinh Th¹ch",tbProp={6,1,30154,-1,-1,-1},nExpiredTime=nItemExpiredTime},1,"Event_PNVN","MuaTTThach"} },
	},
}

tbConfig[30] =
{
	nId = 30,
	szMessageType = "nil",
	szName = "Nhan thuong",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		{"ThisActivity:NhanDatMoc1000", {nil}},		
	},
}