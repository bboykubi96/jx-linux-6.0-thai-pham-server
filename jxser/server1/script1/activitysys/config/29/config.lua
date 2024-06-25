Include("\\script\\activitysys\\config\\29\\variables.lua")
tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "Click vµo TiÓu Ph­¬ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"TiÓu Ph­¬ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"TÆng Hép Quµ",2} },
		{"SetDialogTitle",	{"<npc>03/2017 ~ 04/2017, Nh©n sü cÊp 80 trë lªn cã thÓ tÆng Hép quµ cho TiÓu Ph­¬ng."} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "CreateCompose",
	szName = "TÆng Hép Quµ 8 Th¸ng 3",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>TÆng Hép Quµ 8 Th¸ng 3",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp ch­a ®ñ 50",">="} },
		{"ThisActivity:CheckTaskDaily",	{TSK_IDX_DAILY_GIVE_LANHUA,MAX_GIVE_LANHUA_PERDAY,"H«m nay ®· tÆng ®ñ Hép Quµ råi ngµy mai h·y quay l¹i nhÐ","<"} },
		{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,4318,1,0,0},},1,"Kh«ng ®ñ Hép Quµ 8 Th¸ng 3"} },
		{"AddOneMaterial",	{"Hép Quµ 8 Th¸ng 3",{tbProp={6,1,4318,1,0,0},},1} },
		{"ThisActivity:Vng_LanHua_Limit",	{nil} },
	},
	tbActition = 
	{
		{"ThisActivity:Vng_OnGiveLanHua",	{nil} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "ServerStart",
	szName = "Sever më sÏ ®¨ng t¶i NPC",
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
	szName = "§¸nh qu¸i rít nguyen lieu",
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
	szName = "§¸nh qu¸i rít nguyen lieu",
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
	szName = "Ch­ëng §¨ng Cung N÷ b¸n ChiÕc N¬",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch­ëng §¨ng Cung N÷"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua ChiÕc N¬",7} },
	},
}

tbConfig[7] =
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Mua ChiÕc N¬",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ChiÕc N¬",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=2000,},1} },
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
	szName = "Thî GhÐp Hoa hîp thµnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thî GhÐp Hoa"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp thµnh Bã Hoa",9} },
		{"AddDialogOpt",	{"Hîp thµnh Hép Quµ 8 th¸ng 3",10} },
	},
}

tbConfig[9] =
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Bã Hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Bã Hoa",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hoa Cóc Vµng",{tbProp={6,1,4311,1,0,0},},2} },
		{"AddOneMaterial",	{"Hoa B¸ch Hîp",{tbProp={6,1,4313,1,0,0},},2} },
		{"AddOneMaterial",	{"Hoa Hång",{tbProp={6,1,4314,1,0,0},},1} },
		{"AddOneMaterial",	{"D©y Cét Hoa",{tbProp={6,1,4315,1,0,0},},1} },
		--{"AddOneMaterial",	{"ChiÕc N¬",{tbProp={6,1,4316,1,0,0},},1} },
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
	szName = "Hîp thµnh Hép Quµ 8 Th¸ng 3",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Hîp thµnh Hép Quµ 8 Th¸ng 3",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hoa Cóc Vµng",{tbProp={6,1,4311,1,0,0},},30} },
		{"AddOneMaterial",	{"Hoa Lan",{tbProp={6,1,4312,1,0,0},},1} },
		{"AddOneMaterial",	{"ChiÕc N¬",{tbProp={6,1,4316,1,0,0},},10} },
		{"AddOneMaterial",	{"Hoa Hång",{tbProp={6,1,4314,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4318,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},1,"[HD8Thang3] [HopThanhHopQua8Thang3]"} },
	},
}

tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "Sö dông Bã Hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4317,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{12,"default"} },
		{"ThisActivity:CheckTask",	{TSK_SUDUNG_BOHOA,MAX_SUDUNG_BOHOA,"Ng­¬i ®· sö dông ®ñ Bã Hoa, kh«ng thÓ sö dông thªm n÷a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:SuDungBoHoa8Thang3",	{nil} },
		{"ThisActivity:AddTask",	{TSK_SUDUNG_BOHOA,1} },
	},
}

-- Thu thap nguyenlieu tham gia hoat dong

tbConfig[12] = --Tèng kim 1000 ®iÓm
{
	nId = 12,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 1000 ®iÓm",
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
tbConfig[13] = --Tèng kim 3000 ®iÓm
{
	nId = 13,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 3000 ®iÓm",
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
	szName = "V­ît qua ¶i 17",
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
	szName = "V­ît qua ¶i 28",
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
tbConfig[16] = --Thñy tÆc ®Çu lÜnh
{
	nId = 16,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt chÕt 1 thñy tÆc ®Çu lÜnh",
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
tbConfig[17] = --thuû tÆc ®¹i ®Çu lÜnh
{
	nId = 17,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt thuû tÆc ®¹i ®Çu lÜnh",
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
tbConfig[18] = --Viªm ®Õ
{
	nId = 18,
	szMessageType = "YDBZguoguan",
	szName = "V­ît qua ¶i Viªm §Õ thø 10",
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

tbConfig[19] = --Boss thÕ giíi
{
	nId = 19,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt boss thÕ giíi",
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

tbConfig[20] = --boss s¸t thñ
{
	nId = 20,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô s¸t thñ cÊp 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4314,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},5,"EventTetNguyenDan\tTieuDietBossS¸tThñ"} },
	},
}

tbConfig[21] =
{
	nId = 21,
	szMessageType = "ClickNpc",
	szName = "Chñ TiÖm b¸n d©y cét hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chñ TiÖm"},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua D©y cét hoa",22} },
	},
}

ITEM_COIN		= {szName="TiÒn §ång",tbProp={4,417,1,1,0,0},}

tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Mua D©y cét hoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua D©y cét hoa",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
		{"AddOneMaterial",	{"TiÒn §ång",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4315,1,0,0},nExpiredTime=NGAYHETHAN8THANG3,},1,"HoatDong8Thang3MuaDayCotHoa"} },
	},
}