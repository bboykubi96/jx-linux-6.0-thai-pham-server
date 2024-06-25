Include("\\script\\activitysys\\config\\31\\variables.lua")
tbConfig = {}
tbConfig[1] = --T�ng Kim 1000 �i�m
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim Cao C�p 1000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},100,"[Event_Sinh Nh�t] [tTongKim1000]"} },
	},
}
tbConfig[2] = --T�ng Kim 3000 �i�m
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim Cao C�p 3000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"[Event_Sinh Nh�t] [tTongKim3000]"} },
	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V��t Qua �i 17 Giai �o�n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},100,"[Event_Sinh Nh�t] [tVuotAi17]"} },
	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V��t Qua �i 28 Giai �o�n 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"[Event_Sinh Nh�t] [tVuotAi28]"} },
	},
}
tbConfig[5] = --Th�y T�c ��u L�nh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t Ch�t 1 Th�y T�c ��u L�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},100,"[Event_Sinh Nh�t] [tTieuDietThuyTacDauLinh]"} },
	},
}
tbConfig[6] = --Th�y T�c ��i ��u L�nh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u Di�t Th�y T�c ��i ��u L�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"Event_Sinh Nh�t\tTieuDietThuyTacDaiDauLinh"} },
	},
}
tbConfig[7] = --Vi�m ��
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V��t Qua �i Vi�m �� Th� 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"[Event_Sinh Nh�t] [tVuotAiViemDe10]"} },
	},
}
tbConfig[8] = --Tin Su
{
	nId = 8,
	szMessageType = "FinishMail",
	szName = "Tin Su",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"[Event_Sinh Nh�t] [tTinSu10]"} },
	},
}
tbConfig[9] = --V�LMC
{
	nId = 9,
	szMessageType = "FinishVLMC_VNG",
	szName = "Ho�n Th�nh VLMC",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},100,"[Event_Sinh Nh�t] [tVLMC]"} },
	},
}
tbConfig[10] = --Boss Th� Gi�i
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u Di�t Boss Th� Gi�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"[Event_Sinh Nh�t] [tTieuDietBossTheGioi]"} },
	},
}
tbConfig[11] = --Boss S�t Th�
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m V� S�t Th� C�p 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 


	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},100,"[Event_Sinh Nh�t] [tTieuDietBossS�tTh�]"} },
	},
}
tbConfig[12] = --B�n �� ��nh Qu�i R� Nguy�n Li�u
{
	nId = 12,
	szMessageType = "NpcOnDeath",
	szName = "B�n �� ��nh Qu�i R�t Ra Nguy�n Li�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,321,322,75,340"} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{nExpiredTime=20220829,tbProp={6,1,2856,1,0,0},},1,"40"} },
	},
}
tbConfig[13] = --��i tho�i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Ch� Ti�m T�p H�a",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Ti�m T�p H�a"},
	tbCondition = 
	{
	},
	tbActition = 
	{
             {"AddDialogOpt",	{"Mua L� V�t Qu�c Kh�nh",24} },
	},
}
tbConfig[14] = --Gh�p Nguy�n Li�u
{
	nId = 14,
	szMessageType = "CreateDialog",
	szName = "��i tho�i Ch��ng ��ng Cung N�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xin Ch�o � ��y C� R�t Nhi�u Lo�i B�nh ��i Hi�p Mu�n L�m Lo�i N�o"},

	tbCondition = 
	{
	},
	tbActition = 
	{
                {"AddDialogOpt",	{"Mua B�nh Sinh Nh�t",24} },
	        {"AddDialogOpt",	{"Mua N�n Sinh Nh�t",22} },
		{"AddDialogOpt",	{"H�p Th�nh B�nh Sinh Nh�t",15} },
		{"AddDialogOpt",	{"H�p Th�nh B�nh Sinh Nh�t ��c Bi�t",16} },
	},
}
tbConfig[15] = --
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "H�p Th�nh B�nh Sinh Nh�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�nh Sinh Nh�t",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"B�t M�",{tbProp={6,1,2853,1,0,0},},2} },
		{"AddOneMaterial",	{"���ng Tinh",{tbProp={6,1,2852,1,0,0},},2} },
		{"AddOneMaterial",	{"S�a T��i",{tbProp={6,1,2851,1,0,0},},1} },
		{"AddOneMaterial",	{"B�",{tbProp={6,1,2855,1,0,0},},1} },
		{"AddOneMaterial",	{"Kem",{tbProp={6,1,2856,1,0,0},},1} },
		{"AddOneMaterial",	{"200000 l��ng",{nJxb=200000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2860,1,0,0},},1,"[Event_Sinh Nh�t] [B�nh Sinh Nh�t]"} },
	},
}
tbConfig[16] = --
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "H�p Th�nh B�nh Sinh Nh�t ��c Bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�nh Sinh Nh�t ��c Bi�t",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"B�nh Sinh Nh�t",{tbProp={6,1,2860,1,0,0},},2} },
		{"AddOneMaterial",	{"N�n Sinh Nh�t",{tbProp={6,1,2857,1,0,0},},1} },
		{"AddOneMaterial",	{"200000 l��ng",{nJxb=200000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2861,1,0,0},},1,"[Event_Sinh Nh�t] [B�nh Sinh Nh�t ��c Bi�t]"} },
	},
}
tbConfig[17] = --��i tho�i V�i Ch��ng ��ng Cung N�
{
	nId = 17,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Ch��ng ��ng Cung N�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch��ng ��ng Cung N�"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Ta Mu�n T�ng B�nh Sinh Nh�t Cho N�ng L�y Exp",18} },
               -- {"AddDialogOpt",	{"Ta Mu�n T�ng B�nh Sinh Nh�t DB Cho N�ng L�y �� N�ng C�p Xuy�n Y",23} },
	},
}
tbConfig[18] =
{
	nId = 18,
	szMessageType = "nil",
	szName = "T�ng B�nh Kem",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,2860,1,0,0},},10,"Ch�ng ��nh L�a G�t Ta H� Hay Qu�n Mang Theo B�nh Kem"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveBK",	{nEXP_Give_BK, TSK_Date_Give_BK} },
	},
}

tbConfig[19] = --S� D�ng T�i N�n Sinh Nh�t
{
	nId = 19,
	szMessageType = "ItemScript",
	szName = "S� D�ng T�i N�n Sinh Nh�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2858,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, kh�ng th� s� d�ng v�t ph�m",">="} },		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H�y �� Tr�ng 10 � R�i M�"} },
	},
	tbActition = 
	{
		{"ThisActivity:TuiNenSinhNhat", {nil}},
	},
}
tbConfig[20] = --S� D�ng H�p B�nh Sinh Nh�t ��c Bi�t
{
	nId = 20,
	szMessageType = "ItemScript",
	szName = "S� D�ng H�p B�nh Sinh Nh�t ��c Bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2868,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, kh�ng th� s� d�ng v�t ph�m",">="} },		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H�y �� Tr�ng 10 � R�i M�"} },
	},
	tbActition = 
	{
		{"ThisActivity:HopBanhSinhNhat", {nil}},
	},
}
tbConfig[21] = --Add NPC
{
	nId = 21,
	szMessageType = "ServerStart",
	szName = "Khi Kh�i ��ng Server S� T�i Npc",
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
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "N�n Sinh Nh�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�o",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"H�y �� Tr�ng 20 � R�i M�"} },
		{"AddOneMaterial",	{" 10 Xu  = 1 N�n Sinh Nh�t",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2857,1,0,0},},1,"[Event_Qu�c T� Ph� N�] [N�n Sinh Nh�t]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "T�ng B�nh Sinh Nh�t ��c Bi�t",	
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�nh Sinh Nh�t ��c Bi�t",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"B�nh Sinh Nh�t ��c Bi�t",{tbProp={6,1,2861,1,0,0},},50} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nLeftTime,tbProp={6,1,53011,1,0,0},},1,"[Event_Qu�c T� Ph� N�] [B�nh Sinh Nh�t ��c Bi�t]"} },
	},
}
tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "Mua L� V�t Qu�c Kh�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�o",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"H�y �� Tr�ng 20 � R�i M�"} },
		{"AddOneMaterial",	{" 10 Xu  = 1 L� V�t Qu�c Kh�nh",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220929,tbProp={6,1,5094,1,0,0},},1,"[Event_Qu�c T� Ph� N�] [L� V�t Qu�c Kh�nh]"} },
	},
}