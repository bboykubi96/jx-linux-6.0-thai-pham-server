Include("\\script\\activitysys\\config\\37\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi kh�i ��ng server s� t�i �ng Gi� Noel",
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
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "B�n �� ��no qu�i nh�n ���c �o Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_CLOTHING,1,"1"} },
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_TROUSERS,1,"1"} },
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_BanhBiDo,1,"1"} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "�i�m t�ch l�y T�ng Kim cao c�p l�n h�n 1000 th�p h�n 3000 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{"751",1000,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"TongKim1000NhanTuiNoel"} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "�i�m t�ch l�y T�ng Kim cao c�p 3000 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,50,EVENT_LOG_TITLE,"TongKim3000NhanTuiNoel"} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i th� 17 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"VuotAi17NhanTuiNoel"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i th� 28 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,40,EVENT_LOG_TITLE,"VuotAi28NhanTuiNoel"} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Th�y T�c ��u L�nh Phong L�ng �� nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,10,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinhNhanTuiNoel"} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Th�y T�c ��i ��u L�nh Phong L�ng �� nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,40,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinhNhanTuiNoel"} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "YDBZguoguan",
	szName = "Vi�m �� v��t qua �i th� 10 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,20,EVENT_LOG_TITLE,"VuotAiViemDe10NhanTuiNoel"} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t Boss Ho�ng Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,50,EVENT_LOG_TITLE,"TieuDietBossTheGioiNhanTuiNoel"} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t Boss S�t Th�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,6,EVENT_LOG_TITLE,"TieuDietBossSatThuNhanTuiNoel"} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "Chuanguan",
	szName = "V��t �i ti�u di�t Boss ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"30"},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "YDBZ_KillMaxBoss",
	szName = "Vi�m �� ti�u di�t Boss cu�i ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"ThisActivity:YDBZ_GiveStar",	{nil} },
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "Nh�n v�o ��i T�ng Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i T�ng Gi�ng Sinh"},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"V�o l�c 09:00-10-12 ��n 23:59-31-12, c�c ��i hi�p c�p 80 tr� l�n c� th� tham gia ho�t ��ng Gi�ng Sinh"} },		
		--{"AddDialogOpt",	{"Online nh�n ph�n th��ng",15} },
		{"AddDialogOpt",	{"H�p th�nh v�t ph�m",17} },
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "��i tho�i nh�n Qu�n Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V�o l�c 09:00-10-12 ��n 23:59-31-12, c�c ��i hi�p c�p 80 tr� l�n c� th� tham gia ho�t ��ng Gi�ng Sinh",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Online nh�n ph�n th��ng",16} },
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "nil",
	szName = "Quy�t ��nh nh�n Qu�n Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{80,"default",">="} },
		{"ThisActivity:CheckTaskDaily",	{TSK_XMAS_TROUSERS_DAILY,50,"H�m nay ng��i kh�ng th� nh�n n�a, ng�y mai h�y quay l�i.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveXmasTrousers",	{nil} },
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "CreateDialog",
	szName = "��i tho�i h�p th�nh v�t ph�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V�o l�c 09:00-10-12 ��n 23:59-31-12, c�c ��i hi�p c�p 80 tr� l�n c� th� tham gia ho�t ��ng Gi�ng Sinh , ng��i c� mu�n h�p th�nh kh�ng?",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh H�p Qu� Gi�ng Sinh",18} },
		{"AddDialogOpt",	{"H�p th�nh B�nh Gi�ng Sinh",22} },
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh H�p Qu� Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p qu� gi�ng sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu�n Gi�ng Sinh",ITEM_XMAS_TROUSERS,2} },
		{"AddOneMaterial",	{"G� quay",ITEM_GaQuay,1} },
		{"AddOneMaterial",	{"T�i Gi�ng Sinh",ITEM_XMAS_BAG,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3080,1,0,0},nExpiredTime=NgayHetHanEventGS,},1,EVENT_LOG_TITLE,"GhepHopQuaNoelThanhCong"} },
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng Gi� Noel (nh�)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng Gi� Noel (nh�)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng Gi� Noel (trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng Gi� Noel (trung)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[21] = --һ��ϸ��
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng Gi� Noel (��i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng Gi� Noel (��i)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		
	},
	tbActition = 
	{

	},
}
tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh B�nh Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�nh Gi�ng Sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu�n Gi�ng Sinh",ITEM_XMAS_TROUSERS,2} },
		{"AddOneMaterial",	{"B�nh b� ��",{tbProp={6,1,30166,1,0,0},nExpiredTime=NgayHetHanEventGS,},2} },
		{"AddOneMaterial",	{"T�i Gi�ng Sinh",ITEM_XMAS_BAG,2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3082,1,0,0},nExpiredTime=NgayHetHanEventGS,},1,EVENT_LOG_TITLE,"composeXmasCake"} },
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "Nh�n v�o �ng Gi� Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng Gi� Noel"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"V�o l�c 0:00 25-12 ��n 23:59 25-12, c�c ��i hi�p c�p 80 tr� l�n c� th� ��n g�p ta �� nh�n m�n qu� gi�ng sinh l� 500 tri�u �i�m kinh nghi�m kh�ng c�ng d�n, m�i nh�n v�t ch� c� th� nh�n m�t l�n duy nh�t."} },		
		{"AddDialogOpt",	{"M�n qu� ��m gi�ng sinh",34} },
		{"AddDialogOpt",	{"H�p th�nh �ng gi� Noel h�ng",38} },
		--{"AddDialogOpt",	{"Xem TOP 3 s� d�ng v�t ph�m Event",40} },
	},
}
tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "L�nh B�i tri�u h�i Boss Tr��ng Tuy�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh b�i Boss - Tr��ng Tuy�n",1,1,1,1,0,50},
	tbCondition = 
	{

	},
	tbActition = 
	{
		
	},
}
tbConfig[25] = --һ��ϸ��
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "L�nh B�i tri�u h�i Boss Kim Th� L��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh b�i Boss - Kim Th� L��ng",1,1,1,1,0,50},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[26] = --һ��ϸ��
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "L�nh B�i tri�u h�i M� Dung To�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh b�i Boss - M� Dung To�n",1,1,1,1,0,50},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[27] = --һ��ϸ��
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "S� d�ng �ng Gi� Noel (nh�)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3077,1,0,0},}},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[28] = --һ��ϸ��
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "S� d�ng �ng Gi� Noel (trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3078,1,0,0},}},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[29] = --һ��ϸ��
{
	nId = 29,
	szMessageType = "ItemScript",
	szName = "S� d�ng �ng Gi� Noel (��i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3079,1,0,0},}},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[30] = --һ��ϸ��
{
	nId = 30,
	szMessageType = "ItemScript",
	szName = "S� d�ng h�p qu� gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3080,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{80,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_GIFT_LIMIT,MAX_USED_XMAS_GIFT_LIMIT,"Ng��i �� s� d�ng �� H�p Qu� Gi�ng Sinh, kh�ng th� giao th�m ���c n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasGift",	{nil} },
	},
}
tbConfig[31] = --һ��ϸ��
{
	nId = 31,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�nh Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3082,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{80,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_CAKE_LIMIT,MAX_USED_XMAS_CAKE_LIMIT,"Ng��i �� s� d�ng �� B�nh Gi�ng Sinh r�i, kh�ng th� giao th�m ���c n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasCake",	{nil} },
	},
}
tbConfig[32] = --һ��ϸ��
{
	nId = 32,
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
tbConfig[33] = 
{
	nId = 33,
	szMessageType = "nil",
	szName = "Nh�n ��n b� gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTimeGetCompensation",	{nil} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 0, "M�i nh�n v�t ch� ���c nh�n th��ng 1 l�n", "=="}},	
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:setBitTask", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 1}},
		{"PlayerFunLib:AddExp",	{18e6,0,"Event_Noel","NhanThuongDenBuTrongCay"} },
	},
}
tbConfig[34] =
{
	nId = 34,
	szMessageType = "CreateDialog",
	szName = "��i tho�i nh�n ph�n th��ng ��m gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V�o l�c 0:00-25-12 ��n 23:59-25-12, c�c ��i hi�p c�p 80 tr� l�n c� th� ��n g�p ta �� nh�n m�n qu� gi�ng sinh l� 200 tri�u �i�m kinh nghi�m kh�ng c�ng d�n, m�i nh�n v�t ch� c� th� nh�n m�t l�n duy nh�t.",0},
	tbCondition = 
	{		
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta mu�n nh�n th��ng",35} },
	},
}
tbConfig[35] = 
{
	nId = 35,
	szMessageType = "nil",
	szName = "nh�n ph�n th��ng ��m gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_PHAN_THUONG_DEM_GS,0,"Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n n�a","=="} },
	},
	tbActition = 
	{
		{"ThisActivity:PhanThuongDemGiangSinh",	{nil} },
	},
}
tbConfig[36] =--Click h�ng rong mua g� quay quay
{
	nId = 36,
	szMessageType = "ClickNpc",
	szName = "Nh�n v�o Ch� Ti�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Ti�m"},
	tbCondition = 
	{
	},
	tbActition = 
	{		
		{"AddDialogOpt",	{"Mua G� Quay",37} },
		{"AddDialogOpt",	{"Mua N�n gi�ng sinh",41} },
	},
}
tbConfig[37] =
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Mua G� Quay",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"G� quay",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},150000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="G� quay",tbProp={6,1,30167,1,0,0},nExpiredTime=NgayHetHanEventGS,},1,EVENT_LOG_TITLE,"MuaGaQuay"} },
	},
}
tbConfig[38] =
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng gi� Noel h�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng gi� Noel h�ng",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"�o Gi�ng Sinh",ITEM_XMAS_CLOTHING,1} },
		{"AddOneMaterial",	{"T�i Gi�ng Sinh",ITEM_XMAS_BAG,1} },
		{"AddOneMaterial",	{"N�n gi�ng sinh",ITEM_XMAS_HAT,1} },
		{"AddOneMaterial",	{"Qu�n gi�ng sinh",ITEM_XMAS_TROUSERS,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30168,1,0,0},nExpiredTime=NgayHetHanEventGS,},1, EVENT_LOG_TITLE, "GhepOngGiaNoelHong"} },
	},
}
tbConfig[39] = 
{
	nId = 39,
	szMessageType = "ItemScript",
	szName = "S� d�ng �ng Gi� Noel h�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30168,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{80,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{3, 3, 1,"default"} },
		{"ThisActivity:CheckTask",	{TSK_ONG_GIA_NOEL_HONG,MAX_USED_ONG_GIA_NOEL_HONG_LIMIT,"Ng��i �� s� d�ng �� r�i, kh�ng th� th�m ���c n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_Pink",	{nil} },
	},
}

tbConfig[40] =
{
	nId = 40,
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

ITEM_COIN		= {szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},}
tbConfig[41] = 
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "Mua M� Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua Mua M� Gi�ng Sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
		{"AddOneMaterial",	{"Ti�n ��ng",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3072,1,0,0},nExpiredTime=NgayHetHanEventGS,},1,"MuaMuGiangSinh", "MuaMuGiangSinh"} },
	},
}