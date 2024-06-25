tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ItemScript",
	szName = "Sö dông thÇn bÝ b¶o r­¬ng cña d· tÈu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2374,1,-1,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,2348,1,-1,0},},6,"CÇn %d HuyÒn Thiªn Chïy, c¸c h¹ ®em kh«ng ®ñ sè l­îng!"} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{71,1,"B¶o r­¬ng thÇn bÝ cña D· TÈu"} },
		{"PlayerFunLib:ConsumeEquiproomItem",	{{tbProp={6,1,2348,1,-1,0},},6} },
		{"ThisActivity:Jiluxiaohao_yesou",	{nil} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "ItemScript",
	szName = "Sö dông lÔ bao c«ng thµnh chiÕn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2377,1,-1,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{72,1,"C«ng Thµnh ChiÕn LÔ Bao"} },
		{"ThisActivity:Jiluxiaohao_chengzhan",	{nil} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "ItemScript",
	szName = "Sö dông chÝ t«n mËt b¶o",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2375,-1,-1,-1},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,2348,1,-1,0},},12,"CÇn %d HuyÒn Thiªn Chïy, c¸c h¹ ®em kh«ng ®ñ sè l­îng!"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{73,1,"ChÝ T«n BÝ B¶o"} },
		{"PlayerFunLib:ConsumeEquiproomItem",	{{tbProp={6,1,2348,1,-1,0},},12} },
		{"ThisActivity:Jiluxiaohao_zhizun",	{nil} },
	},
}
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "ItemScript",
	szName = "Ê¹ÓÃË®ÔôµÄ²Æ±¦(¾É)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2376,1,-1,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{74,1,"Tµi B¶o Thñy TÆc"} },		
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "ItemScript",
	szName = "Sö dông phong háa cÈm nang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2373,1,-1,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{75,1,"Phong Háa CÈm Nang"} },
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "§éc c« thiªn phong chÕt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckName",	{"§éc C« Thiªn Phong"} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2375,1,0,0},},20,"100"} },--chi ton bi bao
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "BOSS chÕt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2375,1,0,0},},10,"100"} },--chi ton bi bao
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "nil",
	szName = "Ë®ÔôÍ·ÁìËÀÍö(·Ï)",
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
tbConfig[9] = --Tieu diet Dai thuy tac dau linh
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "Ë®Ôô´óÍ·ÁìËÀÍö´¬1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{337} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2743,1,0,0},},3,"100"} }, --bao ruong thuy tac
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2125,1,0,0},},3,"100"} }, --2 ngu hanh ky thach
		--§iÒu chØnh phÇn th­ëng r¬i them ra tõ boss thuû tÆc ®¹i ®Çu lÜnh - Modified By DinhHQ - 20120523
		{"ThisActivity:VnFFBigBossDrop",	{nil}},
		{"PlayerFunLib:AddExp",	{1000000,0,"Event_G7TangThemPLD","Hoatdongthuongxuyen\ttrieutieudietdaithuytacdaulinh"} },
	},
}
tbConfig[10] =  --Tieu diet Dai thuy tac dau linh
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ë®Ôô´óÍ·ÁìËÀÍö´¬23",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"338,339"} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2743,1,0,0},},3,"100"} }, --bao ruong thuy tac
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2125,1,0,0},},3,"100"} }, --1 ngu hanh ky thach
		--§iÒu chØnh phÇn th­ëng r¬i ra tõ boss thuû tÆc ®¹i ®Çu lÜnh - Modified By DinhHQ - 20120523
		--{"ThisActivity:VnFFBigBossDrop",	{nil},},
		{"PlayerFunLib:AddExp",	{1000000,0,"Event_G7TangThemPLD","Hoatdongthuongxuyen\ttrieutieudietdaithuytacdaulinh"} },
	},
}
tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "nil",
	szName = "null",
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
tbConfig[12] = --Su dung bao ruong Thuy Tac
{
	nId = 12,
	szMessageType = "ItemScript",
	szName = "Ê¹ÓÃË®Ôô±¦Ïä",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2743,1,0,0},}},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,2744,1,0,0},},1,"CÇn mét c¸i %d Ch×a Khãa Nh­ ý"} },
		{"ThisActivity:VnUsePirateBox",	{nil}}
	},
	tbActition = 
	{
		--{"PlayerFunLib:ConsumeEquiproomItem",	{{tbProp={6,1,2744,1,0,0},},1} },
		--	{"ThisActivity:GiveAward",	{"shuizeibaoxiang",1,"use_shuizeibaoxiang"} },
		--{"ThisActivity:Jiluxiaohao_shuizexiangzi",	{nil} },		
	},
}

tbConfig[13] =
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "§èi tho¹i víi NguyÖt Ca Vâ VÖ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"NguyÖt Ca Vâ VÖ"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"NhËn nguyÖt ca lÖnh",14} },
		--{"AddDialogOpt",	{"§æi yÕu quyÕt kü n¨ng 150",15} },
	},
}

tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "NhËn nguyÖt ca lÖnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>NhËn nguyÖt ca lÖnh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},500000000} },
		{"AddOneMaterial",	{"Vâ L©m MËt TÞch",{tbProp={6,1,26,1,0,0},},20} },
		{"AddOneMaterial",	{"TÈy Tñy Kinh",{tbProp={6,1,22,1,0,0},},20} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2908,1,0,0},},1,"NhanNguyetCaLenh", "NhanNguyetCaLenh"} },
	},
}

tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "§æi yÕu quyÕt kü n¨ng 150",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi yÕu quyÕt kü n¨ng 150",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"ThÊt tinh th¹ch",{tbProp={6,1,4334,1,0,0},},100} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},600} },
		{"AddOneMaterial",	{"§¹i thµnh bÝ kÝp 90",{tbProp={6,1,2424,1,0,0},},1} },
		{"AddOneMaterial",	{"§¹i thµnh bÝ kÝp 120",{tbProp={6,1,2425,1,0,0},},1} },
		--{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},10000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30165,1,0,0}},1,"DoiYeuQuyetKyNang150", "DoiYeuQuyetKyNang150"} },
	},
}

tbConfig[16] =
{
	nId = 16,
	szMessageType = "ClickNpc",
	szName = "§èi tho¹i víi NguyÖt Ca §¶o Chñ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"NguyÖt Ca §¶o Chñ"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Hoµn thµnh nhiÖm vô kü n¨ng 150",17} },
	},
}

tbConfig[17] = 
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Hoµn thµnh nhiÖm vô kü n¨ng 150",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Hoµn thµnh nhiÖm vô kü n¨ng 150",1,1,1,0.02},
	tbCondition = 
	{
		--{"ThisActivity:CheckTask",	{TSK_DoiBiKip150,1,"Mçi nh©n vËt chØ ®­îc ®æi 1 lÇn","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"Yªu cÇu ®¼ng cÊp 150 trë lªn",">="} },
		{"PlayerFunLib:CheckTransLifeCount",	{2,"Yªu cÇu trïng sinh 2 trë lªn",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"NguyÖt Ca LÖnh",{tbProp={6,1,2908,1,0,0},},1} },
		{"AddOneMaterial",	{"YÕu quyÕt kü n¨ng 150",{tbProp={6,1,30165,1,0,0},},1} },
	},
	tbActition = 
	{
		--{"ThisActivity:AddTask",	{TSK_DoiBiKip150,1} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4286,1,0,0}},1,"HoanThanhNhiemVu150", "HoanThanhNhiemVu150"} },
	},
}

tbConfig[18] =
{
	nId = 18,
	szMessageType = "ClickNpc",
	szName = "§èi tho¹i víi BËt M· ¤n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"BËt M· ¤n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"§æi ngùa XÝch Thè lÊy ChiÕu D¹",19} },
		--{"AddDialogOpt",	{"§æi ngùa ¤ V©n lÊy ChiÕu D¹",20} },
		--{"AddDialogOpt",	{"§æi ngùa §Ých L« lÊy ChiÕu D¹",21} },
		--{"AddDialogOpt",	{"§æi ngùa TuyÖt ¶nh lÊy ChiÕu D¹",22} },
		{"AddDialogOpt",	{"§æi 200 ngò hµnh kú th¹ch lÊy Phi V©n",23} },
		{"AddDialogOpt",	{"§æi 500 ngò hµnh kú th¹ch lÊy B«n Tiªu",24} },
		--{"AddDialogOpt",	{"§æi ngùa B«n Tiªu lÊy Phiªn Vò",25} },
	},
}

tbConfig[19] = 
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "§æi ngùa XÝch Thè lÊy ChiÕu D¹",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi ngùa XÝch Thè lÊy ChiÕu D¹",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"XÝch Thè",{tbProp={0,10,5,2,0,0},},1} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},5000000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,5,5,0,0}},1,"DoiXichThoLayChieuDa", "DoiXichThoLayChieuDa"} },
	},
}

tbConfig[20] = 
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "§æi ngùa ¤ V©n lÊy ChiÕu D¹",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi ngùa ¤ V©n lÊy ChiÕu D¹",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"¤ V©n",{tbProp={0,10,5,1,0,0},},1} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},5000000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,5,5,0,0}},1,"DoiXichThoLayChieuDa", "DoiXichThoLayChieuDa"} },
	},
}

tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "§æi ngùa §Ých L« lÊy ChiÕu D¹",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi ngùa §Ých L« lÊy ChiÕu D¹",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"§Ých L«",{tbProp={0,10,5,4,0,0},},1} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},5000000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,5,5,0,0}},1,"DoiXichThoLayChieuDa", "DoiXichThoLayChieuDa"} },
	},
}

tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "§æi ngùa TuyÖt ¶nh lÊy ChiÕu D¹",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi ngùa §Ých L« lÊy ChiÕu D¹",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"TuyÖt ¶nh",{tbProp={0,10,5,3,0,0},},1} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},5000000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,5,5,0,0}},1,"DoiXichThoLayChieuDa", "DoiXichThoLayChieuDa"} },
	},
}

tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "§æi 200 ngò hµnh kú th¹ch lÊy Phi V©n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi 200 ngò hµnh kú th¹ch lÊy Phi V©n",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		--{"AddOneMaterial",	{"ChiÕu D¹ 1 con",{tbProp={0,10,5,5,0,0},},1} },
		--{"AddOneMaterial",	{"Tinh hång b¶o th¹ch",{tbProp={4,353,1,1,0,0},},3} },
		--{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},5} },
		--{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},5} },
		--{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},5} },
		--{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},70000000} },
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch 200 c¸i",{tbProp={6,1,2125,1,0,0},},200} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,8,1,5,0}},1,"DoiChieuDaLayPhiVan", "DoiChieuDaLayPhiVan"} },
	},
}

tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "§æi ngùa B«n Tiªu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi 500 NHKT §æi ngùa B«n Tiªu",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		--{"AddOneMaterial",	{"Phi V©n",{tbProp={0,10,8,1,5,0},},3} },
		--{"AddOneMaterial",	{"Tinh hång b¶o th¹ch",{tbProp={4,353,1,1,0,0},},5} },
		--{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},3} },
		--{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},3} },
		--{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},3} },
		--{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},700000000} },
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch 500 c¸i",{tbProp={6,1,2125,1,0,0},},500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,6,1,5,0}},1,"DoiLayBonTieu", "DoiLayBonTieu"} },
	},
}

tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "§æi ngùa B«n Tiªu lÊy Phiªn Vò",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi ngùa B«n Tiªu lÊy Phiªn Vò",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"B«n Tiªu",{tbProp={0,10,6,1,5,0},},1} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},5} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},5} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},5} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},5} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},800000000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,7,1,5,0}},1,"DoiBonTieuLayPhienVu", "DoiBonTieuLayPhienVu"} },
	},
}

tbConfig[26] =
{
	nId = 26,
	szMessageType = "ClickNpc",
	szName = "§èi tho¹i víi §¹i S­ L·o L·o",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§¹i S­ L·o L·o"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"§æi Trang bÞ Hång ¶nh",37} },
		--{"AddDialogOpt",	{"§æi Trang bÞ §éng S¸t",42} },
		--{"AddDialogOpt",	{"§æi Trang bÞ §Þnh Quèc",29} },
		--{"AddDialogOpt",	{"§æi Trang bÞ Nhu T×nh",30} },
		--{"AddDialogOpt",	{"§æi Trang bÞ HiÖp Cèt",31} },
		--{"AddDialogOpt",	{"§æi Trang bÞ An Bang",32} },
		--{"AddDialogOpt",	{"§æi Trang bÞ V« Danh",47} },
		--{"AddDialogOpt",	{"§æi Trang bÞ Hång ¶nh 30 ngµy",34} },
		--{"AddDialogOpt",	{"§æi Trang bÞ §éng S¸t 30 ngµy",35} },
		--{"AddDialogOpt",	{"§æi Trang bÞ An Bang 30 ngµy",36} },
		--{"AddDialogOpt",	{"§æi ch×a khãa Hoµng Kim",50} },
		--{"AddDialogOpt",	{"Thu Phôc ThÇn M· XÝch Long C©u VÜnh ViÔn",51} },
		--{"AddDialogOpt",	{"§æi nh¹c v­¬ng hån th¹ch ra TiÒn §ång",52} },
		--{"AddDialogOpt",	{"§æi KNB ra TiÒn ®ång",58} },
		--{"AddDialogOpt",	{"§æi Kª HuyÕt §»ng",66} },
		--{"AddDialogOpt",	{"§æi MÆt n¹ v­¬ng gi¶",70} },
	},
}

tbConfig[27] = 
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ Hång ¶nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ Hång ¶nh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,204},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,205},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,206},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,207},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
	},
}

tbConfig[28] = 
{
	nId = 28,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ §éng S¸t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ §éng S¸t",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,143},nQuality = 1},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,144},nQuality = 1},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,145},nQuality = 1},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,146},nQuality = 1},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
	},
}

tbConfig[29] = 
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ §Þnh Quèc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ §Þnh Quèc",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,159},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,160},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,161},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,162},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,163},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[30] = 
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ Nhu T×nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ Nhu T×nh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,190},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,191},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,192},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,193},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[31] = 
{
	nId = 31,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ HiÖp Cèt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ HiÖp Cèt",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,186},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,187},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,188},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,189},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[32] = 
{
	nId = 32,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ An Bang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ An Bang",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},1500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,164},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,165},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,166},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,167},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[33] = 
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ V« Danh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ V« Danh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},8000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,141},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,142},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[34] = 
{
	nId = 34,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ Hång ¶nh 30 ngµy",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ Hång ¶nh 30 ngµy",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,204},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,205},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,206},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,207},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
	},
}

tbConfig[35] = 
{
	nId = 35,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ §éng S¸t 30 ngµy",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ §éng S¸t 30 ngµy",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,143},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,144},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,145},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,146},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
	},
}

tbConfig[36] = 
{
	nId = 36,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ An Bang  30 ngµy",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ An Bang  30 ngµy",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,164},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,165},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,166},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,167},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[37] =
{
	nId = 37,
	szMessageType = "CreateDialog",
	szName = "§æi trang bÞ hång ¶nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi trang bÞ hång ¶nh",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hång ¶nh ThÈm Viªn UyÓn",38} },
		{"AddDialogOpt",	{"Hång ¶nh KiÕm Bµi",39} },
		{"AddDialogOpt",	{"Hång ¶nh Môc Tóc",40} },
		{"AddDialogOpt",	{"Hång ¶nh Tô Chiªu",41} },
	},
}

tbConfig[38] = 
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ Hång ¶nh ThÈm Viªn UyÓn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ Hång ¶nh ThÈm Viªn UyÓn",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,204},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[39] = 
{
	nId = 39,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ Hång ¶nh KiÕm Bµi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ Hång ¶nh KiÕm Bµi",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,205},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[40] = 
{
	nId = 40,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ Hång ¶nh Môc Tóc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ Hång ¶nh Môc Tóc",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,206},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[41] = 
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ Hång ¶nh Tô Chiªu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ Hång ¶nh Tô Chiªu",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,207},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[42] =
{
	nId = 42,
	szMessageType = "CreateDialog",
	szName = "§æi trang bÞ §éng S¸t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi trang bÞ §éng S¸t",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"§éng S¸t B¹ch Kim §iªu Long Giíi",43} },
		{"AddDialogOpt",	{"§éng S¸t B¹ch Ngäc Cµn Kh«n Béi",44} },
		{"AddDialogOpt",	{"§éng S¸t B¹ch Kim Tó Phông Giíi",45} },
		{"AddDialogOpt",	{"§éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn",46} },
	},
}

tbConfig[43] = 
{
	nId = 43,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ §éng S¸t B¹ch Kim §iªu Long Giíi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ §éng S¸t B¹ch Kim §iªu Long Giíi",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,143},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[44] = 
{
	nId = 44,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ §éng S¸t B¹ch Ngäc Cµn Kh«n Béi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ §éng S¸t B¹ch Ngäc Cµn Kh«n Béi",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,144},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[45] = 
{
	nId = 45,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ §éng S¸t B¹ch Kim Tó Phông Giíi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ §éng S¸t B¹ch Kim Tó Phông Giíi",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,145},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[46] = 
{
	nId = 46,
	szMessageType = "CreateCompose",
	szName = "§æi Trang bÞ §éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Trang bÞ §éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,146},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[47] =
{
	nId = 47,
	szMessageType = "CreateDialog",
	szName = "§æi trang bÞ V« Danh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi trang bÞ V« Danh",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"V« Danh ChØ Hoµn",48} },
		{"AddDialogOpt",	{"V« Danh Giíi ChØ",49} },
	},
}


tbConfig[48] = 
{
	nId = 48,
	szMessageType = "CreateCompose",
	szName = "V« Danh ChØ Hoµn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>V« Danh ChØ Hoµn",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},7000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,141},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[49] = 
{
	nId = 49,
	szMessageType = "CreateCompose",
	szName = "V« Danh Giíi ChØ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>V« Danh Giíi ChØ",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},7000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,142},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[50] = 
{
	nId = 50,
	szMessageType = "CreateCompose",
	szName = "Ch×a khãa Hoµng Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch×a khãa Hoµng Kim",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4297, 1, 0, 0}},1,"DoiNguHanhKyThachChiaKhoaHK", "DoiNguHanhKyThachChiaKhoaHK"} },
	},
}

tbConfig[51] = 
{
	nId = 51,
	szMessageType = "CreateCompose",
	szName = "ThÇn m· XÝch Long C©u VÜnh ViÔn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ThÇn m· XÝch Long C©u VÜnh ViÔn",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},3000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,9,10,0,0,0}},1,"DoiNguHanhKyThachXichLongCau", "DoiNguHanhKyThachXichLongCau"} },
	},
}

tbConfig[52] = 
{
	nId = 52,
	szMessageType = "CreateCompose",
	szName = "§æi Nh¹c V­¬ng Hån Th¹ch",
	nStartDate = 201509100000,
	nEndDate  = 201602160000,
	tbMessageParam = {"<npc>§æi Nh¹c V­¬ng Hån Th¹ch",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"Nh¹c v­¬ng hån th¹ch",{tbProp={4,507,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4, 417, 1, 1, 0, 0}},50,"DoiNVHTLayXu", "DoiNVHTLayXu"} },
	},
}

tbConfig[53] =
{
	nId = 53,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 17",
	nStartDate = 201509100000,
	nEndDate  = 201903010000,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2742,1,0,0},},2,"BaoRuongVuotAi\tVuotAi17"} },
		{"PlayerFunLib:AddExp",	{2000000,0,"Event_G7TangThem","Hoatdongthuongxuyen\tVuotAi1"} },
	},
}

tbConfig[54] =
{
	nId = 54,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 28",
	nStartDate = 201509100000,
	nEndDate  = 201903010000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2742,1,0,0},},3,"BaoRuongVuotAi\tVuotAi28"} },
		{"PlayerFunLib:AddExp",	{2000000,0,"Event_G7TangThem","Hoatdongthuongxuyen\tVuotAi1"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4344,1,0,0},},10,"ManhTSTL\tVuotAi28"} },
	},
}

tbConfig[55] =
{
	nId = 55,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 10",
	nStartDate = 201509100000,
	nEndDate  = 201603010000,
	tbMessageParam = {"10"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{tbProp={4, 417, 1, 1, 0, 0},},10,"Hoatdongthuongxuyen\tVuotAi10"} },
	},
}

tbConfig[56] =
{
	nId = 56,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 20",
	nStartDate = 201509100000,
	nEndDate  = 201603010000,
	tbMessageParam = {"20"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{tbProp={4, 417, 1, 1, 0, 0},},10,"Hoatdongthuongxuyen\tVuotAi20"} },
	},
}

tbConfig[56] = --qua ai 27 duoc ngu hanh ky thach
{
	nId = 56,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 27",
	nStartDate = 201509100000,
	nEndDate  = 201603010000,
	tbMessageParam = {"27"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,2125,1,0,0},},10,"Hoatdongthuongxuyen\tVuotAi27"} },
	},
}

tbConfig[57] =
{
	nId = 57,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 1",
	nStartDate = 201509100000,
	nEndDate  = 201603010000,
	tbMessageParam = {"1"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:AddExp",	{2000000,0,"Event_G7TangThem","Hoatdongthuongxuyen\tVuotAi1"} },
	},
}

tbConfig[58] = 
{
	nId = 58,
	szMessageType = "CreateCompose",
	szName = "§æi Kim Nguyªn B¶o",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Kim Nguyªn B¶o",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,343,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4, 417, 1, 1, 0, 0}},20,"DoiKNBLayXu", "DoiKNBLayXu"} },
	},
}

tbConfig[59] =
{
	nId = 59,
	szMessageType = "ClickNpc",
	szName = "§èi tho¹i víi Cæ Giíi Tiªn Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Cæ Giíi Tiªn Sinh"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Hîp thµnh Vi DiÖu Chi Y",60} },
		--{"AddDialogOpt",	{"Hîp thµnh Tinh ChuÈn Chi Ngoa",61} },
		--{"AddDialogOpt",	{"N©ng cÊp Hoµn Mü Vi DiÖu Chi Y",71} },
		--{"AddDialogOpt",	{"N©ng cÊp Hoµn Mü ChuÈn Chi Ngoa",72} },

		--{"AddDialogOpt",	{"Hîp thµnh ThÇn M· Siªu Quang",62} },
		--{"AddDialogOpt",	{"Hîp thµnh ThÇn M· XÝch Long C©u",63} },
		--{"AddDialogOpt",	{"Hîp thµnh ThÇn M· H·n HuyÕt Long C©u",64} },
		
		--{"AddDialogOpt",	{"Hîp thµnh Tói Cµn Kh«n",69} },
	},
}

tbConfig[60] = 
{
	nId = 60,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Vi DiÖu Chi Y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Hîp thµnh Vi DiÖu Chi Y",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"M¶nh Vi DiÖu Chi Y",{tbProp={4,1496,1,1,0,0},},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,214},nQuality = 1},1,"HopThanhViDieuChiY", "HopThanhViDieuChiY"} },
	},
}

tbConfig[61] = 
{
	nId = 61,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tinh ChuÈn Chi Ngoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Hîp thµnh Tinh ChuÈn Chi Ngoa",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"M¶nh Vi DiÖu Chi Y",{tbProp={4,1497,1,1,0,0},},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,215},nQuality = 1},1,"HopThanhViDieuChiY", "HopThanhViDieuChiY"} },
	},
}

tbConfig[62] = 
{
	nId = 62,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh ThÇn M· Siªu Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Hîp thµnh ThÇn M· Siªu Quang",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"M¶nh Siªu Quang",{tbProp={4,1498,1,1,0,0},},300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,13,10,0,0,0},},1,"HopThanhSieuQuang", "HopThanhSieuQuang"} },
	},
}

tbConfig[63] = 
{
	nId = 63,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh ThÇn M· XÝch Long C©u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Hîp thµnh ThÇn M· XÝch Long C©u",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"M¶nh XÝch Long C©u",{tbProp={4,1499,1,1,0,0},},200} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,9,10,0,0,0},},1,"HopThanhXichLongCau", "HopThanhXichLongCau"} },
	},
}

tbConfig[64] = 
{
	nId = 64,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh ThÇn M· H·n HuyÕt Long C©u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Hîp thµnh ThÇn M· H·n HuyÕt Long C©u",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"M¶nh H·n HuyÕt Long C©u",{tbProp={4,1500,1,1,0,0},},500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,18,10,0,0,0},},1,"HopThanhHanHuyetLongCau", "HopThanhHanHuyetLongCau"} },
	},
}
tbConfig[65] =  --Tieu diet thuy tac dau linh
{
	nId = 65,
	szMessageType = "NpcOnDeath",
	szName = "Tieu diet thuy tac dau linh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"725"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2743,1,0,0},},1,"100"} }, --bao ruong thuy tac
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2125,1,0,0},},1,"100"} }, --1 ngu hanh ky thach
		{"ThisActivity:VnFFBigBossDropTieu",	{nil}},
	},
}

tbConfig[66] = 
{
	nId = 66,
	szMessageType = "CreateCompose",
	szName = "§æi Kª HuyÕt §»ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>§æi Kª HuyÕt §»ng",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ngò hµnh kú th¹ch",{tbProp={6,1,2125,1,0,0},},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4307,1,0,0}},1,"DoiKeHuyetDang", "DoiKeHuyetDang"} },
	},
}

tbConfig[67] =
{
	nId = 67,
	szMessageType = "ClickNpc",
	szName = "§èi tho¹i víi Ch­ëng §¨ng Cung N÷",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch­ëng §¨ng Cung N÷"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua Cµn Kh«n LÖnh",68} },
	},
}

tbConfig[68] = 
{
	nId = 68,
	szMessageType = "CreateCompose",
	szName = "Mua Cµn Kh«n LÖnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua Cµn Kh«n LÖnh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},1000000} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},7} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},7} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},7} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},7} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4309,1,0,0}},1,"MuaCanKhonLenh", "MuaCanKhonLenh"} },
	},
}

tbConfig[69] = 
{
	nId = 69,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tói Cµn Kh«n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Hîp thµnh Tói Cµn Kh«n",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kª HuyÕt §»ng",{tbProp={6,1,4307,1,0,0},},1} },
		{"AddOneMaterial",	{"Tu Th©n Hoµn",{tbProp={6,1,4308,1,0,0},},1} },
		{"AddOneMaterial",	{"Cµn Kh«n LÖnh Bµi",{tbProp={6,1,4309,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4310,1,0,0}},1,"HopThanhTuiCanKhon", "HopThanhTuiCanKhon"} },
	},
}
tbConfig[70] = --Ò»¸öÏ¸½Ú
{
	nId = 70,
	szMessageType = "CreateCompose",
	szName = "§æi mÆt n¹ V­¬ng Gi¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V­¬ng Gi¶",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},150} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,561,1,0,0},nExpiredTime=60*24*30,},1,"[Ho¹t ®éng][§æi mÆt n¹ v­¬ng gi¶]"} },
	},
}

tbConfig[71] = --Ò»¸öÏ¸½Ú
{
	nId = 71,
	szMessageType = "CreateCompose",
	szName = "Hoµn Mü Vinh DiÖu Chi Y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hoµn Mü Vinh DiÖu Chi Y",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Trang bÞ Vinh DiÖu Chi Y",{tbProp={0,214},nQuality = 1},1} },
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0}},3000} },
		{"AddOneMaterial",	{"Ngäc Lôc B¶o",{tbProp={6,1,4325,1,0,0}},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,512},nQuality = 1},1,"[Ho¹t ®éng][N©ng cÊp hoµn mü vinh diÖu chi y]"} },
	},
}

tbConfig[72] = --Ò»¸öÏ¸½Ú
{
	nId = 72,
	szMessageType = "CreateCompose",
	szName = "Hoµn Mü Tinh chuÈn chi Ngoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hoµn Mü Tinh chuÈn chi Ngoa",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Trang bÞ Tinh chuÈn chi Ngoa",{tbProp={0,215},nQuality = 1},1} },
		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0}},3000} },
		{"AddOneMaterial",	{"Ngäc Lôc B¶o",{tbProp={6,1,4325,1,0,0}},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,513},nQuality = 1},1,"[Ho¹t ®éng][N©ng cÊp hoµn mü vinh tinh chuÈn chi ngoa]"} },
	},
}
