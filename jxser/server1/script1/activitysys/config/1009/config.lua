Include("\\script\\activitysys\\config\\1009\\variables.lua")
tbConfig = {}
tbConfig[1] =
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "B¶n ®å ®¸nh qu¸i nhËn m¶nh chiÕn c«ng lÖnh 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		--{"NpcFunLib:CheckInMap",	{"321,322,340,225,226,227"} },
		{"NpcFunLib:CheckNormalMonster",	{"50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"ThisActivity:DropItemRandom",	{nil} },
	},
}

tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
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
		{"AddDialogOpt",	{"Mua m¶nh ChiÕn C«ng LÖnh 2",3} },
		--{"AddDialogOpt",	{"Mua tói mõng chiÕn th¾ng",11} },
		{"AddDialogOpt",	{"NhËn vßng s¸ng vµ x2 tõ 0h00 30-4 ®Õn 23h59 30-4 ",14} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "CreateCompose",
	szName = "compose shijin",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua m¶nh chiÕn c«ng lÖnh 2",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},9000} }, -- Hoa son
		--{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},5000} }, -- Tan thu
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_COMMAND_PIECE_2,1,EVENT_LOG_TITLE,"MuaManhChienCongLenh1"} },
	},
}
tbConfig[4] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Ch­ëng §¨ng Cung N÷",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch­ëng §¨ng Cung N÷"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta muèn ®æi ChiÕc Mò Hßa B×nh",5} },		
		{"AddDialogOpt",	{"Ta muèn ®æi ChiÕc Mò Tù Do",7} },		
		--{"AddDialogOpt",	{"Xem TOP 3 sö dông vËt phÈm Event",12} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "§æi ChiÕc Mò Hßa B×nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ChiÕc Mò Hßa B×nh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"M¶nh chiÕn c«ng 1",ITEM_COMMAND_PIECE_1,1} },
		{"AddOneMaterial",	{"M¶nh chiÕn c«ng 2",ITEM_COMMAND_PIECE_2,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_HAT_PEACE,1,EVENT_LOG_TITLE,"DoiChiecMuHoaBinh"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "§æi ChiÕc Mò Tai BÌo",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ChiÕc Mò Tai BÌo",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"M¶nh chiÕn c«ng 1",ITEM_COMMAND_PIECE_1,1} },
		{"AddOneMaterial",	{"Tói mõng chiÕn th¾ng",ITEM_BAG_VICTORY,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_EAR_HAT_DIRT,1,EVENT_LOG_TITLE,"DoiChiecMuTaiBeo"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "§æi ChiÕc Mò Tù Do",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ChiÕc Mò Tù Do",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"M¶nh chiÕn c«ng 1",ITEM_COMMAND_PIECE_1,1} },
		{"AddOneMaterial",	{"Tói mõng chiÕn th¾ng",ITEM_BAG_VICTORY,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_HAT_FREEDOM,1,EVENT_LOG_TITLE,"DoiChiecMuTuDo"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "ItemScript",
	szName = "Sö dông ChiÕc Mò Tai BÌo",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30197,1,0,0},}},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		--{"PlayerFunLib:CheckFreeBagCell",	{8,"default"} },
		--{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã thÓ sö dông t¹i c¸c thµnh thÞ vµ c¸c t©n thñ th«n."} },		
		--{"tbVNG_BitTask_Lib:CheckBitTaskValue", {tbBITTSK_LIMIT_HAT_USING, 1000, "Mçi nh©n vËt chØ ®­îc sö dông vËt phÈm nµy 1000 lÇn.", "<"}},	
		--{"ThisActivity:UseLimitHat", {1}},
	},
	tbActition = 
	{		
		--{"PlayerFunLib:AddExp",	{50000000,0,EVENT_LOG_TITLE,"SuDungMuTaiBeo"} },
		--{"ThisActivity:UseHatDirt",	{nil} },
	},
}
tbConfig[9] = 
{
	nId = 9,
	szMessageType = "ItemScript",
	szName = "Sö dông ChiÕc Mò Tù Do",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30199,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		--{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã thÓ sö dông t¹i c¸c thµnh thÞ vµ c¸c t©n thñ th«n."} },		
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {tbBITTSK_LIMIT_HAT_USING, 1000, "Mçi nh©n vËt chØ ®­îc sö dông vËt phÈm nµy 1000 lÇn.", "<"}},	
		--{"ThisActivity:UseLimitHat", {1}},
	},
	tbActition = 
	{		
		{"PlayerFunLib:AddExp",	{100000,0,EVENT_LOG_TITLE,"SuDungMuTuDo"} },
		{"ThisActivity:UseHatFreedom",	{nil} },
		{"tbVNG_BitTask_Lib:addTask", {tbBITTSK_LIMIT_HAT_USING, 1}},
	},
}
tbConfig[10] = 
{
	nId = 10,
	szMessageType = "ItemScript",
	szName = "Sö dông ChiÕc Mò Hßa B×nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30198,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		--{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã thÓ sö dông t¹i c¸c thµnh thÞ vµ c¸c t©n thñ th«n."} },		
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {tbBITTSK_LIMIT_HAT_PEACE_USING, 1000, "Mçi nh©n vËt chØ ®­îc sö dông vËt phÈm nµy 1000 lÇn.", "<"}},	
	},
	tbActition = 
	{		
		{"PlayerFunLib:AddExp",	{200000,0,EVENT_LOG_TITLE,"SuDungMuHoaBinh"} },
		{"ThisActivity:UseHatPeace",	{nil} },
		{"tbVNG_BitTask_Lib:addTask", {tbBITTSK_LIMIT_HAT_PEACE_USING, 1}},
	},
}

tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "compose shijin",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tói mõng chiÕn th¾ng",1,1,1,0.02,0,50},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		--{"AddOneMaterial",	{"TiÒn §ång",ITEM_COIN,10} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{ITEM_BAG_VICTORY,1,EVENT_LOG_TITLE,"MuaTuiMungChienThang"} },
	},
}

tbConfig[12] =
{
	nId = 12,
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

tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
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
		--{"ThisActivity:PlayerOnLogin",	{nil} },
	},
}

tbConfig[14] =
{
	nId = 14,
	szMessageType = "nil",
	szName = "Nhan X2 kinh nghiem",
	nStartDate = 201804300000,
	nEndDate  = 201804302359,
	tbMessageParam = {nil},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"ThisActivity:NhanNhanDoiKinhNghiem",	{nil} },
	},
}

-- Thu thap nguyenlieu tham gia hoat dong

tbConfig[15] = --Tèng kim 1000 ®iÓm
{
	nId = 15,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim trung cÊp 1000 ®iÓm",
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},10,"Event30thang4\tTongKim1000"} },
	},
}
tbConfig[16] = --Tèng kim 3000 ®iÓm
{
	nId = 16,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim trung cÊp 3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},20,"Event30thang4\tTongKim3000"} },
	},
}
tbConfig[17] =
{
	nId = 17,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 17",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},5,"Event30thang4\tVuotAi17"} },
	},
}
tbConfig[18] =
{
	nId = 18,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 28",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},10,"Event30thang4\tVuotAi28"} },
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
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},4,"Event30thang4\tTieuDietDaiThuyTac"} },
	},
}

tbConfig[20] = --Thñy tÆc ®Çu lÜnh
{
	nId = 20,
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},2,"Event30thang4\tTieuDietThuyTac"} },
	},
}

tbConfig[21] = --Boss tieu
{
	nId = 21,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt boss thÕ giíi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"523,513,511"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},2,"Event30thang4\tBosssTieuHoangKim"} },
	},
}

