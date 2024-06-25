Include("\\script\\activitysys\\config\\53\\variables.lua")
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},25,"[Event_Hoa Ph��ng] [tTongKim1000]"} },
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
--		{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},50,"[Event_Hoa Ph��ng] [tTongKim3000]"} },
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},10,"[Event_Hoa Ph��ng] [tVuotAi17]"} },
	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V��t Qua �i 28 Giai �o�n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},20,"[Event_Hoa Ph��ng] [tVuotAi28]"} },
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},10,"[Event_Hoa Ph��ng] [tTieuDietThuyTacDauLinh]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},20,"Event_Hoa Ph��ng\tTieuDietThuyTacDaiDauLinh"} },
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
--		{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},50,"[Event_Hoa Ph��ng] [tVuotAiViemDe10]"} },
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},20,"[Event_Hoa Ph��ng] [tTinSu10]"} },
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},10,"[Event_Hoa Ph��ng] [tVLMC]"} },
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},100,"[Event_Hoa Ph��ng] [tTieuDietBossTheGioi]"} },
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},5,"[Event_Hoa Ph��ng] [tTieuDietBossS�tTh�]"} },
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
		{"NpcFunLib:CheckInMap",	{"53"} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,30324,1,0,0},},1,"18"} },--H�p qu� ho�t ��ng 1-6
	},
}
tbConfig[13] = --��i tho�i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "B�m v�o T�ng Qu�n S� Ki�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�nh Sinh Nh�t"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p Th�nh B�nh Sinh Nh�t ��c Bi�t",14} },
	},
}
tbConfig[14] = --
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "H�p Th�nh B�nh Sinh Nh�t ��c Bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B�nh Sinh Nh�t ��c Bi�t",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"B�nh Kem",{tbProp={6,1,2859,1,0,0},},3} },
		{"AddOneMaterial",	{"B�nh Sinh Nh�t",{tbProp={6,1,2860,1,0,0},},2} },
		{"AddOneMaterial",	{"Kem",{tbProp={6,1,2856,1,0,0},},1} },
		{"AddOneMaterial",	{"100000 l��ng",{nJxb=100000,},1} },
	},
	tbActition = 
	{
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2861,1,0,0},},1,"[Event_Hoa Ph��ng] [B�nh Sinh Nh�t ��c Bi�t]"} },
	},
}
tbConfig[15] = --��i tho�i V�i Ch��ng ��ng Cung N�
{
	nId = 15,
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
		--{"AddDialogOpt",	{"Ta Mu�n T�ng B�nh Sinh Nh�t ��c Bi�t Cho N�ng",16} },	
	},
}
tbConfig[16] =
{
	nId = 16,
	szMessageType = "nil",
	szName = "T�ng Hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	--	{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,2861,1,0,0},},1,"H�nh Trang Kh�ng C� B�nh Sinh Nh�t ��c Bi�t"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveHPT",	{nEXP_Give_HPT, TSK_Date_Give_HPT} },
	},
}
tbConfig[17] = --Add NPC
{
	nId = 17,
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
		--{"ThisActivity:AddInitNpc",	{nil} },
	},
}
