Include("\\script\\activitysys\\config\\20\\variables.lua")

tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "server start",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"NpcFunLib:AddDialogNpc",	{"Thu V©n",1907,{{11,3182,4951}}} },
		{"NpcFunLib:AddDialogNpc",	{"Thu V©n",1907,{{78,1582,3215}}} },
		{"NpcFunLib:AddDialogNpc",	{"Thu V©n",1907,{{1,1582,3190}}} },
		{"ThisActivity:InitRule",	{nil} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "ClickNpc",
	szName = "click npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thu V©n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"SetDialogTitle",	    {"C¸c hiÖp kh¸ch cã thÓ ®Õn chç cña ta tham gia ho¹t ®éng thu nhÆt lóa n­íc, sau khi thu nhÆt lóa n­íc cã thÓ ®Õn gÆp ta ®Ó ®æi phÇn th­ëng"} },
		{"AddDialogOpt",	{"Hîp thµnh Bao G¹o Th­êng",4} },
		{"AddDialogOpt",	{"Hîp thµnh Bao G¹o §Æc BiÖt",8} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
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
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,4332,1,0,0},nExpiredTime=20180725,},1,"1"} },
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,4326,1,0,0},nExpiredTime=20180725,},1,"1"} },
	},
}

tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh bao g¹o th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hîp thµnh bao g¹o th­êng",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Bao T¶i",ITEM_BAOTAI,1} },
		{"AddOneMaterial",	{"C©y Lóa Xanh",ITEM_LUAXANH,1} },
		{"AddOneMaterial",	{"C©y Lóa Vµng",ITEM_LUAVANG,1} },
		{"AddOneMaterial",	{"L­ìi LiÒm S¾t",ITEM_LIEMSAT,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_BAOGAOTHUONG,1,EVENT_LOG_TITLE,"HopThanhBaoGaoThuong"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh bao g¹o Th¬m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hîp thµnh bao g¹o Th¬m",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Bao T¶i",ITEM_BAOTAI,2} },
		{"AddOneMaterial",	{"C©y Lóa Xanh",ITEM_LUAXANH,1} },
		{"AddOneMaterial",	{"C©y Lóa Vµng",ITEM_LUAVANG,2} },
		{"AddOneMaterial",	{"L­ìi LiÒm S¾t",ITEM_LIEMSAT,3} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_BAOGAOTHOM,1,EVENT_LOG_TITLE,"HopThanhBaoGaoThuong"} },
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chñ TiÖm"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua L­ìi LiÒm S¾t",7} },
		--{"AddDialogOpt",	{"Mua L­ìi LiÒm B¹c",9} },
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "buy item",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L­ìi LiÒm S¾t",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},100000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_LIEMSAT,1,EVENT_LOG_TITLE,"MuaLuoiLiemSat"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh bao g¹o §Æc BiÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hîp thµnh bao g¹o §Æc BiÖt",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Bao T¶i",ITEM_BAOTAI,1} },
		{"AddOneMaterial",	{"C©y Lóa Xanh",ITEM_LUAXANH,1} },
		{"AddOneMaterial",	{"C©y Lóa Vµng",ITEM_LUAVANG,1} },
		--{"AddOneMaterial",	{"L­ìi LiÒm S¾t",ITEM_LIEMSAT,1} },
		{"AddOneMaterial",	{"L­ìi LiÒm B¹c",ITEM_LIEMBAC,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_BAOGAODACBIET,1,EVENT_LOG_TITLE,"HopThanhBaoGaoThuong"} },
	},
}

tbConfig[9] = --mua luoi liem bac
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "buy item",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L­ìi LiÒm B¹c",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"TiÒn §ång",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_LIEMBAC,1,EVENT_LOG_TITLE,"MuaLuoiLiemBac"} },
	},
}

tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "nil",
	szName = "nil",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}

--Sö dông Item
tbConfig[11] = 
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "Sö dông Bao G¹o Th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4327,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"ThisActivity:CheckTask",	{TSK_SUDUNGBAOGAOTHUONG,MAX_SUDUNGBAOGAOTHUONG,"Ng­¬i ®· nhËn ®­îc qu¸ nhiÒu phÇn th­ëng, xin h·y thö c¸i kh¸c ®i!","<"} },
	},
	tbActition = 
	{		
		{"PlayerFunLib:AddExp",	{400000,0,EVENT_LOG_TITLE,"Su Dung Bao Gao Thuong"} },
		{"ThisActivity:AddTask",	{TSK_SUDUNGBAOGAOTHUONG,1} },
		{"ThisActivity:SuDungBaoGaoThuong",{nil}},
	},
}
tbConfig[12] = 
{
	nId = 12,
	szMessageType = "ItemScript",
	szName = "Sö dông Bao G¹o Th¬m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4328,1,0,0},}},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
		--{"ThisActivity:CheckTask",	{TSK_SUDUNGBAOGAOTHOM,MAX_SUDUNGBAOGAOTHOM,"Ng­¬i ®· nhËn ®­îc qu¸ nhiÒu phÇn th­ëng, xin h·y thö c¸i kh¸c ®i!","<"} },
	},
	tbActition = 
	{		
		--{"PlayerFunLib:AddExp",	{7e6,0,EVENT_LOG_TITLE,"Su Dung Bao Gao Thom"} },
		--{"ThisActivity:AddTask",	{TSK_SUDUNGBAOGAOTHOM,1} },
		--{"ThisActivity:SuDungBaoGaoThom",{nil}},
	},
}
tbConfig[13] = 
{
	nId = 13,
	szMessageType = "ItemScript",
	szName = "Sö dông Bao G¹o §Æc BiÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4329,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"ThisActivity:CheckTask",	{TSK_SUDUNGBAOGAODB,MAX_SUDUNGBAOGAODB,"Ng­¬i ®· nhËn ®­îc qu¸ nhiÒu phÇn th­ëng, xin h·y thö c¸i kh¸c ®i!","<"} },
	},
	tbActition = 
	{		
		{"PlayerFunLib:AddExp",	{1000000,0,EVENT_LOG_TITLE,"Su Dung Bao Gao DB"} },
		{"ThisActivity:AddTask",	{TSK_SUDUNGBAOGAODB,1} },
		{"ThisActivity:SuDungBaoGaoDB",{nil}},
	},
}
tbConfig[14] = --Tèng kim 1000 ®iÓm
{
	nId = 14,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim  1000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,20,EVENT_LOG_TITLE,"TongKim1000"} },		
	},
}
tbConfig[15] = --Tèng kim 3000 ®iÓm
{
	nId = 15,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim  3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,50,EVENT_LOG_TITLE,"TongKim3000"} },		
	},
}
tbConfig[16] =		--V­ît ¶i 17
{
	nId = 16,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,20,EVENT_LOG_TITLE,"VuotAi17"} },		
	},
}
tbConfig[17] =		--V­ît ¶i 28
{
	nId = 17,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,30,EVENT_LOG_TITLE,"VuotAi28"} },		
	},
}
tbConfig[18] = --Thñy tÆc ®Çu lÜnh
{
	nId = 18,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,20,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinh"} },				
	},
}
tbConfig[19] = --thuû tÆc ®¹i ®Çu lÜnh
{
	nId = 19,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,30,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinh"} },				
	},
}
tbConfig[20] = --Viªm ®Õ - v­ît ¶i thø 10
{
	nId = 20,
	szMessageType = "YDBZguoguan",
	szName = "V­ît qua ¶i Viªm §Õ thø 6",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {6},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,15,EVENT_LOG_TITLE,"VuotAiViemDe6"} },				
	},
}
tbConfig[21] = --Boss Hoµng Kim
{
	nId = 21,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,30,EVENT_LOG_TITLE,"TieuDietBossTheGioi"} },				
	},
}
tbConfig[22] = --boss s¸t thñ
{
	nId = 22,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,5,EVENT_LOG_TITLE,"TieuDietBossSatThu"} },				
	},
}

tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
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
