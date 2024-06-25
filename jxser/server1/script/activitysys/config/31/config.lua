Include("\\script\\activitysys\\config\\31\\variables.lua")
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},100,"[Event_Sinh NhËt] [tTongKim1000]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"[Event_Sinh NhËt] [tTongKim3000]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},100,"[Event_Sinh NhËt] [tVuotAi17]"} },
	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V­ît Qua ¶i 28 Giai §o¹n 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"[Event_Sinh NhËt] [tVuotAi28]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},100,"[Event_Sinh NhËt] [tTieuDietThuyTacDauLinh]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"Event_Sinh NhËt\tTieuDietThuyTacDaiDauLinh"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"[Event_Sinh NhËt] [tVuotAiViemDe10]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"[Event_Sinh NhËt] [tTinSu10]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},100,"[Event_Sinh NhËt] [tVLMC]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},200,"[Event_Sinh NhËt] [tTieuDietBossTheGioi]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2864,1,0,0},},100,"[Event_Sinh NhËt] [tTieuDietBossS¸tThñ]"} },
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
		{"NpcFunLib:CheckInMap",	{"225,226,227,321,322,75,340"} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{nExpiredTime=20220829,tbProp={6,1,2856,1,0,0},},1,"40"} },
	},
}
tbConfig[13] = --§èi tho¹i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Chñ TiÖm T¹p Hãa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chñ TiÖm T¹p Hãa"},
	tbCondition = 
	{
	},
	tbActition = 
	{
             {"AddDialogOpt",	{"Mua LÔ VËt Quèc Kh¸nh",24} },
	},
}
tbConfig[14] = --GhÐp Nguyªn LiÖu
{
	nId = 14,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i Ch­ëng §¨ng Cung N÷",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xin Chµo ë §©y Cã RÊt NhiÒu Lo¹i B¸nh §¹i HiÖp Muèn Lµm Lo¹i Nµo"},

	tbCondition = 
	{
	},
	tbActition = 
	{
                {"AddDialogOpt",	{"Mua B¸nh Sinh NhËt",24} },
	        {"AddDialogOpt",	{"Mua NÕn Sinh NhËt",22} },
		{"AddDialogOpt",	{"Hîp Thµnh B¸nh Sinh NhËt",15} },
		{"AddDialogOpt",	{"Hîp Thµnh B¸nh Sinh NhËt §Æc BiÖt",16} },
	},
}
tbConfig[15] = --
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Hîp Thµnh B¸nh Sinh NhËt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh Sinh NhËt",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Bét M×",{tbProp={6,1,2853,1,0,0},},2} },
		{"AddOneMaterial",	{"§­êng Tinh",{tbProp={6,1,2852,1,0,0},},2} },
		{"AddOneMaterial",	{"S÷a T­¬i",{tbProp={6,1,2851,1,0,0},},1} },
		{"AddOneMaterial",	{"B¬",{tbProp={6,1,2855,1,0,0},},1} },
		{"AddOneMaterial",	{"Kem",{tbProp={6,1,2856,1,0,0},},1} },
		{"AddOneMaterial",	{"200000 l­îng",{nJxb=200000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2860,1,0,0},},1,"[Event_Sinh NhËt] [B¸nh Sinh NhËt]"} },
	},
}
tbConfig[16] = --
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "Hîp Thµnh B¸nh Sinh NhËt §Æc BiÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh Sinh NhËt §Æc BiÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"B¸nh Sinh NhËt",{tbProp={6,1,2860,1,0,0},},2} },
		{"AddOneMaterial",	{"NÕn Sinh NhËt",{tbProp={6,1,2857,1,0,0},},1} },
		{"AddOneMaterial",	{"200000 l­îng",{nJxb=200000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2861,1,0,0},},1,"[Event_Sinh NhËt] [B¸nh Sinh NhËt §Æc BiÖt]"} },
	},
}
tbConfig[17] = --§èi tho¹i Víi Ch­ëng §¨ng Cung N÷
{
	nId = 17,
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
		--{"AddDialogOpt",	{"Ta Muèn TÆng B¸nh Sinh NhËt Cho Nµng LÊy Exp",18} },
               -- {"AddDialogOpt",	{"Ta Muèn TÆng B¸nh Sinh NhËt DB Cho Nµng LÊy §¸ N©ng CÊp Xuyªn Y",23} },
	},
}
tbConfig[18] =
{
	nId = 18,
	szMessageType = "nil",
	szName = "TÆng B¸nh Kem",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,2860,1,0,0},},10,"Chµng §Þnh Lõa G¹t Ta H¶ Hay Quªn Mang Theo B¸nh Kem"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveBK",	{nEXP_Give_BK, TSK_Date_Give_BK} },
	},
}

tbConfig[19] = --Sö Dông Tói NÕn Sinh NhËt
{
	nId = 19,
	szMessageType = "ItemScript",
	szName = "Sö Dông Tói NÕn Sinh NhËt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2858,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, kh«ng thÓ sö dông vËt phÈm",">="} },		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H·y §Ó Trèng 10 ¤ Råi Më"} },
	},
	tbActition = 
	{
		{"ThisActivity:TuiNenSinhNhat", {nil}},
	},
}
tbConfig[20] = --Sö Dông Hép B¸nh Sinh NhËt §Æc BiÖt
{
	nId = 20,
	szMessageType = "ItemScript",
	szName = "Sö Dông Hép B¸nh Sinh NhËt §Æc BiÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2868,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, kh«ng thÓ sö dông vËt phÈm",">="} },		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H·y §Ó Trèng 10 ¤ Råi Më"} },
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
	szName = "Khi Khëi §éng Server SÏ T¶i Npc",
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
	szName = "NÕn Sinh NhËt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¸o",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"H·y §Ó Trèng 20 ¤ Råi Më"} },
		{"AddOneMaterial",	{" 10 Xu  = 1 NÕn Sinh NhËt",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220829,tbProp={6,1,2857,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [NÕn Sinh NhËt]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "TÆng B¸nh Sinh NhËt §Æc BiÖt",	
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh Sinh NhËt §Æc BiÖt",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"B¸nh Sinh NhËt §Æc BiÖt",{tbProp={6,1,2861,1,0,0},},50} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nLeftTime,tbProp={6,1,53011,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [B¸nh Sinh NhËt §Æc BiÖt]"} },
	},
}
tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "Mua LÔ VËt Quèc Kh¸nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¸o",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"H·y §Ó Trèng 20 ¤ Råi Më"} },
		{"AddOneMaterial",	{" 10 Xu  = 1 LÔ VËt Quèc Kh¸nh",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220929,tbProp={6,1,5094,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [LÔ VËt Quèc Kh¸nh]"} },
	},
}