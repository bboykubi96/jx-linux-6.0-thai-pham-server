Include("\\script\\activitysys\\config\\37\\variables.lua")
tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi khëi ®éng server sÏ t¶i ¤ng Giµ Noel",
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
	szMessageType = "NpcOnDeath",
	szName = "B¶n ®å ®¸no qu¸i nhËn ®­îc ¸o Gi¸ng Sinh",
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
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "§iÓm tÝch lòy Tèng Kim cao cÊp lín h¬n 1000 thÊp h¬n 3000 nhËn ®­îc Tói Gi¸ng Sinh",
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
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "§iÓm tÝch lòy Tèng Kim cao cÊp 3000 nhËn ®­îc Tói Gi¸ng Sinh",
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
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i thø 17 nhËn ®­îc Tói Gi¸ng Sinh",
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
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i thø 28 nhËn ®­îc Tói Gi¸ng Sinh",
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
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Thñy TÆc §Çu LÜnh Phong L¨ng §é nhËn ®­îc Tói Gi¸ng Sinh",
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
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Thñy TÆc §¹i §Çu LÜnh Phong L¨ng §é nhËn ®­îc Tói Gi¸ng Sinh",
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
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "YDBZguoguan",
	szName = "Viªm §Õ v­ît qua ¶i thø 10 nhËn ®­îc Tói Gi¸ng Sinh",
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
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt Boss Hoµng Kim",
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
tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt Boss S¸t Thñ",
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
tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "Chuanguan",
	szName = "V­ît ¶i tiªu diÖt Boss ",
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
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "YDBZ_KillMaxBoss",
	szName = "Viªm §Õ tiªu diÖt Boss cuèi ",
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
tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "NhÊn vµo §¹i Tïng Gi¸ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§¹i Tïng Gi¸ng Sinh"},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"Vµo lóc 09:00-10-12 ®Õn 23:59-31-12, c¸c ®¹i hiÖp cÊp 80 trë lªn cã thÓ tham gia ho¹t ®éng Gi¸ng Sinh"} },		
		--{"AddDialogOpt",	{"Online nhËn phÇn th­ëng",15} },
		{"AddDialogOpt",	{"Hîp thµnh vËt phÈm",17} },
	},
}
tbConfig[15] = --Ò»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i nhËn QuÇn Gi¸ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Vµo lóc 09:00-10-12 ®Õn 23:59-31-12, c¸c ®¹i hiÖp cÊp 80 trë lªn cã thÓ tham gia ho¹t ®éng Gi¸ng Sinh",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Online nhËn phÇn th­ëng",16} },
	},
}
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "nil",
	szName = "QuyÕt ®Þnh nhËn QuÇn Gi¸ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{80,"default",">="} },
		{"ThisActivity:CheckTaskDaily",	{TSK_XMAS_TROUSERS_DAILY,50,"H«m nay ng­¬i kh«ng thÓ nhËn n÷a, ngµy mai h·y quay l¹i.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveXmasTrousers",	{nil} },
	},
}
tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i hîp thµnh vËt phÈm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Vµo lóc 09:00-10-12 ®Õn 23:59-31-12, c¸c ®¹i hiÖp cÊp 80 trë lªn cã thÓ tham gia ho¹t ®éng Gi¸ng Sinh , ng­¬i cã muèn hîp thµnh kh«ng?",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp thµnh Hép Quµ Gi¸ng Sinh",18} },
		{"AddDialogOpt",	{"Hîp thµnh B¸nh Gi¸ng Sinh",22} },
	},
}
tbConfig[18] = --Ò»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Hép Quµ Gi¸ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hép quµ gi¸ng sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"¸o gi¸ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"QuÇn Gi¸ng Sinh",ITEM_XMAS_TROUSERS,2} },
		{"AddOneMaterial",	{"Gµ quay",ITEM_GaQuay,1} },
		{"AddOneMaterial",	{"Tói Gi¸ng Sinh",ITEM_XMAS_BAG,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3080,1,0,0},nExpiredTime=NgayHetHanEventGS,},1,EVENT_LOG_TITLE,"GhepHopQuaNoelThanhCong"} },
	},
}
tbConfig[19] = --Ò»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh ¤ng Giµ Noel (nhá)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¤ng Giµ Noel (nhá)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[20] = --Ò»¸öÏ¸½Ú
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh ¤ng Giµ Noel (trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¤ng Giµ Noel (trung)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[21] = --Ò»¸öÏ¸½Ú
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh ¤ng Giµ Noel (®¹i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¤ng Giµ Noel (®¹i)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		
	},
	tbActition = 
	{

	},
}
tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh B¸nh Gi¸ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh Gi¸ng Sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"¸o gi¸ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"QuÇn Gi¸ng Sinh",ITEM_XMAS_TROUSERS,2} },
		{"AddOneMaterial",	{"B¸nh bÝ ®á",{tbProp={6,1,30166,1,0,0},nExpiredTime=NgayHetHanEventGS,},2} },
		{"AddOneMaterial",	{"Tói Gi¸ng Sinh",ITEM_XMAS_BAG,2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3082,1,0,0},nExpiredTime=NgayHetHanEventGS,},1,EVENT_LOG_TITLE,"composeXmasCake"} },
	},
}
tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "NhÊn vµo ¤ng Giµ Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¤ng Giµ Noel"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"Vµo lóc 0:00 25-12 ®Õn 23:59 25-12, c¸c ®¹i hiÖp cÊp 80 trë lªn cã thÓ ®Õn gÆp ta ®Ó nhËn mãn quµ gi¸ng sinh lµ 500 triÖu ®iÓm kinh nghiÖm kh«ng céng dån, mçi nh©n vËt chØ cã thÓ nhËn mét lÇn duy nhÊt."} },		
		{"AddDialogOpt",	{"Mãn quµ ®ªm gi¸ng sinh",34} },
		{"AddDialogOpt",	{"Hîp thµnh «ng giµ Noel hång",38} },
		--{"AddDialogOpt",	{"Xem TOP 3 sö dông vËt phÈm Event",40} },
	},
}
tbConfig[24] = --Ò»¸öÏ¸½Ú
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "LÖnh Bµi triÖu håi Boss Tr­¬ng Tuyªn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"LÖnh bµi Boss - Tr­¬ng Tuyªn",1,1,1,1,0,50},
	tbCondition = 
	{

	},
	tbActition = 
	{
		
	},
}
tbConfig[25] = --Ò»¸öÏ¸½Ú
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "LÖnh Bµi triÖu håi Boss Kim ThÝ L­îng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"LÖnh bµi Boss - Kim ThÝ L­îng",1,1,1,1,0,50},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[26] = --Ò»¸öÏ¸½Ú
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "LÖnh Bµi triÖu håi Mé Dung Toµn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"LÖnh bµi Boss - Mé Dung Toµn",1,1,1,1,0,50},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		
	},
}
tbConfig[27] = --Ò»¸öÏ¸½Ú
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "Sö dông ¤ng Giµ Noel (nhá)",
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
tbConfig[28] = --Ò»¸öÏ¸½Ú
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "Sö dông ¤ng Giµ Noel (trung)",
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
tbConfig[29] = --Ò»¸öÏ¸½Ú
{
	nId = 29,
	szMessageType = "ItemScript",
	szName = "Sö dông ¤ng Giµ Noel (®¹i)",
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
tbConfig[30] = --Ò»¸öÏ¸½Ú
{
	nId = 30,
	szMessageType = "ItemScript",
	szName = "Sö dông hép quµ gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3080,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{80,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_GIFT_LIMIT,MAX_USED_XMAS_GIFT_LIMIT,"Ng­¬i ®· sö dông ®ñ Hép Quµ Gi¸ng Sinh, kh«ng thÓ giao thªm ®­îc n÷a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasGift",	{nil} },
	},
}
tbConfig[31] = --Ò»¸öÏ¸½Ú
{
	nId = 31,
	szMessageType = "ItemScript",
	szName = "Sö dông B¸nh Gi¸ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3082,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{80,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_CAKE_LIMIT,MAX_USED_XMAS_CAKE_LIMIT,"Ng­¬i ®· sö dông ®ñ B¸nh Gi¸ng Sinh råi, kh«ng thÓ giao thªm ®­îc n÷a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasCake",	{nil} },
	},
}
tbConfig[32] = --Ò»¸öÏ¸½Ú
{
	nId = 32,
	szMessageType = "OnLogin",
	szName = "Ng­êi ch¬i trùc tuyÕn",
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
	szName = "NhËn ®Òn bï gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTimeGetCompensation",	{nil} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 0, "Mçi nh©n vËt chØ ®­îc nhËn th­ëng 1 lÇn", "=="}},	
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
	szName = "§èi tho¹i nhËn phÇn th­ëng ®ªm gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Vµo lóc 0:00-25-12 ®Õn 23:59-25-12, c¸c ®¹i hiÖp cÊp 80 trë lªn cã thÓ ®Õn gÆp ta ®Ó nhËn mãn quµ gi¸ng sinh lµ 200 triÖu ®iÓm kinh nghiÖm kh«ng céng dån, mçi nh©n vËt chØ cã thÓ nhËn mét lÇn duy nhÊt.",0},
	tbCondition = 
	{		
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta muèn nhËn th­ëng",35} },
	},
}
tbConfig[35] = 
{
	nId = 35,
	szMessageType = "nil",
	szName = "nhËn phÇn th­ëng ®ªm gi¸ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_PHAN_THUONG_DEM_GS,0,"Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn n÷a","=="} },
	},
	tbActition = 
	{
		{"ThisActivity:PhanThuongDemGiangSinh",	{nil} },
	},
}
tbConfig[36] =--Click hµng rong mua gµ quay quay
{
	nId = 36,
	szMessageType = "ClickNpc",
	szName = "NhÊn vµo Chñ TiÖm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chñ TiÖm"},
	tbCondition = 
	{
	},
	tbActition = 
	{		
		{"AddDialogOpt",	{"Mua Gµ Quay",37} },
		{"AddDialogOpt",	{"Mua Nãn gi¸ng sinh",41} },
	},
}
tbConfig[37] =
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Mua Gµ Quay",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gµ quay",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},150000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Gµ quay",tbProp={6,1,30167,1,0,0},nExpiredTime=NgayHetHanEventGS,},1,EVENT_LOG_TITLE,"MuaGaQuay"} },
	},
}
tbConfig[38] =
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh «ng giµ Noel hång",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¤ng giµ Noel hång",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"¸o Gi¸ng Sinh",ITEM_XMAS_CLOTHING,1} },
		{"AddOneMaterial",	{"Tói Gi¸ng Sinh",ITEM_XMAS_BAG,1} },
		{"AddOneMaterial",	{"Nãn gi¸ng sinh",ITEM_XMAS_HAT,1} },
		{"AddOneMaterial",	{"QuÇn gi¸ng sinh",ITEM_XMAS_TROUSERS,1} },
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
	szName = "Sö dông ¤ng Giµ Noel hång",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30168,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{80,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{3, 3, 1,"default"} },
		{"ThisActivity:CheckTask",	{TSK_ONG_GIA_NOEL_HONG,MAX_USED_ONG_GIA_NOEL_HONG_LIMIT,"Ng­¬i ®· sö dông ®ñ råi, kh«ng thÓ thªm ®­îc n÷a!","<"} },
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
	szName = "Xem TOP 3 sö dông vËt phÈm event",
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

ITEM_COIN		= {szName="TiÒn §ång",tbProp={4,417,1,1,0,0},}
tbConfig[41] = 
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "Mua Mò Gi¸ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua Mua Mò Gi¸ng Sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
		{"AddOneMaterial",	{"TiÒn §ång",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3072,1,0,0},nExpiredTime=NgayHetHanEventGS,},1,"MuaMuGiangSinh", "MuaMuGiangSinh"} },
	},
}