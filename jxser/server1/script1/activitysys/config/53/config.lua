Include("\\script\\activitysys\\config\\53\\variables.lua")
tbConfig = {}
tbConfig[1] = --Tèng Kim 1000 §iÓm
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "Tèng Kim Cao CÊp 1000 §iÓm",
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},25,"[Event_Hoa Ph­îng] [tTongKim1000]"} },
	},
}
tbConfig[2] = --Tèng Kim 3000 §iÓm
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Tèng Kim Cao CÊp 3000 §iÓm",
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
--		{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},50,"[Event_Hoa Ph­îng] [tTongKim3000]"} },
	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V­ît Qua ¶i 17 Giai §o¹n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},10,"[Event_Hoa Ph­îng] [tVuotAi17]"} },
	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V­ît Qua ¶i 28 Giai §o¹n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},20,"[Event_Hoa Ph­îng] [tVuotAi28]"} },
	},
}
tbConfig[5] = --Thñy TÆc §Çu LÜnh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt ChÕt 1 Thñy TÆc §Çu LÜnh",
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},10,"[Event_Hoa Ph­îng] [tTieuDietThuyTacDauLinh]"} },
	},
}
tbConfig[6] = --Thñy TÆc §¹i §Çu LÜnh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu DiÖt Thñy TÆc §¹i §Çu LÜnh",
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},20,"Event_Hoa Ph­îng\tTieuDietThuyTacDaiDauLinh"} },
	},
}
tbConfig[7] = --Viªm §Õ
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V­ît Qua ¶i Viªm §Õ Thø 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},50,"[Event_Hoa Ph­îng] [tVuotAiViemDe10]"} },
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},20,"[Event_Hoa Ph­îng] [tTinSu10]"} },
	},
}
tbConfig[9] = --V­LMC
{
	nId = 9,
	szMessageType = "FinishVLMC_VNG",
	szName = "Hoµn Thµnh VLMC",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},10,"[Event_Hoa Ph­îng] [tVLMC]"} },
	},
}
tbConfig[10] = --Boss ThÕ Giíi
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu DiÖt Boss ThÕ Giíi",
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},100,"[Event_Hoa Ph­îng] [tTieuDietBossTheGioi]"} },
	},
}
tbConfig[11] = --Boss S¸t Thñ
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm Vô S¸t Thñ CÊp 90",
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
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2860,1,0,0},},5,"[Event_Hoa Ph­îng] [tTieuDietBossS¸tThñ]"} },
	},
}
tbConfig[12] = --B¶n §å §¸nh Qu¸i Rí Nguyªn LiÖu
{
	nId = 12,
	szMessageType = "NpcOnDeath",
	szName = "B¶n §å §¸nh Qu¸i Rít Ra Nguyªn LiÖu",
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
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,30324,1,0,0},},1,"18"} },--Hép quµ ho¹t ®éng 1-6
	},
}
tbConfig[13] = --§èi tho¹i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Tæng Qu¶n Sù KiÖn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh Sinh NhËt"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp Thµnh B¸nh Sinh NhËt §Æc BiÖt",14} },
	},
}
tbConfig[14] = --
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Hîp Thµnh B¸nh Sinh NhËt §Æc BiÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B¸nh Sinh NhËt §Æc BiÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"B¸nh Kem",{tbProp={6,1,2859,1,0,0},},3} },
		{"AddOneMaterial",	{"B¸nh Sinh NhËt",{tbProp={6,1,2860,1,0,0},},2} },
		{"AddOneMaterial",	{"Kem",{tbProp={6,1,2856,1,0,0},},1} },
		{"AddOneMaterial",	{"100000 l­îng",{nJxb=100000,},1} },
	},
	tbActition = 
	{
	--	{"PlayerFunLib:GetItem",	{{nExpiredTime=20180830,tbProp={6,1,2861,1,0,0},},1,"[Event_Hoa Ph­îng] [B¸nh Sinh NhËt §Æc BiÖt]"} },
	},
}
tbConfig[15] = --§èi tho¹i Víi Ch­ëng §¨ng Cung N÷
{
	nId = 15,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Ch­ëng §¨ng Cung N÷",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch­ëng §¨ng Cung N÷"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Ta Muèn TÆng B¸nh Sinh NhËt §Æc BiÖt Cho Nµng",16} },	
	},
}
tbConfig[16] =
{
	nId = 16,
	szMessageType = "nil",
	szName = "TÆng Hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	--	{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,2861,1,0,0},},1,"Hµnh Trang Kh«ng Cã B¸nh Sinh NhËt §Æc BiÖt"} },
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
	szName = "Khi Khëi §éng Server SÏ T¶i Npc",
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
