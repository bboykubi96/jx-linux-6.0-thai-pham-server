Include("\\script\\activitysys\\config\\33\\variables.lua")

MAX_NopDayThung = 1000
MAX_PhaoHoaQuocKhanh = 1000
MAX_LaCoDoSaoVang = 1200

tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "·þÎñÆ÷Æô¶¯¼ÓÔØnpc",
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
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "ËÎ½ðµÃ·Ö´óÓÚ1000Ð¡ÓÚ3000",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{"751",1000,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},10,"Event_QuocKhanhVN","TongKim1000NhanDayThung"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TongKim1000", "10 D©y Thõng", 1}},
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "ËÎ½ðµÃ·Ö´óÓÚ3000",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},30,"Event_QuocKhanhVN","TongKim3000NhanDayThung"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TongKim3000", "30 D©y Thõng", 1}},
	},
}
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "´³¹Ø¹ýµÚ17¹Ø",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},10,"Event_QuocKhanhVN","VuotAi17NhanDayThung"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi17", "10 D©y Thõng", 1}},
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "´³¹Ø¹ýµÚ28¹Ø",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},15,"Event_QuocKhanhVN","VuotAi28NhanDayThung"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "15 D©y Thõng", 1}},
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "·çÁê¶ÉÉ±ËÀË®ÔôÍ·Áì",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},10,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietThuyTacDauLinh", "10 D©y Thõng", 1}},
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "·çÁê¶ÉÉ±ËÀË®Ôô´óÍ·Áì",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},20,"Event_QuocKhanhVN","TieuDietThuyTacDaiDauLinhNhanDayThung"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietThuyTacDaiDauLinh", "20 D©y Thõng", 1}},
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "YDBZguoguan",
	szName = "Ñ×µÛ´³¹ýµÚÊ®¹Ø",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},20,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAiViemDe10", "20 D©y Thõng", 1}},
	},
}
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô S¸t thñ ",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},5,"Event_QuocKhanhVN","TieuDietBossSatThu"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietBossSatThu", "2 D©y Thõng", 1}},
	},
}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "É±ËÀ»Æ½ðBOSS",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},30,"Event_QuocKhanhVN","TieuDietBossTheGioi"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietBossTheGioi", "30 D©y Thõng", 1}},
	},
}
tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "FinishSongJin",
	szName = "µÚ¶þ½×¶ÎËÎ½ð´óÓÚ1000Ð¡ÓÚ3000",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",1000,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},10,"Event_QuocKhanhVN","TongKim1000NhanDayThung"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,2981,1,0,0},nExpiredTime=20161001,},4,"Event_QuocKhanhVN","TongKim1000NhanNenTrang"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TongKim1000", "10 D©y Thõng vµ 4 NÕn Tr¾ng", 1}},
	},
}
tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "FinishSongJin",
	szName = "µÚ¶þ½×¶ÎËÎ½ðµÃ·Ö´óÓÚ3000",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},30,"Event_QuocKhanhVN","TongKim3000NhanDayThung"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,2981,1,0,0},nExpiredTime=20161001,},8,"Event_QuocKhanhVN","TongKim3000NhanNenTrang"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TongKim3000", "30 D©y Thõng vµ 8 NÕn Tr¾ng", 1}},
	},
}
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "Chuanguan",
	szName = "µÚ¶þ½×¶Î´³¹Ø¹ýµÚ17¹Ø",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},10,"Event_QuocKhanhVN","VuotAi17NhanDayThung"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,2981,1,0,0},nExpiredTime=20161001,},2,"Event_QuocKhanhVN","VuotAi17NhanNenTrang"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi17", "10 D©y Thõng vµ 2 NÕn Tr¾ng", 1}},
	},
}
tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "Chuanguan",
	szName = "µÚ¶þ½×¶Î´³¹Ø¹ýµÚ28¹Ø",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},15,"Event_QuocKhanhVN","VuotAi28NhanDayThung"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,2981,1,0,0},nExpiredTime=20161001,},4,"Event_QuocKhanhVN","VuotAi28NhanNenTrang"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "15 D©y Thõng vµ 4 NÕn Tr¾ng", 1}},
	},
}
tbConfig[15] = --Ò»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "NpcOnDeath",
	szName = "µÚ¶þ½×¶Î·çÁê¶ÉÉ±ËÀË®ÔôÍ·Áì",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},10,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,2981,1,0,0},nExpiredTime=20161001,},2,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanNenTrang"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietThuyTacDauLinh", "10 D©y Thõng vµ 2 NÕn Tr¾ng", 1}},
	},
}
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "NpcOnDeath",
	szName = "µÚ¶þ½×¶Î·çÁê¶ÉÉ±ËÀË®Ôô´óÍ·Áì",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},20,"Event_QuocKhanhVN","TieuDietThuyTacDaiDauLinhNhanDayThung"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,2981,1,0,0},nExpiredTime=20161001,},4,"Event_QuocKhanhVN","TieuDietThuyTacDaiDauLinhNhanNenTrang"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietThuyTacDaiDauLinh", "20 D©y Thõng vµ 4 NÕn Tr¾ng", 1}},
	},
}
tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "YDBZguoguan",
	szName = "µÚ¶þ½×¶ÎÑ×µÛ´³¹ýµÚÊ®¹Ø",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2976,1,0,0},nExpiredTime=20170928,},20,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,2981,1,0,0},nExpiredTime=20170928,},5,"Event_QuocKhanhVN","VuotAiViemDe10NhanNenTrang"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAiViemDe10", "20 D©y Thõng vµ 5 NÕn Tr¾ng", 1}},
	},
}
tbConfig[18] = --Ò»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "ClickNpc",
	szName = "¹úÆìÌ¨¶Ô»°",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {"T­îng §µi"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Nép D©y Thõng",19} },
		{"AddDialogOpt",	{"§æi Ph¸o Hoa Quèc Kh¸nh",20} },
		{"AddDialogOpt",	{"Hîp thµnh L¸ Cê §á Sao Vµng",25} },
	},
}
tbConfig[19] = --Ò»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "Nép D©y Thõng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nép D©y Thõng",1,0,0,0},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"AddOneMaterial",	{"D©y Thõng",{tbProp={6,1,2976,1,0,0},},1} },
		{"ThisActivity:CheckTask",	{TKSG_HandinStringCount,"1000-<ComposeCount>","Mçi nh©n vËt chØ nép tèi ®a "..MAX_NopDayThung.." vËt phÈm [D©y Thõng] trong suèt thêi gian diÔn ra ho¹t ®éng","<="} },
	},
	tbActition = 
	{
		{"ThisActivity:HandinString",	{nil} },
	},
}
tbConfig[20] = --Ò»¸öÏ¸½Ú
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "§æi Ph¸o Hoa Quèc Kh¸nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ph¸o Hoa Quèc Kh¸nh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"AddOneMaterial",	{"D©y Thõng",{tbProp={6,1,2976,1,0,0},},1} },
		{"AddOneMaterial",	{"Viªn Thuèc Næ",{tbProp={6,1,4283,1,0,0},},4} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{TSKG_ConvertFireworksCount,1} },
		{"ThisActivity:ConvertFireworks",	{nil} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2979,1,0,0},nExpiredTime=20170928,},1,"Event_QuocKhanhVN","GhepPhaoHoaQuocKhanh"} },
		--{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "GhepPhaoHoaQuocKhanh", "Ph¸o Hoa Quèc Kh¸nh", 1}},
	},
}
tbConfig[21] = --Ò»¸öÏ¸½Ú
{
	nId = 21,
	szMessageType = "ClickNpc",
	szName = "§èi tho¹i víi H»ng Nga",
	nStartDate = 201109120000,
	nEndDate  = 201810150000,
	tbMessageParam = {"H»ng Nga"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"§æi B¸nh Trung Thu Hµn NguyÖt",22} },
	},
}
tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "§æi B¸nh Trung Thu Hµn NguyÖt",
	nStartDate = 201109120000,
	nEndDate  = 201710150000,
	tbMessageParam = {"B¸nh Trung Thu Hµn NguyÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"AddOneMaterial",	{"NÕn Tr¾ng",{tbProp={6,1,2981,1,0,0},},1} },
		{"AddOneMaterial",	{"Lång §Ìn ¸nh Tr¨ng",{tbProp={6,1,2978,1,0,0},},1} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{TKSG_ConvertMooncakeCount,1} },
		{"ThisActivity:ConvertMooncake",	{nil} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2980,1,0,0},nExpiredTime=20181015,},1,"Event_QuocKhanhVN","DoiBanhTrungThu"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "DoiBanhTrungThu", "B¸nh Trung Thu Hµn NguyÖt", 1}},
	},
}
tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
	szMessageType = "ItemScript",
	szName = "Sö dông Ph¸o Hoa Quèc Kh¸nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2979,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"ThisActivity:CheckTask",	{TKSG_UseFireworksCount,MAX_PhaoHoaQuocKhanh,"Mçi nh©n vËt chØ sö dông tèi ®a "..MAX_PhaoHoaQuocKhanh.." vËt phÈm [Ph¸o Hoa Quèc Kh¸nh] trong suèt thêi gian diÔn ra ho¹t ®éng","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"Hµnh trang Ýt nhÊt ph¶i cßn 3 chç trèng"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{TKSG_UseFireworksCount,1} },
		{"ThisActivity:UseFirworks",	{nil} },
	},
}

tbConfig[24] = --Ò»¸öÏ¸½Ú
{
	nId = 24,
	szMessageType = "ItemScript",
	szName = "Sö dông B¸nh Trung Thu Hµn NguyÖt",
	nStartDate = 201109120000,
	nEndDate  = 201710150000,
	tbMessageParam = {{tbProp={6,1,2980,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"ThisActivity:CheckTaskDaily",	{TKSG_UseMooncakeCount,150,"Mçi ngµy mçi nh©n vËt chØ ®­îc sö dông tèi ®a 150 vËt phÈm [B¸nh Trung Thu Hµn NguyÖt]","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"Hµnh trang Ýt nhÊt ph¶i cßn 3 chç trèng"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTaskDaily",	{TKSG_UseMooncakeCount,1} },
		{"ThisActivity:UseMooncake",	{nil} },
	},
}

tbConfig[25] = --Ò»¸öÏ¸½Ú
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "§æi L¸ Cê §á Sao Vµng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi L¸ Cê §á Sao Vµng",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"AddOneMaterial",	{"M¶nh cê sè 1",{tbProp={6,1,4278,1,0,0},},1} },
		{"AddOneMaterial",	{"M¶nh cê sè 2",{tbProp={6,1,4279,1,0,0},},1} },
		{"AddOneMaterial",	{"M¶nh cê sè 3",{tbProp={6,1,4280,1,0,0},},1} },
		{"AddOneMaterial",	{"M¶nh cê sè 4",{tbProp={6,1,4281,1,0,0},},1} },
		{"AddOneMaterial",	{"D¶i Lôa Mµu §á",{tbProp={6,1,2977,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4282,1,0,0},nExpiredTime=20170928,},1,"Event_QuocKhanhVN","GhepLaCoDoSaoVang"} },
	},
}
tbConfig[26] = --Ò»¸öÏ¸½Ú
{
	nId = 26,
	szMessageType = "ItemScript",
	szName = "Sö dông L¸ Cê §á Sao Vµng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4282,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"ThisActivity:CheckTask",	{TSK_LaCoDoSaoVang,MAX_LaCoDoSaoVang,"Mçi nh©n vËt chØ sö dông tèi ®a "..MAX_LaCoDoSaoVang.." vËt phÈm [L¸ Cê §á Sao Vµng] trong suèt thêi gian diÔn ra ho¹t ®éng","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"Hµnh trang Ýt nhÊt ph¶i cßn 10 chç trèng"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{TSK_LaCoDoSaoVang,1} },
		{"ThisActivity:UseLaCoDoSaoVang",	{nil} },
	},
}
tbConfig[27] = --Danh quai train o map
{
	nId = 27,
	szMessageType = "NpcOnDeath",
	szName = "kill monster at field",
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
		{"ThisActivity:KillMonsterAwardManhCo",	{nil} },
	},
}

tbConfig[28] = --Hang rong click mua gio dung hoa
{
	nId = 28,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = 201708240000,
	nEndDate  = 201709280000,
	tbMessageParam = {"Chñ TiÖm"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Viªn Thuèc Næ",29} },
		{"AddDialogOpt",	{"Mua D¶i Lôa Mµu §á",30} },
	},
}
tbConfig[29] = --Hang rong click mua gio dung hoa
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "buy basket",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Viªn Thuèc Næ",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},20000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4283,1,0,0},nExpiredTime=20170928,},1,"Event_QuocKhanhVN","MuaVienThuocNo"} },
	},
}

tbConfig[30] =
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "buy item",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"N¬ cét bã hoa",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"TiÒn §ång",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2977,1,0,0},nExpiredTime=20170928,},1,"Event_QuocKhanhVN","MuaDaiLuaMauDo"} },
	},
}

tbConfig[31] = --Ò»¸öÏ¸½Ú
{
	nId = 31,
	szMessageType = "OnLogin",
	szName = "Ng­êi ch¬i trùc tuyÕn",
	nStartDate = 201708010000,
	nEndDate  = 201708240000,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:PlayerOnLoginRSEV",	{nil} },
	},
}
