Include("\\script\\activitysys\\config\\38\\variables.lua")
tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "add npc when server start",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:InitAddNpc",	{nil} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "ItemScript",
	szName = "right click item named NewYear-Gift",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"return {tbProp={6,1,3086,-1,-1,0},}"},
	tbCondition = 
	{
		{"ThisActivity:CheckTaskDaily",	{TSK_USED_NEWYEAR_GIFT_DAILY,MAX_USED_NEWYEAR_GIFT_DAILY,"Sè lÇn sö dông cña ng­¬i h«m nay ®· ®ñ, ngµy mai h·y quay l¹i nhÐ!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNewYearGift",	{nil} },
		{"ThisActivity:AddTaskDaily",	{TSK_USED_NEWYEAR_GIFT_DAILY,1} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "ItemScript",
	szName = "right click item named NewYear-Fireworks",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"return {tbProp={6,1,3087,-1,-1,0},}"},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_USED_NEWYEAR_FIREWORKS,MAX_USED_NEWYEAR_FIREWORKS,"Ng­¬i ®· nhËn ®­îc qu¸ nhiÒu phÇn th­ëng, xin h·y thö c¸i kh¸c ®i!","<"} },
		{"ThisActivity:CheckFireworksUseTime",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNewYearFireworks",	{nil} },
		{"ThisActivity:AddTask",	{TSK_USED_NEWYEAR_FIREWORKS,1} },
	},
}

tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "NpcOnDeath",
	szName = "§¸nh qu¸i rít nguyen lieu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,30367,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"1"} },--trai dua
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,30368,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"1"} },--trai du du
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,4302,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"1"} },--gao nep
	},
}

tbConfig[5] =
{
	nId = 5,
	szMessageType = "ClickNpc",
	szName = "Hµng rong b¸n b¸nh nh©n thÞt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch­ëng §¨ng Cung N÷"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua l¸ gãi b¸nh",6} },
		{"AddDialogOpt",	{"Mua tr¸i sung",7} },
	},
}

tbConfig[6] =
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Mua l¸ gãi b¸nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L¸ gãi b¸nh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=100000,},1} },
		--{"lib:CheckDay",	{20100920, 20101011, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30365,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"Hoat dong tet nguyen dan mua la goi banh"} },
	},
}

tbConfig[7] =
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Mua tr¸i sung",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr¸i sung",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=10000,},1} },
		--{"lib:CheckDay",	{20100920, 20101011, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30369,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"Hoat dong tet nguyen dan mua trai sung"} },
	},
}

tbConfig[8] =
{
	nId = 8,
	szMessageType = "ClickNpc",
	szName = "§¹i ThÇn Tµi hîp thµnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§¹i ThÇn Tµi"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp thµnh M©m Ngò Qu¶",9} },
		{"AddDialogOpt",	{"Hîp thµnh B¸nh Ch­ng §Æc BiÖt",10} },
		{"AddDialogOpt",	{"NhËn bao l× x× n¨m míi",23} },
		--{"AddDialogOpt",	{"Xem TOP 3 sö dông vËt phÈm Event",26} },
	},
}

tbConfig[9] =
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh M©m ngò qu¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>M©m ngò qu¶",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Tr¸i dõa",{tbProp={6,1,30367,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr¸i ®u ®ñ",{tbProp={6,1,30368,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr¸i Sung",{tbProp={6,1,30369,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr¸i M·ng CÇu",{tbProp={6,1,30370,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr¸i Xoµi",{tbProp={6,1,30371,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30375,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"[HD Tet nguyen dan] [Hîp thµnh mam ngu qua]"} },
	},
}

tbConfig[10] =
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh b¸nh ch­ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B¸nh ch­ng ®Æc biÖt",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L¸ gãi b¸nh",{tbProp={6,1,30365,1,0,0},},1} },
		{"AddOneMaterial",	{"G¹o nÕp",{tbProp={6,1,4302,1,0,0},},2} },
		{"AddOneMaterial",	{"ThÞt Heo",{tbProp={6,1,4304,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30376,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"[HD Tet nguyen dan] [Hîp thµnh banh chung dac biet]"} },
	},
}

--Thu thap trai xoai 30371

tbConfig[11] = --Tèng kim 1000 ®iÓm
{
	nId = 11,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 1000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},20,"EventTetNguyenDan\tTongKim1000"} },
	},
}
tbConfig[12] = --Tèng kim 3000 ®iÓm
{
	nId = 12,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},50,"EventTetNguyenDan\tTongKim3000"} },
	},
}
tbConfig[13] =
{
	nId = 13,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 17",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},20,"EventTetNguyenDan\tVuotAi17"} },
	},
}
tbConfig[14] =
{
	nId = 14,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 28",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},40,"EventTetNguyenDan\tVuotAi28"} },
	},
}
tbConfig[15] = --Thñy tÆc ®Çu lÜnh
{
	nId = 15,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt chÕt 1 thñy tÆc ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},20,"EventTetNguyenDan\tTieuDietThuyTacDauLinh"} },
	},
}
tbConfig[16] = --thuû tÆc ®¹i ®Çu lÜnh
{
	nId = 16,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt thuû tÆc ®¹i ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},50,"EventTetNguyenDan\tTieuDietThuyTacDaiDauLinh"} },
	},
}
tbConfig[17] = --Viªm ®Õ
{
	nId = 17,
	szMessageType = "YDBZguoguan",
	szName = "V­ît qua ¶i Viªm §Õ thø 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},30,"EventTetNguyenDan\tVuotAiViemDe10"} },
	},
}
tbConfig[18] = --Boss thÕ giíi
{
	nId = 18,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt boss thÕ giíi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},50,"EventTetNguyenDan\tTieuDietBossTheGioi"} },
	},
}
tbConfig[19] = --boss s¸t thñ
{
	nId = 19,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô s¸t thñ cÊp 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},5,"EventTetNguyenDan\tTieuDietBossS¸tThñ"} },
	},
}

--su dung thanh pham

tbConfig[20] = 
{
	nId = 20,
	szMessageType = "ItemScript",
	szName = "Sö dông M©m ngò qu¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30375,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_SUDUNG_MAMNGUQUA,MAX_SUDUNG_MAMNGUQUA,"Ng­¬i ®· nhËn ®­îc qu¸ nhiÒu phÇn th­ëng, xin h·y thö c¸i kh¸c ®i!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, kh«ng thÓ sö dông vËt phÈm",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:TetND2016_MamNguQua", {nil}},	
		{"ThisActivity:AddTask",	{TSK_SUDUNG_MAMNGUQUA,1} },
	},
}

tbConfig[21] = 
{
	nId = 21,
	szMessageType = "ItemScript",
	szName = "Sö dông B¸nh ch­ng ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30376,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_SUDUNG_BANHCHUNG,MAX_SUDUNG_BANHCHUNG,"Ng­¬i ®· nhËn ®­îc qu¸ nhiÒu phÇn th­ëng, xin h·y thö c¸i kh¸c ®i!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, kh«ng thÓ sö dông vËt phÈm",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:TetND2016_BanhChungDacBiet", {nil}},
		{"ThisActivity:AddTask",	{TSK_SUDUNG_BANHCHUNG,1} },
	},
}

tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "NpcOnDeath",
	szName = "§¸nh qu¸i rít nguyen lieu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,4304,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"1"} },--thit heo
	},
}

tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
	szMessageType = "nil",
	szName = "NhËn bao l× x× n¨m míi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_BAOLIXI,1,"ThiÕu HiÖp ng­¬i ®· nhËn bao l× x× ë chç cña ta råi, mçi ng­êi chØ ®­îc nhËn bao l× x× 1 lÇn ë chç cña ta!","<"} },
		{"lib:CheckDay",	{nbaolixiBD, nbaolixiKT, "Vµo ngµy TÕt Nguyªn §¸n ThiÕu HiÖp ®Õn ®©y sÏ nhËn ®­îc bao l× x× n¨m míi, ThiÕu HiÖp ng­¬i ®õng quªn ®Ðn nhËn bao l× x× nhÐ."} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"Hµnh trang kh«ng ®ñ chç trèng, Ýt nhÊt ph¶i 1 c¸i 1*1 kh«ng gian hµnh trang"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4305,1,0,0},nBindState = -2,nExpiredTime=HetHanEventTetNguyenDan,},1,"Tet nguyen dan nhan bao li xi"} },
		{"ThisActivity:AddTask",	{TSK_BAOLIXI,1} },
	},
}

tbConfig[24] = 
{
	nId = 24,
	szMessageType = "ItemScript",
	szName = "Sö dông Bao l× x× n¨m míi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4305,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_BAOLIXISD,1,"ThiÕu HiÖp ng­¬i ®· nhËn bao l× x× ë chç cña ta råi, mçi ng­êi chØ ®­îc nhËn bao l× x× 1 lÇn ë chç cña ta!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, kh«ng thÓ sö dông vËt phÈm",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:TetND2016_BaoLiXi", {nil}},
		{"ThisActivity:AddTask",	{TSK_BAOLIXISD,1} },
	},
}

ITEM_COIN		= {szName="TiÒn §ång",tbProp={4,417,1,1,0,0},}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Mua Tr¸i M·ng CÇu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua Tr¸i M·ng CÇu",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
		{"AddOneMaterial",	{"TiÒn §ång",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Tr¸i M·ng CÇu",tbProp={6,1,30370,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,EVENT_LOG_TITLE,"MuaTraiMangCau"} },
	},
}

tbConfig[26] =
{
	nId = 26,
	szMessageType = "nil",
	szName = "Xem TOP 3 sö dông vËt phÈm event",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{		
	},
	tbActition = 
	{
		{"ThisActivity:XemTOP3Event",	{nil} },
	},
}

tbConfig[27] =
{
	nId = 27,
	szMessageType = "ClickNpc",
	szName = "Hµng rong b¸n b¸nh nh©n thÞt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chñ TiÖm"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Tr¸i M·ng CÇu",25} },
	},
}

tbConfig[28] = --Ò»¸öÏ¸½Ú
{
	nId = 28,
	szMessageType = "OnLogin",
	szName = "Ng­êi ch¬i trùc tuyÕn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:PlayerOnLogin",	{nil} },
	},
}
