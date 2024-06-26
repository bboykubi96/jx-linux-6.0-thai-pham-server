Include("\\script\\activitysys\\config\\38\\variables.lua")
tbConfig = {}
tbConfig[1] = --一个细节
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
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "ItemScript",
	szName = "right click item named NewYear-Gift",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"return {tbProp={6,1,3086,-1,-1,0},}"},
	tbCondition = 
	{
		{"ThisActivity:CheckTaskDaily",	{TSK_USED_NEWYEAR_GIFT_DAILY,MAX_USED_NEWYEAR_GIFT_DAILY,"S� l莕 s� d鬾g c馻 ngi h玬 nay  , ng祔 mai h穣 quay l筰 nh�!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNewYearGift",	{nil} },
		{"ThisActivity:AddTaskDaily",	{TSK_USED_NEWYEAR_GIFT_DAILY,1} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "ItemScript",
	szName = "right click item named NewYear-Fireworks",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"return {tbProp={6,1,3087,-1,-1,0},}"},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_USED_NEWYEAR_FIREWORKS,MAX_USED_NEWYEAR_FIREWORKS,"Ngi  nh薾 頲 qu� nhi襲 ph莕 thng, xin h穣 th� c竔 kh竎 甶!","<"} },
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

tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "NpcOnDeath",
	szName = "Цnh qu竔 r韙 nguyen lieu",
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
	szName = "H祅g rong b竛 b竛h nh﹏ th辴",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chng Жng Cung N�"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua l� g鉯 b竛h",6} },
		{"AddDialogOpt",	{"Mua tr竔 sung",7} },
	},
}

tbConfig[6] =
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Mua l� g鉯 b竛h",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L� g鉯 b竛h",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng﹏ lng",{nJxb=100000,},1} },
		--{"lib:CheckDay",	{20100920, 20101011, "Th阨 h筺 i  k誸 th骳"} },
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
	szName = "Mua tr竔 sung",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr竔 sung",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng﹏ lng",{nJxb=10000,},1} },
		--{"lib:CheckDay",	{20100920, 20101011, "Th阨 h筺 i  k誸 th骳"} },
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
	szName = "Чi Th莕 T礽 h頿 th祅h",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Чi Th莕 T礽"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H頿 th祅h M﹎ Ng� Qu�",9} },
		{"AddDialogOpt",	{"H頿 th祅h B竛h Ch璶g c Bi謙",10} },
		{"AddDialogOpt",	{"Nh薾 bao l� x� n╩ m韎",23} },
		--{"AddDialogOpt",	{"Xem TOP 3 s� d鬾g v藅 ph萴 Event",26} },
	},
}

tbConfig[9] =
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h M﹎ ng� qu�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>M﹎ ng� qu�",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Tr竔 d鮝",{tbProp={6,1,30367,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr竔 畊 ",{tbProp={6,1,30368,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr竔 Sung",{tbProp={6,1,30369,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr竔 M穘g C莡",{tbProp={6,1,30370,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr竔 Xo礽",{tbProp={6,1,30371,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30375,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"[HD Tet nguyen dan] [H頿 th祅h mam ngu qua]"} },
	},
}

tbConfig[10] =
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h b竛h ch璶g",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B竛h ch璶g c bi謙",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L� g鉯 b竛h",{tbProp={6,1,30365,1,0,0},},1} },
		{"AddOneMaterial",	{"G筼 n誴",{tbProp={6,1,4302,1,0,0},},2} },
		{"AddOneMaterial",	{"Th辴 Heo",{tbProp={6,1,4304,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30376,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"[HD Tet nguyen dan] [H頿 th祅h banh chung dac biet]"} },
	},
}

--Thu thap trai xoai 30371

tbConfig[11] = --T鑞g kim 1000 甶觤
{
	nId = 11,
	szMessageType = "FinishSongJin",
	szName = "T鑞g kim cao c蕄 1000 甶觤",
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
tbConfig[12] = --T鑞g kim 3000 甶觤
{
	nId = 12,
	szMessageType = "FinishSongJin",
	szName = "T鑞g kim cao c蕄 3000 甶觤",
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
	szName = "Vt qua 秈 17",
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
	szName = "Vt qua 秈 28",
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
tbConfig[15] = --Th駓 t芻 u l躰h
{
	nId = 15,
	szMessageType = "NpcOnDeath",
	szName = "Gi誸 ch誸 1 th駓 t芻 u l躰h",
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
tbConfig[16] = --thu� t芻 i u l躰h
{
	nId = 16,
	szMessageType = "NpcOnDeath",
	szName = "Ti猽 di謙 thu� t芻 i u l躰h",
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
tbConfig[17] = --Vi猰 
{
	nId = 17,
	szMessageType = "YDBZguoguan",
	szName = "Vt qua 秈 Vi猰 д th� 10",
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
tbConfig[18] = --Boss th� gi韎
{
	nId = 18,
	szMessageType = "NpcOnDeath",
	szName = "Ti猽 di謙 boss th� gi韎",
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
tbConfig[19] = --boss s竧 th�
{
	nId = 19,
	szMessageType = "NpcOnDeath",
	szName = "Nhi謒 v� s竧 th� c蕄 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},5,"EventTetNguyenDan\tTieuDietBossS竧Th�"} },
	},
}

--su dung thanh pham

tbConfig[20] = 
{
	nId = 20,
	szMessageType = "ItemScript",
	szName = "S� d鬾g M﹎ ng� qu�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30375,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_SUDUNG_MAMNGUQUA,MAX_SUDUNG_MAMNGUQUA,"Ngi  nh薾 頲 qu� nhi襲 ph莕 thng, xin h穣 th� c竔 kh竎 甶!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"Ъng c蕄 c馻 ngi kh玭g , kh玭g th� s� d鬾g v藅 ph萴",">="} },
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
	szName = "S� d鬾g B竛h ch璶g c bi謙",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30376,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_SUDUNG_BANHCHUNG,MAX_SUDUNG_BANHCHUNG,"Ngi  nh薾 頲 qu� nhi襲 ph莕 thng, xin h穣 th� c竔 kh竎 甶!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"Ъng c蕄 c馻 ngi kh玭g , kh玭g th� s� d鬾g v藅 ph萴",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:TetND2016_BanhChungDacBiet", {nil}},
		{"ThisActivity:AddTask",	{TSK_SUDUNG_BANHCHUNG,1} },
	},
}

tbConfig[22] = --一个细节
{
	nId = 22,
	szMessageType = "NpcOnDeath",
	szName = "Цnh qu竔 r韙 nguyen lieu",
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

tbConfig[23] = --一个细节
{
	nId = 23,
	szMessageType = "nil",
	szName = "Nh薾 bao l� x� n╩ m韎",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_BAOLIXI,1,"Thi誹 Hi謕 ngi  nh薾 bao l� x� � ch� c馻 ta r錳, m鏸 ngi ch� 頲 nh薾 bao l� x� 1 l莕 � ch� c馻 ta!","<"} },
		{"lib:CheckDay",	{nbaolixiBD, nbaolixiKT, "V祇 ng祔 T誸 Nguy猲 Цn Thi誹 Hi謕 n y s� nh薾 頲 bao l� x� n╩ m韎, Thi誹 Hi謕 ngi ng qu猲 n nh薾 bao l� x� nh�."} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H祅h trang kh玭g  ch� tr鑞g, 輙 nh蕋 ph秈 1 c竔 1*1 kh玭g gian h祅h trang"} },
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
	szName = "S� d鬾g Bao l� x� n╩ m韎",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4305,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_BAOLIXISD,1,"Thi誹 Hi謕 ngi  nh薾 bao l� x� � ch� c馻 ta r錳, m鏸 ngi ch� 頲 nh薾 bao l� x� 1 l莕 � ch� c馻 ta!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"Ъng c蕄 c馻 ngi kh玭g , kh玭g th� s� d鬾g v藅 ph萴",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:TetND2016_BaoLiXi", {nil}},
		{"ThisActivity:AddTask",	{TSK_BAOLIXISD,1} },
	},
}

ITEM_COIN		= {szName="Ti襫 уng",tbProp={4,417,1,1,0,0},}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Mua Tr竔 M穘g C莡",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua Tr竔 M穘g C莡",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
		{"AddOneMaterial",	{"Ti襫 уng",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Tr竔 M穘g C莡",tbProp={6,1,30370,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,EVENT_LOG_TITLE,"MuaTraiMangCau"} },
	},
}

tbConfig[26] =
{
	nId = 26,
	szMessageType = "nil",
	szName = "Xem TOP 3 s� d鬾g v藅 ph萴 event",
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
	szName = "H祅g rong b竛 b竛h nh﹏ th辴",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Ti謒"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Tr竔 M穘g C莡",25} },
	},
}

tbConfig[28] = --一个细节
{
	nId = 28,
	szMessageType = "OnLogin",
	szName = "Ngi ch琲 tr鵦 tuy課",
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
