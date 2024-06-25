Include("\\script\\activitysys\\config\\29\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "Click v�o Ti�u Ph��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ti�u Ph��ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"T�ng H�p Qu�",2} },
		{"SetDialogTitle",	{"<npc>03/2017 ~ 04/2017, Nh�n s� c�p 80 tr� l�n c� th� t�ng H�p qu� cho Ti�u Ph��ng."} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "CreateCompose",
	szName = "T�ng H�p Qu� 8 Th�ng 3",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>T�ng H�p Qu� 8 Th�ng 3",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"��ng c�p ch�a �� 50",">="} },
		{"ThisActivity:CheckTaskDaily",	{TSK_IDX_DAILY_GIVE_LANHUA,MAX_GIVE_LANHUA_PERDAY,"H�m nay �� t�ng �� H�p Qu� r�i ng�y mai h�y quay l�i nh�","<"} },
		{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,4318,1,0,0},},1,"Kh�ng �� H�p Qu� 8 Th�ng 3"} },
		{"AddOneMaterial",	{"H�p Qu� 8 Th�ng 3",{tbProp={6,1,4318,1,0,0},},1} },
		{"ThisActivity:Vng_LanHua_Limit",	{nil} },
	},
	tbActition = 
	{
		{"ThisActivity:Vng_OnGiveLanHua",	{nil} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "ServerStart",
	szName = "Sever m� s� ��ng t�i NPC",
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

tbConfig[4] = --Hoa cuc
{
	nId = 4,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i r�t nguyen lieu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,4311,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},1,"1"} },
	},
}
tbConfig[5] = --Hoa bach hop
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i r�t nguyen lieu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,4313,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},1,"1"} },
	},
}

tbConfig[6] =
{
	nId = 6,
	szMessageType = "ClickNpc",
	szName = "Ch��ng ��ng Cung N� b�n Chi�c N�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch��ng ��ng Cung N�"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Chi�c N�",7} },
	},
}

tbConfig[7] =
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Mua Chi�c N�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chi�c N�",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=2000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4316,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},1,"HoatDong8Thang3MuaChiecNo"} },
	},
}

tbConfig[8] =
{
	nId = 8,
	szMessageType = "ClickNpc",
	szName = "Th� Gh�p Hoa h�p th�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th� Gh�p Hoa"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh B� Hoa",9} },
		{"AddDialogOpt",	{"H�p th�nh H�p Qu� 8 th�ng 3",10} },
	},
}

tbConfig[9] =
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh B� Hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B� Hoa",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hoa C�c V�ng",{tbProp={6,1,4311,1,0,0},},2} },
		{"AddOneMaterial",	{"Hoa B�ch H�p",{tbProp={6,1,4313,1,0,0},},2} },
		{"AddOneMaterial",	{"Hoa H�ng",{tbProp={6,1,4314,1,0,0},},1} },
		{"AddOneMaterial",	{"D�y C�t Hoa",{tbProp={6,1,4315,1,0,0},},1} },
		--{"AddOneMaterial",	{"Chi�c N�",{tbProp={6,1,4316,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4317,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},1,"[HD8Thang3] [HopThanhBoHoa]"} },
	},
}

tbConfig[10] =
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh H�p Qu� 8 Th�ng 3",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>H�p th�nh H�p Qu� 8 Th�ng 3",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hoa C�c V�ng",{tbProp={6,1,4311,1,0,0},},30} },
		{"AddOneMaterial",	{"Hoa Lan",{tbProp={6,1,4312,1,0,0},},1} },
		{"AddOneMaterial",	{"Chi�c N�",{tbProp={6,1,4316,1,0,0},},10} },
		{"AddOneMaterial",	{"Hoa H�ng",{tbProp={6,1,4314,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4318,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},1,"[HD8Thang3] [HopThanhHopQua8Thang3]"} },
	},
}

tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "S� d�ng B� Hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4317,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{12,"default"} },
		{"ThisActivity:CheckTask",	{TSK_SUDUNG_BOHOA,MAX_SUDUNG_BOHOA,"Ng��i �� s� d�ng �� B� Hoa, kh�ng th� s� d�ng th�m n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:SuDungBoHoa8Thang3",	{nil} },
		{"ThisActivity:AddTask",	{TSK_SUDUNG_BOHOA,1} },
	},
}

-- Thu thap nguyenlieu tham gia hoat dong

tbConfig[12] = --T�ng kim 1000 �i�m
{
	nId = 12,
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4314,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},20,"EventTetNguyenDan\tTongKim1000"} },
	},
}
tbConfig[13] = --T�ng kim 3000 �i�m
{
	nId = 13,
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4314,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},50,"EventTetNguyenDan\tTongKim3000"} },
	},
}
tbConfig[14] =
{
	nId = 14,
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4314,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},20,"EventTetNguyenDan\tVuotAi17"} },
	},
}
tbConfig[15] =
{
	nId = 15,
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4314,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},40,"EventTetNguyenDan\tVuotAi28"} },
	},
}
tbConfig[16] = --Th�y t�c ��u l�nh
{
	nId = 16,
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4314,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},20,"EventTetNguyenDan\tTieuDietThuyTacDauLinh"} },
	},
}
tbConfig[17] = --thu� t�c ��i ��u l�nh
{
	nId = 17,
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4314,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},50,"EventTetNguyenDan\tTieuDietThuyTacDaiDauLinh"} },
	},
}
tbConfig[18] = --Vi�m ��
{
	nId = 18,
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4314,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},30,"EventTetNguyenDan\tVuotAiViemDe10"} },
	},
}

tbConfig[19] = --Boss th� gi�i
{
	nId = 19,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t boss th� gi�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"523,513,511"} },
		--{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4314,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},50,"EventTetNguyenDan\tTieuDietBossTheGioi"} },
	},
}

tbConfig[20] = --boss s�t th�
{
	nId = 20,
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4314,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},5,"EventTetNguyenDan\tTieuDietBossS�tTh�"} },
	},
}

tbConfig[21] =
{
	nId = 21,
	szMessageType = "ClickNpc",
	szName = "Ch� Ti�m b�n d�y c�t hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Ti�m"},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua D�y c�t hoa",22} },
	},
}

ITEM_COIN		= {szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},}

tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Mua D�y c�t hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua D�y c�t hoa",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
		{"AddOneMaterial",	{"Ti�n ��ng",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4315,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},1,"HoatDong8Thang3MuaDayCotHoa"} },
	},
}