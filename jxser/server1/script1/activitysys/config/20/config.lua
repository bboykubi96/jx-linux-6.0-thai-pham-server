Include("\\script\\activitysys\\config\\20\\variables.lua")

tbConfig = {}
tbConfig[1] = --һ��ϸ��
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
		{"NpcFunLib:AddDialogNpc",	{"Thu V�n",1907,{{11,3182,4951}}} },
		{"NpcFunLib:AddDialogNpc",	{"Thu V�n",1907,{{78,1582,3215}}} },
		{"NpcFunLib:AddDialogNpc",	{"Thu V�n",1907,{{1,1582,3190}}} },
		{"ThisActivity:InitRule",	{nil} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "ClickNpc",
	szName = "click npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thu V�n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"SetDialogTitle",	    {"C�c hi�p kh�ch c� th� ��n ch� c�a ta tham gia ho�t ��ng thu nh�t l�a n��c, sau khi thu nh�t l�a n��c c� th� ��n g�p ta �� ��i ph�n th��ng"} },
		{"AddDialogOpt",	{"H�p th�nh Bao G�o Th��ng",4} },
		{"AddDialogOpt",	{"H�p th�nh Bao G�o ��c Bi�t",8} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
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
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,4332,1,0,0},nExpiredTime=20180725,},1,"1"} },
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,4326,1,0,0},nExpiredTime=20180725,},1,"1"} },
	},
}

tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh bao g�o th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p th�nh bao g�o th��ng",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"Bao T�i",ITEM_BAOTAI,1} },
		{"AddOneMaterial",	{"C�y L�a Xanh",ITEM_LUAXANH,1} },
		{"AddOneMaterial",	{"C�y L�a V�ng",ITEM_LUAVANG,1} },
		{"AddOneMaterial",	{"L��i Li�m S�t",ITEM_LIEMSAT,1} },
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
	szName = "H�p th�nh bao g�o Th�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p th�nh bao g�o Th�m",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"Bao T�i",ITEM_BAOTAI,2} },
		{"AddOneMaterial",	{"C�y L�a Xanh",ITEM_LUAXANH,1} },
		{"AddOneMaterial",	{"C�y L�a V�ng",ITEM_LUAVANG,2} },
		{"AddOneMaterial",	{"L��i Li�m S�t",ITEM_LIEMSAT,3} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_BAOGAOTHOM,1,EVENT_LOG_TITLE,"HopThanhBaoGaoThuong"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Ti�m"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua L��i Li�m S�t",7} },
		--{"AddDialogOpt",	{"Mua L��i Li�m B�c",9} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "buy item",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L��i Li�m S�t",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},100000} },
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
	szName = "H�p th�nh bao g�o ��c Bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p th�nh bao g�o ��c Bi�t",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"Bao T�i",ITEM_BAOTAI,1} },
		{"AddOneMaterial",	{"C�y L�a Xanh",ITEM_LUAXANH,1} },
		{"AddOneMaterial",	{"C�y L�a V�ng",ITEM_LUAVANG,1} },
		--{"AddOneMaterial",	{"L��i Li�m S�t",ITEM_LIEMSAT,1} },
		{"AddOneMaterial",	{"L��i Li�m B�c",ITEM_LIEMBAC,1} },
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
	tbMessageParam = {"L��i Li�m B�c",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ti�n ��ng",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_LIEMBAC,1,EVENT_LOG_TITLE,"MuaLuoiLiemBac"} },
	},
}

tbConfig[10] = --һ��ϸ��
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

--S� d�ng Item
tbConfig[11] = 
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "S� d�ng Bao G�o Th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4327,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"ThisActivity:CheckTask",	{TSK_SUDUNGBAOGAOTHUONG,MAX_SUDUNGBAOGAOTHUONG,"Ng��i �� nh�n ���c qu� nhi�u ph�n th��ng, xin h�y th� c�i kh�c �i!","<"} },
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
	szName = "S� d�ng Bao G�o Th�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4328,1,0,0},}},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
		--{"ThisActivity:CheckTask",	{TSK_SUDUNGBAOGAOTHOM,MAX_SUDUNGBAOGAOTHOM,"Ng��i �� nh�n ���c qu� nhi�u ph�n th��ng, xin h�y th� c�i kh�c �i!","<"} },
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
	szName = "S� d�ng Bao G�o ��c Bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4329,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"ThisActivity:CheckTask",	{TSK_SUDUNGBAOGAODB,MAX_SUDUNGBAOGAODB,"Ng��i �� nh�n ���c qu� nhi�u ph�n th��ng, xin h�y th� c�i kh�c �i!","<"} },
	},
	tbActition = 
	{		
		{"PlayerFunLib:AddExp",	{1000000,0,EVENT_LOG_TITLE,"Su Dung Bao Gao DB"} },
		{"ThisActivity:AddTask",	{TSK_SUDUNGBAOGAODB,1} },
		{"ThisActivity:SuDungBaoGaoDB",{nil}},
	},
}
tbConfig[14] = --T�ng kim 1000 �i�m
{
	nId = 14,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim  1000 �i�m",
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
tbConfig[15] = --T�ng kim 3000 �i�m
{
	nId = 15,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim  3000 �i�m",
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
tbConfig[16] =		--V��t �i 17
{
	nId = 16,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,20,EVENT_LOG_TITLE,"VuotAi17"} },		
	},
}
tbConfig[17] =		--V��t �i 28
{
	nId = 17,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,30,EVENT_LOG_TITLE,"VuotAi28"} },		
	},
}
tbConfig[18] = --Th�y t�c ��u l�nh
{
	nId = 18,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,20,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinh"} },				
	},
}
tbConfig[19] = --thu� t�c ��i ��u l�nh
{
	nId = 19,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,30,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinh"} },				
	},
}
tbConfig[20] = --Vi�m �� - v��t �i th� 10
{
	nId = 20,
	szMessageType = "YDBZguoguan",
	szName = "V��t qua �i Vi�m �� th� 6",
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
tbConfig[21] = --Boss Ho�ng Kim
{
	nId = 21,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,30,EVENT_LOG_TITLE,"TieuDietBossTheGioi"} },				
	},
}
tbConfig[22] = --boss s�t th�
{
	nId = 22,
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
		{"PlayerFunLib:GetItem",	{ITEM_LUAVANG,5,EVENT_LOG_TITLE,"TieuDietBossSatThu"} },				
	},
}

tbConfig[23] = --һ��ϸ��
{
	nId = 23,
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
