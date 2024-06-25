Include("\\script\\activitysys\\config\\38\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
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
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "ItemScript",
	szName = "right click item named NewYear-Gift",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"return {tbProp={6,1,3086,-1,-1,0},}"},
	tbCondition = 
	{
		{"ThisActivity:CheckTaskDaily",	{TSK_USED_NEWYEAR_GIFT_DAILY,MAX_USED_NEWYEAR_GIFT_DAILY,"S� l�n s� d�ng c�a ng��i h�m nay �� ��, ng�y mai h�y quay l�i nh�!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNewYearGift",	{nil} },
		{"ThisActivity:AddTaskDaily",	{TSK_USED_NEWYEAR_GIFT_DAILY,1} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "ItemScript",
	szName = "right click item named NewYear-Fireworks",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"return {tbProp={6,1,3087,-1,-1,0},}"},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_USED_NEWYEAR_FIREWORKS,MAX_USED_NEWYEAR_FIREWORKS,"Ng��i �� nh�n ���c qu� nhi�u ph�n th��ng, xin h�y th� c�i kh�c �i!","<"} },
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

tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i r�t nguyen lieu",
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
	szName = "H�ng rong b�n b�nh nh�n th�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch��ng ��ng Cung N�"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua l� g�i b�nh",6} },
		{"AddDialogOpt",	{"Mua tr�i sung",7} },
	},
}

tbConfig[6] =
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Mua l� g�i b�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L� g�i b�nh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=100000,},1} },
		--{"lib:CheckDay",	{20100920, 20101011, "Th�i h�n ��i �� k�t th�c"} },
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
	szName = "Mua tr�i sung",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�i sung",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=10000,},1} },
		--{"lib:CheckDay",	{20100920, 20101011, "Th�i h�n ��i �� k�t th�c"} },
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
	szName = "��i Th�n T�i h�p th�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i Th�n T�i"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh M�m Ng� Qu�",9} },
		{"AddDialogOpt",	{"H�p th�nh B�nh Ch�ng ��c Bi�t",10} },
		{"AddDialogOpt",	{"Nh�n bao l� x� n�m m�i",23} },
		--{"AddDialogOpt",	{"Xem TOP 3 s� d�ng v�t ph�m Event",26} },
	},
}

tbConfig[9] =
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh M�m ng� qu�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>M�m ng� qu�",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Tr�i d�a",{tbProp={6,1,30367,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr�i �u ��",{tbProp={6,1,30368,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr�i Sung",{tbProp={6,1,30369,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr�i M�ng C�u",{tbProp={6,1,30370,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr�i Xo�i",{tbProp={6,1,30371,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30375,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"[HD Tet nguyen dan] [H�p th�nh mam ngu qua]"} },
	},
}

tbConfig[10] =
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh b�nh ch�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B�nh ch�ng ��c bi�t",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L� g�i b�nh",{tbProp={6,1,30365,1,0,0},},1} },
		{"AddOneMaterial",	{"G�o n�p",{tbProp={6,1,4302,1,0,0},},2} },
		{"AddOneMaterial",	{"Th�t Heo",{tbProp={6,1,4304,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30376,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,"[HD Tet nguyen dan] [H�p th�nh banh chung dac biet]"} },
	},
}

--Thu thap trai xoai 30371

tbConfig[11] = --T�ng kim 1000 �i�m
{
	nId = 11,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 1000 �i�m",
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
tbConfig[12] = --T�ng kim 3000 �i�m
{
	nId = 12,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 3000 �i�m",
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
	szName = "V��t qua �i 17",
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
	szName = "V��t qua �i 28",
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
tbConfig[15] = --Th�y t�c ��u l�nh
{
	nId = 15,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t ch�t 1 th�y t�c ��u l�nh",
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
tbConfig[16] = --thu� t�c ��i ��u l�nh
{
	nId = 16,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t thu� t�c ��i ��u l�nh",
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
tbConfig[17] = --Vi�m ��
{
	nId = 17,
	szMessageType = "YDBZguoguan",
	szName = "V��t qua �i Vi�m �� th� 10",
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
tbConfig[18] = --Boss th� gi�i
{
	nId = 18,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t boss th� gi�i",
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
tbConfig[19] = --boss s�t th�
{
	nId = 19,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m v� s�t th� c�p 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30371,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},5,"EventTetNguyenDan\tTieuDietBossS�tTh�"} },
	},
}

--su dung thanh pham

tbConfig[20] = 
{
	nId = 20,
	szMessageType = "ItemScript",
	szName = "S� d�ng M�m ng� qu�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30375,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_SUDUNG_MAMNGUQUA,MAX_SUDUNG_MAMNGUQUA,"Ng��i �� nh�n ���c qu� nhi�u ph�n th��ng, xin h�y th� c�i kh�c �i!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"��ng c�p c�a ng��i kh�ng ��, kh�ng th� s� d�ng v�t ph�m",">="} },
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
	szName = "S� d�ng B�nh ch�ng ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30376,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_SUDUNG_BANHCHUNG,MAX_SUDUNG_BANHCHUNG,"Ng��i �� nh�n ���c qu� nhi�u ph�n th��ng, xin h�y th� c�i kh�c �i!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"��ng c�p c�a ng��i kh�ng ��, kh�ng th� s� d�ng v�t ph�m",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:TetND2016_BanhChungDacBiet", {nil}},
		{"ThisActivity:AddTask",	{TSK_SUDUNG_BANHCHUNG,1} },
	},
}

tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i r�t nguyen lieu",
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

tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "nil",
	szName = "Nh�n bao l� x� n�m m�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_BAOLIXI,1,"Thi�u Hi�p ng��i �� nh�n bao l� x� � ch� c�a ta r�i, m�i ng��i ch� ���c nh�n bao l� x� 1 l�n � ch� c�a ta!","<"} },
		{"lib:CheckDay",	{nbaolixiBD, nbaolixiKT, "V�o ng�y T�t Nguy�n ��n Thi�u Hi�p ��n ��y s� nh�n ���c bao l� x� n�m m�i, Thi�u Hi�p ng��i ��ng qu�n ��n nh�n bao l� x� nh�."} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H�nh trang kh�ng �� ch� tr�ng, �t nh�t ph�i 1 c�i 1*1 kh�ng gian h�nh trang"} },
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
	szName = "S� d�ng Bao l� x� n�m m�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4305,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_BAOLIXISD,1,"Thi�u Hi�p ng��i �� nh�n bao l� x� � ch� c�a ta r�i, m�i ng��i ch� ���c nh�n bao l� x� 1 l�n � ch� c�a ta!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"��ng c�p c�a ng��i kh�ng ��, kh�ng th� s� d�ng v�t ph�m",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:TetND2016_BaoLiXi", {nil}},
		{"ThisActivity:AddTask",	{TSK_BAOLIXISD,1} },
	},
}

ITEM_COIN		= {szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Mua Tr�i M�ng C�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua Tr�i M�ng C�u",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
		{"AddOneMaterial",	{"Ti�n ��ng",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Tr�i M�ng C�u",tbProp={6,1,30370,1,0,0},nExpiredTime=HetHanEventTetNguyenDan,},1,EVENT_LOG_TITLE,"MuaTraiMangCau"} },
	},
}

tbConfig[26] =
{
	nId = 26,
	szMessageType = "nil",
	szName = "Xem TOP 3 s� d�ng v�t ph�m event",
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
	szName = "H�ng rong b�n b�nh nh�n th�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Ti�m"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Tr�i M�ng C�u",25} },
	},
}

tbConfig[28] = --һ��ϸ��
{
	nId = 28,
	szMessageType = "OnLogin",
	szName = "Ng��i ch�i tr�c tuy�n",
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
