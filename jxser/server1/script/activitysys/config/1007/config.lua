Include("\\script\\activitysys\\config\\1007\\variables.lua")
tbConfig = {}

--C�ch ki�m nguy�n li�u trong c�c ho�t ��ng
tbConfig[1] = --T�ng kim 1000 �i�m
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 1000 �i�m",
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
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TongKim1000", "25 Ho�ng Th�ch", 1}},
	},
}

tbConfig[2] = --T�ng kim 3000 �i�m
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 3000 �i�m",
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
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TongKim3000", "50 Ho�ng Th�ch", 1}},
	},
}

tbConfig[3] =		--V��t �i 17
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 17",
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
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAi17", "25 Ho�ng Th�ch", 1}},
	},
}

tbConfig[4] =  				--V��t �i 28
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 28",
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
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAi28", "50 Ho�ng Th�ch", 1}},
	},
}

tbConfig[5] = --Th�y t�c ��u l�nh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t ch�t 1 th�y t�c ��u l�nh",
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
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietThuyTacDauLinh", "25 Ho�ng Th�ch", 1}},
	},
}

tbConfig[6] = --thu� t�c ��i ��u l�nh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t thu� t�c ��i ��u l�nh",
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
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietThuyTacDaiDauLinh", "50 Ho�ng Th�ch", 1}},
	},
}

tbConfig[7] = --Vi�m �� - v��t �i th� 10
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V��t qua �i Vi�m �� th� 10",
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
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAiViemDe10", "50 Ho�ng Th�ch", 1}},
	},
}
tbConfig[8] = --Boss Ho�ng Kim
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t boss Ho�ng Kim",
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
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossTheGioi", "50 Ho�ng Th�ch", 1}},
	},
}
tbConfig[9] = --boss s�t th�
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m v� s�t th� c�p 90",
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},35,"Event_PNVN", "TieuDietBossS�tTh�"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossSatThu", "15 Ho�ng Th�ch", 1}},
	},
}

---��i tho�i v�i Npc
tbConfig[10] =
{
	nId = 10,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Ti�u Ph��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ti�u Ph��ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"N�p Ho�ng Th�ch",12} },
		{"AddDialogOpt",	{"H�p th�nh B�ng Tinh Th�ch",11} },
		{"AddDialogOpt",	{"T�ng b� hoa h�ng",16} },
	},
}

tbConfig[11] = --H�p th�nh B�ng Tinh Th�ch
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh B�ng Tinh Th�ch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B�ng Tinh Th�ch",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"Ho�ng Th�ch",{tbProp={6,1,30153,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
		{"AddOneMaterial",	{"Thi�n Tinh Th�ch",{tbProp={6,1,30154,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30155,1,0,0},nExpiredTime=nItemExpiredTime,},1,"Event_PNVN", "GhepBangTinhThach"} },
	},
}

tbConfig[12] = --N�p v�t ph�m Ho�ng Th�ch
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "N�p v�t ph�m Ho�ng Th�ch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>N�p v�t ph�m Ho�ng Th�ch",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"Dang cap yeu cau 50 tro len",">="} },
		{"ThisActivity:HandInHoangThachLimit", {nil}},
		{"AddOneMaterial",	{"Ho�ng Th�ch",{tbProp={6,1,30153,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },		
	},
	tbActition = 
	{
		{"ThisActivity:HandInHoangThach", {nil}},
	},
}

tbConfig[13] = --s� d�ng B�ng Tinh Th�ch
{
	nId = 13,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�ng Tinh Th�ch",
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

---��i tho�i v�i Npc
tbConfig[14] =
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Th� Gh�p Hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th� Gh�p Hoa"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Gh�p b� hoa H�ng",15} },
		{"AddDialogOpt",	{"Nh�n th��ng ��t m�c 1000 event",30} },
	},
}

tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Gh�p b� hoa h�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B� Hoa H�ng",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"Hoa H�ng",{tbProp={6,1,4285,1,0,0},nExpiredTime=nItemExpiredTime,},5} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},150000} },
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
	szName = "T�ng b� hoa h�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>T�ng b� hoa h�ng",1,1,1,0.02},
	tbCondition = 
	{
		{"ThisActivity:HandInTangBoHoaHongLimit", {nil}},
		{"AddOneMaterial",	{"B� Hoa H�ng",{tbProp={6,1,4284,1,0,0},nExpiredTime=nItemExpiredTime,},1} },		
	},
	tbActition = 
	{
		{"ThisActivity:HandInTangBoHoaHong", {nil}},
	},
}

tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "ClickNpc",
	szName = "B�m v�o long nhi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B� Long"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"��i m�t n� c�u m�nh",21} },
		{"AddDialogOpt",	{"��i m�t n� tr��ng c�ng",22} },
		{"AddDialogOpt",	{"��i M�t n� ki�n ng�nh",23} },
		{"AddDialogOpt",	{"��i m�t n� qu� �nh",18} },
		{"AddDialogOpt",	{"��i h�i thi�n t�i t�o c�m nang",19} },
		{"AddDialogOpt",	{"��i nh�t k� c�n kh�n ph�",20} },
		{"AddDialogOpt",	{"��i m�t n� v��ng gi�",24} },
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� qu� �nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�t n� qu� �nh",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{201509100000, 201509282359, "Th�i h�n ��i �� k�t th�c"} },
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},15} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,455,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng trung thu][��i qu� �nh]"} },
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "��i h�i thi�n t�i t�o c�m nang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�m nang thay ��i tr�i ��t",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},13} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1781,1,0,0},nExpiredTime=20160, tbParam={60}},1,"[Ho�t ��ng trung thu][��i h�i thi�n t�i t�o c�m nang]"} },
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "��i nh�t k� c�n kh�n ph�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nh�t K� C�n Kh�n Ph�",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},300} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2126,1,0,0},nExpiredTime=30*60*24,},1,"[Ho�t ��ng trung thu][��i nh�t k� c�n kh�n ph�]"} },
	},
}
tbConfig[21] = --һ��ϸ��
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� c�u m�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�t n� c�u m�nh",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},15} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,454,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng trung thu][��i m�t n� c�u m�nh]"} },
	},
}

tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� tr��ng c�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�t n� tr��ng c�ng",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},15} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,479,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng trung thu][��i m�t n� tr��ng c�ng]"} },
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "��i M�t n� ki�n ng�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�t n� ki�n ng�nh",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},30} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,480,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng trung thu][��i M�t n� ki�n ng�nh]"} },
	},
}

tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� v��ng gi�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�t n� v��ng gi�",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},150} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,561,1,0,0},nExpiredTime=15*60*24,},1,"[Ho�t ��ng trung thu][��i nh�t k� c�n kh�n ph�]"} },
	},
}

tbConfig[25] = --һ��ϸ��
{
	nId = 25,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i r�t Hoa H�ng",
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

tbConfig[26] = --boss s�t th�
{
	nId = 26,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m v� s�t th� c�p 80",
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},2,"Event_PNVN", "TieuDietBossS�tTh�"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossSatThu", "2 Ho�ng Th�ch", 1}},
	},
}

tbConfig[27] = --boss s�t th�
{
	nId = 27,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m v� s�t th� c�p 70",
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},1,"Event_PNVN", "TieuDietBossS�tTh�"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossSatThu", "1 Ho�ng Th�ch", 1}},
	},
}

tbConfig[28] = --һ��ϸ��
{
	nId = 28,
	szMessageType = "ClickNpc",
	szName = "Click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Ti�m"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Thi�n Tinh Th�ch",29} },
	},
}

ITEM_COIN		= {szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},}

tbConfig[29] = --һ��ϸ��
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "buy healing bag",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua Thi�n Tinh Th�ch",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ti�n ��ng",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Thi�n Tinh Th�ch",tbProp={6,1,30154,-1,-1,-1},nExpiredTime=nItemExpiredTime},1,"Event_PNVN","MuaTTThach"} },
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