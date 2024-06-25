Include("\\script\\activitysys\\config\\1010\\variables.lua")
Include("\\script\\activitysys\\config\\1010\\award_ext.lua")
tbConfig = {}
tbConfig[1] =
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi khëi ®éng server",
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
tbConfig[2] =
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "B¶n ®å ®¸nh qu¸i nhËn Bét M×",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"ThisActivity:DropItemRandom",	{nil} },
	},
}
tbConfig[3] = --Tèng kim 1000 ®iÓm
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 1000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{"751",1000,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_MILK,20,EVENT_LOG_TITLE,"TongKim1000"} },		
	},
}
tbConfig[4] = --Tèng kim 3000 ®iÓm
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_MILK,50,EVENT_LOG_TITLE,"TongKim3000"} },		
	},
}
tbConfig[5] =		--V­ît ¶i 17
{
	nId = 5,
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
		{"PlayerFunLib:GetItem",	{ITEM_MILK,10,EVENT_LOG_TITLE,"VuotAi17"} },		
	},
}
tbConfig[6] =		--V­ît ¶i 17
{
	nId = 6,
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
		{"PlayerFunLib:GetItem",	{ITEM_MILK,20,EVENT_LOG_TITLE,"VuotAi28"} },		
	},
}
tbConfig[7] = --Thñy tÆc ®Çu lÜnh
{
	nId = 7,
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
		{"PlayerFunLib:GetItem",	{ITEM_MILK,20,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinh"} },				
	},
}
tbConfig[8] = --thuû tÆc ®¹i ®Çu lÜnh
{
	nId = 8,
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
		{"PlayerFunLib:GetItem",	{ITEM_MILK,50,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinh"} },				
	},
}
tbConfig[9] = --Viªm ®Õ - v­ît ¶i thø 10
{
	nId = 9,
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
		{"PlayerFunLib:GetItem",	{ITEM_MILK,15,EVENT_LOG_TITLE,"VuotAiViemDe6"} },				
	},
}
tbConfig[10] = --Boss Hoµng Kim
{
	nId = 10,
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
		{"PlayerFunLib:GetItem",	{ITEM_MILK,30,EVENT_LOG_TITLE,"TieuDietBossTheGioi"} },				
	},
}
tbConfig[11] = --boss s¸t thñ
{
	nId = 11,
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
		{"PlayerFunLib:GetItem",	{ITEM_MILK,3,EVENT_LOG_TITLE,"TieuDietBossSatThu"} },				
	},
}
--§èi tho¹i Npc
tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "ClickNpc",
	szName = "click npc name lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chñ TiÖm"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua B¬ ",13} },
		{"AddDialogOpt",	{"Mua Tr¸i C©y",27} },
		--{"AddDialogOpt",	{"Mua Chocolate",21} },
	},
}
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "compose shijin",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nguyªn LiÖu B¬",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},150000} }, --Mua nguyªn liÖu tèn 1v l­îng
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"Cã thÓ dïng 1 v¹n l­îng ®Ó mua nguyªn liÖu B¬ ®Ó ghÐp thµnh b¸nh Sinh NhËt Vâ L©m TruyÒn Kú"} },		
		{"PlayerFunLib:GetItem",	{ITEM_BUTTER,1,EVENT_LOG_TITLE,"Nguyenlieubo"} },
	},
}
tbConfig[14] = --§èi tho¹i Thî lµm b¸nh
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Sø Gi¶ Ho¹t §éng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Sø Gi¶ Ho¹t §éng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"<npc>§Õn thËt ®óng lóc, ta ®ang cã mét sè ho¹t ®éng cho ng­¬i, tÊt c¶ c¸c nh©n sü vâ l©m cÊp 50 trë lªn ®Õn ®©y nhËn th­ëng trong thêi gian tõ 0h00 ngµy 21/06/2017 ®Õn 23h00 ngµy 21/06/2017 "} },		
		{"AddDialogOpt",	{"Ho¹t ®éng lµm B¸nh Kem",15} },
		{"AddDialogOpt",	{"Ho¹t ®éng NhËn th­ëng ",20} },
	},
}
tbConfig[15] =
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i víi Sø Gi¶ Ho¹t §éng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Chç ta ®ang cã ho¹t ®éng lµm <color=red>B¸nh Kem <color>, ng­¬i muèn tham gia ho¹t ®éng nµo"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta muèn ®æi Bét M× lÊy §­êng",26} },		
		{"AddDialogOpt",	{"Ta muèn lµm B¸nh Kem Th­êng",16} },		
		--{"AddDialogOpt",	{"Ta muèn lµm B¸nh Kem Chocolate",17} },		
		--{"AddDialogOpt",	{"Ta muèn Lµm B¸nh Kem Tr¸i C©y",18} },		
		{"AddDialogOpt",	{"Ta muèn Lµm B¸nh Sinh NhËt Vâ L©m",19} },		
	},
}
tbConfig[16] = 
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm B¸nh Kem Th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh Kem Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Nguyªn liÖu Bét M×",ITEM_FLOUR,2} },
		{"AddOneMaterial",	{"Nguyªn liÖu §­êng",ITEM_ROAD,1} },
		{"AddOneMaterial",	{"Nguyªn liÖu S÷a",ITEM_MILK,1} },
		{"AddOneMaterial",	{"Nguyªn liÖu B¬",ITEM_BUTTER,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_OFTEN_CAKES,1,EVENT_LOG_TITLE,"GhepBanhKemThuong"} },
	},
}
tbConfig[17] = 
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm B¸nh Kem Chocolate",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh Kem Chocolate",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Nguyªn liÖu Bét M×",ITEM_FLOUR,2} },
		{"AddOneMaterial",	{"Nguyªn liÖu §­êng",ITEM_ROAD,1} },
		{"AddOneMaterial",	{"Nguyªn liÖu S÷a",ITEM_MILK,1} },
		{"AddOneMaterial",	{"Nguyªn liÖu B¬",ITEM_BUTTER,2} },
		{"AddOneMaterial",	{"Nguyªn liÖu Chocolate",ITEM_CHOCOLATE,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_CHOCOLATE_CAKES,1,EVENT_LOG_TITLE,"GhepBanhKemChocolate"} },
	},
}
tbConfig[18] = 
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm B¸nh Kem Tr¸i C©y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh Kem Tr¸i C©y",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Nguyªn liÖu Bét M×",ITEM_FLOUR,2} },
		{"AddOneMaterial",	{"Nguyªn liÖu §­êng",ITEM_ROAD,1} },
		{"AddOneMaterial",	{"Nguyªn liÖu S÷a",ITEM_MILK,1} },
		{"AddOneMaterial",	{"Nguyªn liÖu B¬",ITEM_BUTTER,2} },
		{"AddOneMaterial",	{"Nguyªn liÖu Tr¸i C©y",ITEM_FRUIT,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_FRUIT_CAKES,1,EVENT_LOG_TITLE,"GhepBanhKemTraiCay"} },
	},
}
tbConfig[19] = 
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm B¸nh Sinh NhËt Vâ L©m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh Sinh NhËt Vâ L©m",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Nguyªn liÖu Bét M×",ITEM_FLOUR,2} },
		{"AddOneMaterial",	{"Nguyªn liÖu §­êng",ITEM_ROAD,1} },
		--{"AddOneMaterial",	{"Nguyªn liÖu S÷a",ITEM_MILK,1} },
		--{"AddOneMaterial",	{"Nguyªn liÖu B¬",ITEM_BUTTER,2} },
		{"AddOneMaterial",	{"Nguyªn liÖu Tr¸i C©y",ITEM_FRUIT,1} },
		--{"AddOneMaterial",	{"Nguyªn liÖu Chocolate",ITEM_CHOCOLATE,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_BIRTHDAY_CAKE,1,EVENT_LOG_TITLE,"GhepBanhSinhNhatVLTK"} },
	},
}
tbConfig[20] =
{
	nId = 20,
	szMessageType = "nil",
	szName = "NhËn th­ëng ho¹t ®éng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"ThisActivity:CheckAwardExp", {"NhËn th­ëng trong thêi gian tõ 0h00 ngµy 21/06/2017 ®Õn 23h00 ngµy 21/06/2017 "},},
		{"tbVNG_BitTask_Lib:CheckBitTaskValue",	{tbBITTSK_GET_EXP,0,"Ng­¬i ®· nhËn phÇn th­ëng ho¹t ®éng råi, kh«ng thÓ nhËn thªm n÷a!","=="} },
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:setBitTask", {tbBITTSK_GET_EXP, 1}},
		{"PlayerFunLib:AddExp",	{700000000,0,EVENT_LOG_TITLE,"Nhan200trExpTaiNpcThoLamBanh"} },
	},
}
tbConfig[21] = --Ò»¸öÏ¸½Ú
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "compose shijin",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chocolate",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},70000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_CHOCOLATE,1,EVENT_LOG_TITLE,"MuaNguyenLieuChocolatetaiNpcHangRong"} },
	},
}
--Sö dông Item
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "ItemScript",
	szName = "Sö dông B¸nh Kem Th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30210,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		--{"PlayerFunLib:CheckFreeBagCellWH",	{1, 1, 1,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã thÓ sö dông t¹i c¸c thµnh thÞ vµ c¸c t©n thñ th«n."} },		
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {tbBITTSK_LIMIT_USE_OFTEN_CAKE, 1000, "Sö dông vËt phÈm qu¸ giíi h¹n, kh«ng thÓ sö dông thªm", "<"}},	
	},
	tbActition = 
	{		
		{"tbVNG_BitTask_Lib:addTask", {tbBITTSK_LIMIT_USE_OFTEN_CAKE, 1}},
		{"PlayerFunLib:AddExp",	{450000,0,EVENT_LOG_TITLE,"SuDungBanhKemThuong"} },
		--{"ThisActivity:UseBanhKemThuong",{tbBITTSK_LIMIT_USE_OFTEN_CAKE,1000}},
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "ItemScript",
	szName = "Sö dông B¸nh Chocolate",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30211,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{1, 1, 1,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã thÓ sö dông t¹i c¸c thµnh thÞ vµ c¸c t©n thñ th«n."} },		
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {tbBITTSK_LIMIT_USE_CAKE_CHOCOLATE, 1000, "Sö dông vËt phÈm qu¸ giíi h¹n, kh«ng thÓ sö dông thªm", "<"}},	
	},
	tbActition = 
	{		
		{"tbVNG_BitTask_Lib:addTask", {tbBITTSK_LIMIT_USE_CAKE_CHOCOLATE, 1}},
		{"PlayerFunLib:AddExp",	{6e6,0,EVENT_LOG_TITLE,"SuDungBanhChocolate"} },
		{"ThisActivity:UseCakeChocolate",{tbBITTSK_LIMIT_USE_CAKE_CHOCOLATE,1000,2}},
	},
}
tbConfig[24] = 
{
	nId = 24,
	szMessageType = "ItemScript",
	szName = "Sö dông B¸nh Tr¸i C©y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30212,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{1, 1, 1,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã thÓ sö dông t¹i c¸c thµnh thÞ vµ c¸c t©n thñ th«n"} },		
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {tbBITTSK_LIMIT_USE_CAKE, 1000, "Sö dông vËt phÈm qu¸ giíi h¹n, kh«ng thÓ sö dông thªm", "<"}},	
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:addTask", {tbBITTSK_LIMIT_USE_CAKE, 1}},
		{"PlayerFunLib:AddExp",	{12e6,0,EVENT_LOG_TITLE,"SuDungBanhTraiCay"} },
		{"ThisActivity:UseCake",{tbBITTSK_LIMIT_USE_CAKE,1000,1}},
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "ItemScript",
	szName = "Sö dông B¸nh Sinh NhËt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30213,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{1, 1, 1,"default"} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {tbBITTSK_LIMIT_USE_BIRTHDAY_CAKE, 1000, "Sö dông vËt phÈm qu¸ giíi h¹n, kh«ng thÓ sö dông thªm", "<"}},	
	},
	tbActition = 
	{		
		{"tbVNG_BitTask_Lib:addTask", {tbBITTSK_LIMIT_USE_BIRTHDAY_CAKE, 1}},
		{"PlayerFunLib:AddExp",	{400000,0,EVENT_LOG_TITLE,"SuDungBanhSinhNhat"} },
		{"ThisActivity:UseCakeBirthday",{tbBITTSK_LIMIT_USE_BIRTHDAY_CAKE,1000}},
	},
}
tbConfig[26] = 
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "Ta muèn ®æi Bét M× thµnh §­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Nguyªn liÖu Bét M×",ITEM_FLOUR,5} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_ROAD,1,EVENT_LOG_TITLE,"DoiBotMi"} },
	},
}
tbConfig[27] = --Ò»¸öÏ¸½Ú
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "compose shijin",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr¸i C©y",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"TiÒn §ång",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_FRUIT,1,EVENT_LOG_TITLE,"MuaTraiCay"} },
	},
}

tbConfig[28] = --Ò»¸öÏ¸½Ú
{
	nId = 28,
	szMessageType = "CreateCompose",
	szName = "§¹i thµnh BK 150 CÊp 15",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§¹i thµnh BK 150 CÊp 15",1,1,1,0.02,0,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"2 §¹i thµnh bÝ kÝp 150 cÊp 10",ITEM_DTBK150_10,2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_DTBK150_15,1,EVENT_LOG_TITLE,"DoiDaiThanhBK150Cap15"} },
	},
}

tbConfig[29] = --Ò»¸öÏ¸½Ú
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "§¹i thµnh BK 150 CÊp 18",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§¹i thµnh BK 150 CÊp 18",1,1,1,0.02,0,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"4 §¹i thµnh bÝ kÝp 150 cÊp 10",ITEM_DTBK150_10,4} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_DTBK150_18,1,EVENT_LOG_TITLE,"DoiDaiThanhBK150Cap18"} },
	},
}

tbConfig[30] = --Ò»¸öÏ¸½Ú
{
	nId = 30,
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
		--{"AddDialogOpt",	{"§æi ®¹i thµnh BK 150 CÊp 15 2 quyÓn cÊp 10",28} },
		--{"AddDialogOpt",	{"§æi ®¹i thµnh BK 150 CÊp 18 4 quyÓn cÊp 10",29} },
		--{"AddDialogOpt",	{"§æi ®¹i thµnh BK 150 CÊp 18 2 quyÓn cÊp 15",31} },
	},
}

tbConfig[31] = --Ò»¸öÏ¸½Ú
{
	nId = 31,
	szMessageType = "CreateCompose",
	szName = "§¹i thµnh BK 150 CÊp 18",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§¹i thµnh BK 150 CÊp 18",1,1,1,0.02,0,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"2 §¹i thµnh bÝ kÝp 150 cÊp 15",ITEM_DTBK150_15,2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_DTBK150_18,1,EVENT_LOG_TITLE,"DoiDaiThanhBK150Cap18"} },
	},
}
