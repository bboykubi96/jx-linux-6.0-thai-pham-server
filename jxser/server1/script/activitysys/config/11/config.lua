Include("\\script\\activitysys\\config\\11\\variables.lua")
tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "Tói Nguyªn LiÖu ®¸nh qu¸i r¬i ra",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		--{"NpcFunLib:CheckInMap",	{"321, 322, 227, 340,75"} },
		{"NpcFunLib:CheckNormalMonster",	{"50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"ThisActivity:DropMaterialBagInRandom",	{nil} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "ItemScript",
	szName = "Sö dông Tói Nguyªn LiÖu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {tbITEM_MATERIAL_BAG},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"Hµnh trang kh«ng ®ñ chç trèng"} },
		--{"lib:CheckDay",	{20150601, 20150801, szOUT_OF_DATE} },
	},
	tbActition = 
	{
		{"ThisActivity:UseMaterialBag",	{nil} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "ItemScript",
	szName = "Sö dông ChiÕc ¸o LÝnh Míi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {tbITEM_NEW_UNIFORM},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		--{"ThisActivity:CheckTowTask",	{nIdx_USED_NEW_UNIFORM_COUNT, nIdx_MAX_NEW_UNIFORM_CAN_USE,"Sö dông 1 Hßa ThÞ BÝch míi cã thÓ sö dông 20 lÇn ¸o lÝnh míi hoÆc 20 lÇn ¸o lÝnh míi ®iÓm kinh nghiÖm","<"} },
		{"ThisActivity:CheckTask",	{nIdx_USED_NEW_UNIFORM_COUNT,nMAX_AOLINHMOI_VA_ALMEXP,"§· ®¹t ®Õn giíi h¹n, kh«ng thÓ sö dông tiÕp","<"} },
		--{"PlayerFunLib:CheckFreeBagCell",	{20,"Hµnh trang kh«ng ®ñ chç trèng"} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{3, 3, 1,"default"} },
		--{"lib:CheckDay",	{20150601, 20150801, szOUT_OF_DATE} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNewUniform",	{nil} },
		{"ThisActivity:NewUniformExtraAward",	{nil} },
	},
}
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "ItemScript",
	szName = "Sö dông ¸o LÝnh §· Söa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {tbITEM_PATCHED_UNIFORM},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		{"ThisActivity:CheckTask",	{nIdx_USED_PATCHED_UNIFORM_COUNT,nMAX_PATCHED_UNIFORM_CAN_USE,"§· ®¹t ®Õn giíi h¹n, kh«ng thÓ sö dông tiÕp","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"Hµnh trang kh«ng ®ñ chç trèng"} },
		--{"lib:CheckDay",	{20150601, 20150801, szOUT_OF_DATE} },
	},
	tbActition = 
	{
		{"ThisActivity:UsePatchedUniform",	{nil} },
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "FinishSongJin",
	szName = "PhÇn th­ëng Tèng Kim >=3000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,30,EVENT_LOG_TITLE,"TongKim3000"} },
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "FinishSongJin",
	szName = "PhÇn th­ëng Tèng Kim [1000,3000)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",1000,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,10,EVENT_LOG_TITLE,"TongKim1000"} },
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
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
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,10,EVENT_LOG_TITLE,"VuotAi17"} },
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
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
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,20,EVENT_LOG_TITLE,"VuotAi28"} },
	},
}
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "Thñy TÆc §Çu LÜnh Phong L¨ng §é",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,10,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinh"} },
	},
}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Thñy TÆc §¹i §Çu LÜnh Phong L¨ng §é",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,20,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinh"} },
	},
}
tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "YDBZguoguan",
	szName = "PhÇn th­ëng Viªm §Õ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {6},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,10,EVENT_LOG_TITLE,"VuotAiViemDe6"} },
	},
}
tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "NpcOnDeath",
	szName = "PhÇn th­ëng boss Hoµng Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,30,EVENT_LOG_TITLE,"TieuDietBossTheGioi"} },
	},
}
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "NpcOnDeath",
	szName = "PhÇn th­ëng boss S¸t Thñ",
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
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,3,EVENT_LOG_TITLE,"TieuDietBossSatThu"} },
	},
}
tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "ItemScript",
	szName = "Sö dông Hßa ThÞ BÝch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {tbITEM_JADE},

	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		--{"ThisActivity:CheckTask",	{nIdx_USED_JADE_COUNT,nMAX_JADE_COUNT,"VËt phÈm nµy ®· sö dông ®¹t ®Õn sè l­îng giíi h¹n, kh«ng thÓ tiÕp tôc sö dông","<"} },
		--{"lib:CheckDay",	{20150601, 20150801, szOUT_OF_DATE} },
	},
	tbActition = 
	{
		--{"ThisActivity:UseJade123",	{nil} },
	},
}
tbConfig[15] = --Ò»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "ClickNpc",
	szName = "§èi tho¹i víi Thî May",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thî May"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"§æi M¶nh V¶i Mµu Xanh L¸",16} },
		{"AddDialogOpt",	{"Hîp thµnh ¸o LÝnh Míi",17} },
		{"AddDialogOpt",	{"Hîp thµnh ¸o LÝnh §· Söa",18} },
		{"AddDialogOpt",	{"Hîp thµnh ¸o LÝnh Míi (®iÓm kinh nghiÖm)",35} },
	},
}
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "nil",
	szName = "§æi M¶nh V¶i Mµu Xanh L¸",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
	},
	tbActition = 
	{
		{"ThisActivity:SelectGoldDlg",	{nil} },
	},
}
tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh ¸o LÝnh Míi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¸o LÝnh Míi",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		{"AddOneMaterial",	{"M¶nh V¶i",tbITEM_CLOTH,5} },
		{"AddOneMaterial",	{"Khuy ¸o",tbITEM_BUTTONHOLE,5} },
		{"AddOneMaterial",	{"¸o LÝnh BÞ R¸ch",tbITEM_TATTERED_UNIFORM,5} },
		--{"AddOneMaterial",	{"M¶nh V¶i Mµu Xanh L¸",tbITEM_GREEN_CLOTH,1} },
		{"AddOneMaterial",	{"Cuén ChØ",tbITEM_SEWING_THREAD,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_NEW_UNIFORM,1,EVENT_LOG_TITLE,"GhepChiecAoLinhMoi"} },
	},
}
tbConfig[18] = --Ò»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh ¸o LÝnh §· Söa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¸o LÝnh §· Söa",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		{"AddOneMaterial",	{"M¶nh V¶i",tbITEM_CLOTH,5} },
		{"AddOneMaterial",	{"Khuy ¸o",tbITEM_BUTTONHOLE,5} },
		{"AddOneMaterial",	{"¸o LÝnh BÞ R¸ch",tbITEM_TATTERED_UNIFORM,5} },
		{"AddOneMaterial",	{"M¶nh V¶i Mµu Xanh L¸",tbITEM_GREEN_CLOTH,1} },
		{"AddOneMaterial",	{"Hßa ThÞ BÝch",tbITEM_JADE,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_PATCHED_UNIFORM,1,EVENT_LOG_TITLE,"GhepAoLinhDaSua"} },
	},
}
tbConfig[19] = --Ò»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "ServerStart",
	szName = "Khëi ®éng sever",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"ThisActivity:InitFormula",	{nil} },
		--{"ThisActivity:InitAddNpc",	{nil} },
	},
}
tbConfig[20] = --Ò»¸öÏ¸½Ú
{
	nId = 20,
	szMessageType = "OnLogin",
	szName = "Ng­êi ch¬i ®¨ng nhËp",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		--{"ThisActivity:CheckTask",	{nIdx_MAX_NEW_UNIFORM_CAN_USE,1500,"","<"} },
	},
	tbActition = 
	{
		--{"ThisActivity:SetTask",	{nIdx_MAX_NEW_UNIFORM_CAN_USE,1500} },
	},
}
tbConfig[21] = --Ò»¸öÏ¸½Ú
{
	nId = 21,
	szMessageType = "nil",
	szName = "KiÓm tra ®¼ng cÊp",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
	},
	tbActition = 
	{
		--{"ThisActivity:ExecActivityDetail",	{17} },
	},
}
tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "nil",
	szName = "KiÓm tra ®¼ng cÊp",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
	},
	tbActition = 
	{
		--{"ThisActivity:ExecActivityDetail",	{18} },
	},
}
tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "§èi tho¹i víi Chñ TiÖm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chñ TiÖm"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Cuén ChØ",24} },
		{"AddDialogOpt",	{"Mua M¶nh V¶i Mµu Xanh L¸",25} },
		{"AddDialogOpt",	{"Mua Hßa ThÞ BÝch",26} },
	},
}
tbConfig[24] = --Ò»¸öÏ¸½Ú
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "nil",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua Cuén chØ",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"TiÒn §ång",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_SEWING_THREAD,1,EVENT_LOG_TITLE,"MuaCuonChi"} },
	},
}
tbConfig[25] = --Ò»¸öÏ¸½Ú
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "nil",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua m¶nh v¶i mµu xanh l¸",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},50000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,1,EVENT_LOG_TITLE,"MuaManhVaiMauXanhLa"} },
	},
}
tbConfig[26] = --Ò»¸öÏ¸½Ú
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "nil",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua Hßa thÞ bÝch",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},70000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_JADE,1,EVENT_LOG_TITLE,"MuaHoaThiBich"} },
	},
}
tbConfig[27] = --Ò»¸öÏ¸½Ú
{
	nId = 27,
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
tbConfig[28] = --Ò»¸öÏ¸½Ú
{
	nId = 28,
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
tbConfig[29] = --Ò»¸öÏ¸½Ú
{
	nId = 29,
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
tbConfig[30] = --Ò»¸öÏ¸½Ú
{
	nId = 30,
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
tbConfig[31] = --Ò»¸öÏ¸½Ú
{
	nId = 31,
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
tbConfig[32] = --Ò»¸öÏ¸½Ú
{
	nId = 32,
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
tbConfig[33] = --Ò»¸öÏ¸½Ú
{
	nId = 33,
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
tbConfig[34] =
{
	nId = 34,
	szMessageType = "ItemScript",
	szName = "Sö dông ChiÕc ¸o LÝnh Míi (exp)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {tbITEM_NEW_UNIFORM_EXP},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		--{"ThisActivity:CheckTowTask",	{nIdx_USED_NEW_UNIFORM_COUNT, nIdx_MAX_NEW_UNIFORM_CAN_USE,"Sö dông 1 Hßa ThÞ BÝch míi cã thÓ sö dông 20 lÇn ¸o lÝnh míi hoÆc 20 lÇn ¸o lÝnh míi ®iÓm kinh nghiÖm","<"} },
		{"ThisActivity:CheckTask",	{nIdx_USED_NEW_UNIFORM_COUNT,nMAX_AOLINHMOI_VA_ALMEXP,"§· ®¹t ®Õn giíi h¹n, kh«ng thÓ sö dông tiÕp","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"Hµnh trang kh«ng ®ñ chç trèng"} },
		--{"lib:CheckDay",	{20150601, 20150801, szOUT_OF_DATE} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNewUniformExp",	{nil} },	
		{"ThisActivity:NewUniformExpExtraAward",	{nil} },	

	},
}
tbConfig[35] = 
{
	nId = 35,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh ¸o LÝnh Míi (®iÓm kinh nghiÖm)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ChiÕc ¸o LÝnh Míi (®iÓm kinh nghiÖm)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		{"AddOneMaterial",	{"M¶nh V¶i",tbITEM_CLOTH,5} },
		{"AddOneMaterial",	{"Khuy ¸o",tbITEM_BUTTONHOLE,5} },
		{"AddOneMaterial",	{"¸o LÝnh BÞ R¸ch",tbITEM_TATTERED_UNIFORM,5} },
		--{"AddOneMaterial",	{"M¶nh V¶i Mµu Xanh L¸",tbITEM_GREEN_CLOTH,1} },
		{"AddOneMaterial",	{"Cuén ChØ",tbITEM_SEWING_THREAD,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_NEW_UNIFORM_EXP,1,EVENT_LOG_TITLE,"GhepChiecAoLinhMoi(Exp)"} },
	},
}