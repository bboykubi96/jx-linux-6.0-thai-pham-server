Include("\\script\\activitysys\\config\\11\\variables.lua")
tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "T骾 Nguy猲 Li謚 nh qu竔 r琲 ra",
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
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "ItemScript",
	szName = "S� d鬾g T骾 Nguy猲 Li謚",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {tbITEM_MATERIAL_BAG},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H祅h trang kh玭g  ch� tr鑞g"} },
		--{"lib:CheckDay",	{20150601, 20150801, szOUT_OF_DATE} },
	},
	tbActition = 
	{
		{"ThisActivity:UseMaterialBag",	{nil} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "ItemScript",
	szName = "S� d鬾g Chi誧 竜 L輓h M韎",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {tbITEM_NEW_UNIFORM},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		--{"ThisActivity:CheckTowTask",	{nIdx_USED_NEW_UNIFORM_COUNT, nIdx_MAX_NEW_UNIFORM_CAN_USE,"S� d鬾g 1 H遖 Th� B輈h m韎 c� th� s� d鬾g 20 l莕 竜 l輓h m韎 ho芻 20 l莕 竜 l輓h m韎 甶觤 kinh nghi謒","<"} },
		{"ThisActivity:CheckTask",	{nIdx_USED_NEW_UNIFORM_COUNT,nMAX_AOLINHMOI_VA_ALMEXP,"Х t n gi韎 h筺, kh玭g th� s� d鬾g ti誴","<"} },
		--{"PlayerFunLib:CheckFreeBagCell",	{20,"H祅h trang kh玭g  ch� tr鑞g"} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{3, 3, 1,"default"} },
		--{"lib:CheckDay",	{20150601, 20150801, szOUT_OF_DATE} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNewUniform",	{nil} },
		{"ThisActivity:NewUniformExtraAward",	{nil} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "ItemScript",
	szName = "S� d鬾g 竜 L輓h Х S鯽",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {tbITEM_PATCHED_UNIFORM},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		{"ThisActivity:CheckTask",	{nIdx_USED_PATCHED_UNIFORM_COUNT,nMAX_PATCHED_UNIFORM_CAN_USE,"Х t n gi韎 h筺, kh玭g th� s� d鬾g ti誴","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H祅h trang kh玭g  ch� tr鑞g"} },
		--{"lib:CheckDay",	{20150601, 20150801, szOUT_OF_DATE} },
	},
	tbActition = 
	{
		{"ThisActivity:UsePatchedUniform",	{nil} },
	},
}
tbConfig[5] = --一个细节
{
	nId = 5,
	szMessageType = "FinishSongJin",
	szName = "Ph莕 thng T鑞g Kim >=3000",
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
tbConfig[6] = --一个细节
{
	nId = 6,
	szMessageType = "FinishSongJin",
	szName = "Ph莕 thng T鑞g Kim [1000,3000)",
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
tbConfig[7] = --一个细节
{
	nId = 7,
	szMessageType = "Chuanguan",
	szName = "Vt qua 秈 17",
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
tbConfig[8] = --一个细节
{
	nId = 8,
	szMessageType = "Chuanguan",
	szName = "Vt qua 秈 28",
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
tbConfig[9] = --一个细节
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "Th駓 T芻 u L躰h Phong L╪g ч",
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
tbConfig[10] = --一个细节
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Th駓 T芻 Чi u L躰h Phong L╪g ч",
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
tbConfig[11] = --一个细节
{
	nId = 11,
	szMessageType = "YDBZguoguan",
	szName = "Ph莕 thng Vi猰 д",
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
tbConfig[12] = --一个细节
{
	nId = 12,
	szMessageType = "NpcOnDeath",
	szName = "Ph莕 thng boss Ho祅g Kim",
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
tbConfig[13] = --一个细节
{
	nId = 13,
	szMessageType = "NpcOnDeath",
	szName = "Ph莕 thng boss S竧 Th�",
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
tbConfig[14] = --一个细节
{
	nId = 14,
	szMessageType = "ItemScript",
	szName = "S� d鬾g H遖 Th� B輈h",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {tbITEM_JADE},

	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		--{"ThisActivity:CheckTask",	{nIdx_USED_JADE_COUNT,nMAX_JADE_COUNT,"V藅 ph萴 n祔  s� d鬾g t n s� lng gi韎 h筺, kh玭g th� ti誴 t鬰 s� d鬾g","<"} },
		--{"lib:CheckDay",	{20150601, 20150801, szOUT_OF_DATE} },
	},
	tbActition = 
	{
		--{"ThisActivity:UseJade123",	{nil} },
	},
}
tbConfig[15] = --一个细节
{
	nId = 15,
	szMessageType = "ClickNpc",
	szName = "цi tho筰 v韎 Th� May",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th� May"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"фi M秐h V秈 M祏 Xanh L�",16} },
		{"AddDialogOpt",	{"H頿 th祅h 竜 L輓h M韎",17} },
		{"AddDialogOpt",	{"H頿 th祅h 竜 L輓h Х S鯽",18} },
		{"AddDialogOpt",	{"H頿 th祅h 竜 L輓h M韎 (甶觤 kinh nghi謒)",35} },
	},
}
tbConfig[16] = --一个细节
{
	nId = 16,
	szMessageType = "nil",
	szName = "фi M秐h V秈 M祏 Xanh L�",
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
tbConfig[17] = --一个细节
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h 竜 L輓h M韎",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"竜 L輓h M韎",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		{"AddOneMaterial",	{"M秐h V秈",tbITEM_CLOTH,5} },
		{"AddOneMaterial",	{"Khuy 竜",tbITEM_BUTTONHOLE,5} },
		{"AddOneMaterial",	{"竜 L輓h B� R竎h",tbITEM_TATTERED_UNIFORM,5} },
		--{"AddOneMaterial",	{"M秐h V秈 M祏 Xanh L�",tbITEM_GREEN_CLOTH,1} },
		{"AddOneMaterial",	{"Cu閚 Ch�",tbITEM_SEWING_THREAD,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_NEW_UNIFORM,1,EVENT_LOG_TITLE,"GhepChiecAoLinhMoi"} },
	},
}
tbConfig[18] = --一个细节
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h 竜 L輓h Х S鯽",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"竜 L輓h Х S鯽",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		{"AddOneMaterial",	{"M秐h V秈",tbITEM_CLOTH,5} },
		{"AddOneMaterial",	{"Khuy 竜",tbITEM_BUTTONHOLE,5} },
		{"AddOneMaterial",	{"竜 L輓h B� R竎h",tbITEM_TATTERED_UNIFORM,5} },
		{"AddOneMaterial",	{"M秐h V秈 M祏 Xanh L�",tbITEM_GREEN_CLOTH,1} },
		{"AddOneMaterial",	{"H遖 Th� B輈h",tbITEM_JADE,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_PATCHED_UNIFORM,1,EVENT_LOG_TITLE,"GhepAoLinhDaSua"} },
	},
}
tbConfig[19] = --一个细节
{
	nId = 19,
	szMessageType = "ServerStart",
	szName = "Kh雐 ng sever",
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
tbConfig[20] = --一个细节
{
	nId = 20,
	szMessageType = "OnLogin",
	szName = "Ngi ch琲 ng nh藀",
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
tbConfig[21] = --一个细节
{
	nId = 21,
	szMessageType = "nil",
	szName = "Ki觤 tra ng c蕄",
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
tbConfig[22] = --一个细节
{
	nId = 22,
	szMessageType = "nil",
	szName = "Ki觤 tra ng c蕄",
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
tbConfig[23] = --一个细节
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "цi tho筰 v韎 Ch� Ti謒",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Ti謒"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Cu閚 Ch�",24} },
		{"AddDialogOpt",	{"Mua M秐h V秈 M祏 Xanh L�",25} },
		{"AddDialogOpt",	{"Mua H遖 Th� B輈h",26} },
	},
}
tbConfig[24] = --一个细节
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "nil",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua Cu閚 ch�",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ti襫 уng",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_SEWING_THREAD,1,EVENT_LOG_TITLE,"MuaCuonChi"} },
	},
}
tbConfig[25] = --一个细节
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "nil",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua m秐h v秈 m祏 xanh l�",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng﹏ lng",{nJxb=1},50000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_GREEN_CLOTH,1,EVENT_LOG_TITLE,"MuaManhVaiMauXanhLa"} },
	},
}
tbConfig[26] = --一个细节
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "nil",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua H遖 th� b輈h",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng﹏ lng",{nJxb=1},70000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_JADE,1,EVENT_LOG_TITLE,"MuaHoaThiBich"} },
	},
}
tbConfig[27] = --一个细节
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
tbConfig[28] = --一个细节
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
tbConfig[29] = --一个细节
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
tbConfig[30] = --一个细节
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
tbConfig[31] = --一个细节
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
tbConfig[32] = --一个细节
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
tbConfig[33] = --一个细节
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
	szName = "S� d鬾g Chi誧 竜 L輓h M韎 (exp)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {tbITEM_NEW_UNIFORM_EXP},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		--{"ThisActivity:CheckTowTask",	{nIdx_USED_NEW_UNIFORM_COUNT, nIdx_MAX_NEW_UNIFORM_CAN_USE,"S� d鬾g 1 H遖 Th� B輈h m韎 c� th� s� d鬾g 20 l莕 竜 l輓h m韎 ho芻 20 l莕 竜 l輓h m韎 甶觤 kinh nghi謒","<"} },
		{"ThisActivity:CheckTask",	{nIdx_USED_NEW_UNIFORM_COUNT,nMAX_AOLINHMOI_VA_ALMEXP,"Х t n gi韎 h筺, kh玭g th� s� d鬾g ti誴","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H祅h trang kh玭g  ch� tr鑞g"} },
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
	szName = "H頿 th祅h 竜 L輓h M韎 (甶觤 kinh nghi謒)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chi誧 竜 L輓h M韎 (甶觤 kinh nghi謒)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,szLEVEL_TIP,">="} },
		{"AddOneMaterial",	{"M秐h V秈",tbITEM_CLOTH,5} },
		{"AddOneMaterial",	{"Khuy 竜",tbITEM_BUTTONHOLE,5} },
		{"AddOneMaterial",	{"竜 L輓h B� R竎h",tbITEM_TATTERED_UNIFORM,5} },
		--{"AddOneMaterial",	{"M秐h V秈 M祏 Xanh L�",tbITEM_GREEN_CLOTH,1} },
		{"AddOneMaterial",	{"Cu閚 Ch�",tbITEM_SEWING_THREAD,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{tbITEM_NEW_UNIFORM_EXP,1,EVENT_LOG_TITLE,"GhepChiecAoLinhMoi(Exp)"} },
	},
}