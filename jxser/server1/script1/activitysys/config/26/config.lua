Include("\\script\\activitysys\\config\\26\\variables.lua")
tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "Click vµo NPC Bµn TiÖc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Bµn TiÖc"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta muèn th­ëng thøc mãn ¨n",2} },
		{"SetDialogTitle",	    {"Chóc Mõng N¨m Míi!"} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "nil",
	szName = "Ta muèn th­ëng thøc mãn ¨n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{nPlayerLevel,"ChØ cã nh÷ng HiÖp Sü cã ®¼ng cÊp 50 vµ 50 trë lªn hoÆc lµ nh÷ng HiÖp Sü ®· trïng sinh míi cã thÓ tham gia ho¹t ®éng nµy.",">="} },
		--{"ThisActivity:CheckTask",	{TSK_TotalEatExp,nTotalEatUpExp,"ThiÕu HiÖp ng­¬i th­ëng thøc mãn ¨n nhËn ®­îc kinh nghiÖm ®· ®¹t ®Õn giíi h¹n råi, kh«ng thÓ ¨n thªm ®­îc n÷a","<"} },
		{"ThisActivity:CheckTaskA",	{TSK_EatExp, TSK_EatExpDate, nEatUpExp,"Xin lçi, ThiÕu HiÖp h«m nay ng­¬i ¨n no qóa råi, ngµy mai l¹i ®Õn nhÐ.",nNumber} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveEatAward1",	{TSK_EatExp, TSK_EatExpDate, TSK_TotalEatExp, nNumber} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "Ta muèn §Êu R­îu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§Êu R­îu , §Êu chÝnh lµ trÝ tuÖ vµ vËn may"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{nPlayerLevel,"ChØ cã nh÷ng HiÖp Sü cã ®¼ng cÊp 50 vµ 50 trë lªn hoÆc lµ nh÷ng HiÖp Sü ®· trïng sinh míi cã thÓ tham gia ho¹t ®éng nµy.",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Giíi thiÖu quy t¾c §Êu R­îu",4} },
		--{"AddDialogOpt",	{"Ta muèn b¾t ®Çu ®Êu r­îu",5} },
		--{"AddDialogOpt",	{"Ta muèn kiÓm tra kÕt qu¶ ®Êu r­îu",12} },
		--{"AddDialogOpt",	{"Ta muèn nhËn phÇn th­ëng §Êu R­îu",23} },
		--{"AddDialogOpt",	{"§Ó ta suy nghÜ l¹i",0} },
	},
}
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "CreateDialog",
	szName = "Giíi thiÖu quy t¾c §Êu R­îu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThiÕu HiÖp, ng­¬i mçi ngµy cã thÓ tham gia 3 trËn §Êu R­îu, mçi trËn §Êu R­îu tæng céng cã 12 l­ît r­îu, ThiÕu HiÖp nÕu ng­¬i muèn th¾ng 1 trËn ®Êu r­îu thµnh c«ng, th× cÇn ph¶i uèng hÕt 12 luît r­îu cña trËn §Êu R­îu nµy, trong mçi l­ît §Êu R­îu, ThiÕu HiÖp cã thÓ lùa chän uèng B¸t R­îu Nhá, B¸t R­îu Trung, hay lµ B¸t R­îu Lín, uèng lo¹i r­îu kh«ng gièng nhau sÏ céng thªm  cho ng­¬i §é Say XØn vµ Töu L­îng kh«ng gièng nhau, ThiÕu HiÖp cÇn ph¶i ®¶m b¶o trong lóc §é Say XØn nhá h¬n 100 cè g¾ng t¨ng cao Töu L­îng cña m×nh. NÕu ng­¬i kh«ng thËn tränguèng cho Say XØn ®Õn 100 hoÆc 100 trë lªn, th× ng­¬i ®· uèng say råi, th× trËn ®Êu r­îu nµy xem nh­ lµ thÊt b¹i, nÕu ng­¬i uèng hÕt 12 l­ît r­îu mµ §é Say XØn cña ng­¬i vÉn nhá h¬n 100, th× trËn §Êu R­îu nµy ng­¬i ®· thµnh c«ng, ta sÏ lÊy tÊt c¶ Töu L­îng nhËn ®­îc cña nh÷ng lÇn §Êu R­îu thµnh c«ng trong ngµy céng l¹i vµ tiÕn hµnh xÕp h¹ng, XÕp h¹ng ë top 10 th× sÏ ®­îc nhËn phÇn th­ëng phong phó. Qu¸ tr×nh §Êu R­îu, B¸t R­îu Nhá céng thªm 3-6 §é Say XØn, 3 l­îng Töu L­îng, B¸t R­îu Trung céng thªm 2-12 §é Say XØn, 7 l­îng Töu L­îng, B¸t R­îu Lín céng thªm 3-18 §é Say XØn, 11 l­îng Töu L­îng."},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "nil",
	szName = "Ta muèn b¾t ®Çu ®Êu r­îu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:BeginDrink",	{nil} },
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "nil",
	szName = "Uèng mét b¸t r­îu nhá",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DrinkOneRound",	{TSK_ZuiYi,TSK_JiuLiang,TSK_DrinkTimes,TSK_DrinkRound,TSK_WinDrink,TSK_AnWei,TSK_LastTimeDate,1020,"small",5} },
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "nil",
	szName = "Uèng 1 B¸t R­îu Trung",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DrinkOneRound",	{TSK_ZuiYi,TSK_JiuLiang,TSK_DrinkTimes,TSK_DrinkRound,TSK_WinDrink,TSK_AnWei,TSK_LastTimeDate,1020,"middle",5} },
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "nil",
	szName = "Uèng mét b¸t r­îu lín",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DrinkOneRound",	{TSK_ZuiYi,TSK_JiuLiang,TSK_DrinkTimes,TSK_DrinkRound,TSK_WinDrink,TSK_AnWei,TSK_LastTimeDate,1020,"big",5} },
	},
}
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "nil",
	szName = "ChÞu thua",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:Lose",	{TSK_DrinkTimes,TSK_DrinkRound,TSK_ZuiYi,TSK_AnWei,TSK_JiuLiang} },
	},
}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "ServerStart",
	szName = "Khi më sever ®¨ng t¶i c¸i bµn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddDialogNpc",	{"Bµn TiÖc", 1658, tbDeskPos} },
	},
}
tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "ServerStart",
	szName = "Khi më sever ®¨ng t¶i ThÈm Viªn Ngo¹i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddDialogNpc",	{"ThÈm Viªn Ngo¹i", 1659, tbYuanWaiPos} },
	},
}
tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "KiÓm tra kÕt qu¶ ®Êu r­îu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"KiÓm tra kÕt qu¶ ®Êu r­îu",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"KiÓm tra töu l­îng nhËn ®­îc h«m nay  cña ta.",13} },
		{"AddDialogOpt",	{"KiÓm tra xÕp h¹ng top 10 cña Töu L­îng ngµy h«m tr­íc",15} },
		{"AddDialogOpt",	{"KiÓm tra xÕp h¹ng töu l­îng ngµy h«m tr­íc cña ta.",16} },
	},
}
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "nil",
	szName = "KiÓm tra töu l­îng nhËn ®­îc h«m nay  cña ta.",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DisplayCurJiuLiang",	{nil} },
	},
}
tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "nil",
	szName = "KiÓm tra xÕp h¹ng top 10 cña Töu L­îng hiÖn t¹i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DisplayCurTopTen",	{nil} },
	},
}
tbConfig[15] = --Ò»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "nil",
	szName = "KiÓm tra xÕp h¹ng top 10 cña Töu L­îng ngµy h«m tr­íc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DisplayYTopTen",	{nil} },
	},
}
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "nil",
	szName = "KiÓm tra xÕp h¹ng töu l­îng ngµy h«m tr­íc cña ta.",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:DisplayYPlayerPaiMing",	{nil} },
	},
}
tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "ClickNpc",
	szName = "Click vµo ThÈm Viªn Ngo¹i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThÈm Viªn Ngo¹i"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{nPlayerLevel,"",">="} },
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"<npc>C¸c ch­ vÞ vâ l©m hµo hiÖp, L·o ThÈm t«i ®· bµy lÔ råi, n¨m míi còng gÇn kÒ, Ta ë ®©y ®· bµy s½n s¬n hµo h¶i vÞ chiªu ®·i c¸c ch­ vÞ, xin c¸c vÞ cø tù nhiªn, ®õng kh¸ch s¸o, ¨n uèng no say tho¶i m¸i ®i!"} },
		{"AddDialogOpt",	{"Giíi thiÖu ho¹t ®éng §¹i YÕn QuÇn HiÖp",18} },
		{"AddDialogOpt",	{"NhËn hång bao",19} },
		{"AddDialogOpt",	{"Mua kÕt tinh Méc",37} },
		
	},
}
tbConfig[18] = --Ò»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "CreateDialog",
	szName = "Giíi thiÖu ho¹t ®éng §¹i YÕn QuÇn HiÖp",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Thêi gian tõ 09h ngµy 01/01 ®Õn 30/01, ThiÕu HiÖp ng­¬i cã thÓ t¹i chç Ta ë ®©y ®· bµy s½n s¬n hµo h¶i vÞ chiªu ®·i, ¨n uèng no say tho¶i m¸i ®i, Thêi gian tõ 02/01 ®Õn 11/01, ®Ó cÇu may cho con trai xa xø cña ta, ThiÕu HiÖp ng­¬i cã thÓ ®Õn chç cña ta ®©y nhËn 1 §¹i Hång Bao! ThÈm Viªn Ngo¹i ta ®©y kh«ng ph¶i lµ ng­êi keo kiÖt ®©u, ta ®· bá vµo Hång Bao ®Õn kinh nghiÖm, ThiÕu HiÖp ng­¬i ®õng quªn ®Ðn nhËn Hång Bao nhÐ.",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[19] = --Ò»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "nil",
	szName = "NhËn hång bao",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_LiBao,1,"ThiÕu HiÖp ng­¬i ®· nhËn Hång Bao ë chç cña ta råi, mçi ng­êi chØ ®­îc nhËn Hång Bao 1 lÇn ë chç cña ta!","<"} },
		{"lib:CheckDay",	{nGetLiBaoStartDate, nGetLiBaoEndDate, "Vµo kho¶ng ngµy 02 th¸ng 1, con trai cña ta ph¶i lªn ®­êng t×m kiÕm ph­¬ng trêi bu«n b¸n míi, ®Ó cÇu may cho nã, vµo ngµy 02 ®Õn ngµy 11 th¸ng 1, ThiÕu HiÖp ng­¬i cã thÓ ®Õn chç cña ta ®©y nhËn mét §¹i Hång Bao! ThÈm Viªn Ngo¹i ta ®©y kh«ng ph¶i lµ ng­êi keo kiÖt ®©u, ta ®· bá vµo Hång Bao ®Õn kinh nghiÖm, ThiÕu HiÖp ng­¬i ®õng quªn ®Ðn nhËn Hång Bao nhÐ."} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"Hµnh trang kh«ng ®ñ chç trèng, Ýt nhÊt ph¶i 1 c¸i 1*1 kh«ng gian hµnh trang"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2694,1,0,0},nBindState = -2,nExpiredTime=HetHanEventTetTay,},1,"§¹i YÕn QuÇn HiÖp n¨m 2011, Hång Bao ThÈm Viªn Ngo¹i"} },
		{"ThisActivity:AddTask",	{TSK_LiBao,1} },
	},
}
tbConfig[20] = --Ò»¸öÏ¸½Ú
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "§æi lÊy Gi¶i Töu Hoµn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gi¶i Töu Hoµn",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},100000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2695,1,0,0},nExpiredTime=HetHanEventTetTay,},1,"§¹i YÕn QuÇn HiÖp n¨m 2011, nhËn ®­îc Gi¶i Töu Hoµn"} },
	},
}
tbConfig[21] = --Ò»¸öÏ¸½Ú
{
	nId = 21,
	szMessageType = "ItemScript",
	szName = "Sö dông Gi¶i Töu Hoµn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2695,-1,-1,-1},}},
	tbCondition = 
	{
		{"ThisActivity:CheckGetDrunk",	{1020,"Kh«ng cã say th× kh«ng cÇn dïng Gi¶i Töu Hoµn ®©u"} },
	},
	tbActition = 
	{
		{"ThisActivity:JieJiu",	{1020} },
	},
}
tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "ItemScript",
	szName = "Sö dông Hång Bao cña ThÈm Viªn Ngo¹i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2694,-1,-1,-1},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_UseLiBao,0,"","=="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:AddExp",	{nLiBaoExp,1,"§¹i YÕn QuÇn HiÖp n¨m 2011, sö dông Hång Bao ThÈm Viªn Ngo¹i nhËn ®­îc kinh nghiÖm"} },
		--{"ThisActivity:SetTask",	{TSK_UseLiBao,1} },
		{"ThisActivity:SuDungHongBao",	{nil} },
	},
}
tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
	szMessageType = "CreateDialog",
	szName = "NhËn phÇn th­ëng §Êu R­îu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"NhËn phÇn th­ëng §Êu R­îu",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"NhËn phÇn th­ëng xÕp h¹ng §Êu R­îu",24} },
		{"AddDialogOpt",	{"NhËn phÇn th­ëng ®Êu r­îu thµnh c«ng",29} },
		{"AddDialogOpt",	{"NhËn phÇn th­ëng an ñi",30} },
	},
}
tbConfig[24] = --Ò»¸öÏ¸½Ú
{
	nId = 24,
	szMessageType = "nil",
	szName = "NhËn phÇn th­ëng xÕp h¹ng §Êu R­îu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:GetPaiMingAward",	{nil} },
	},
}
tbConfig[25] = --Ò»¸öÏ¸½Ú
{
	nId = 25,
	szMessageType = "nil",
	szName = "NhËn phÇn th­ëng ®Êu r­îu xÕp h¹ng 1",
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
tbConfig[26] = --Ò»¸öÏ¸½Ú
{
	nId = 26,
	szMessageType = "nil",
	szName = "NhËn phÇn th­ëng ®Êu r­îu xÕp h¹ng 2",
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
tbConfig[27] = --Ò»¸öÏ¸½Ú
{
	nId = 27,
	szMessageType = "nil",
	szName = "NhËn phÇn th­ëng ®Êu r­îu xÕp h¹ng 3",
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
tbConfig[28] = --Ò»¸öÏ¸½Ú
{
	nId = 28,
	szMessageType = "nil",
	szName = "NhËn phÇn th­ëng ®Êu r­îu xÕp h¹ng tõ 4-10",
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
tbConfig[29] = --Ò»¸öÏ¸½Ú
{
	nId = 29,
	szMessageType = "nil",
	szName = "NhËn phÇn th­ëng ®Êu r­îu thµnh c«ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_WinDrink,1,"ThiÕu HiÖp ng­¬i kh«ng cã phÇn th­ëng ®Êu r­îu thµnh c«ng ®Ó nhËn","=="} },
	},
	tbActition = 
	{
		{"ThisActivity:GetDrinkAward",	{TSK_TotalDrinkExp, nTotalDrinkUpExp, nWinDrinkExp, "ThiÕu HiÖp ng­¬i tham gia ®Êu r­îu nhËn ®­îc kinh nghiÖm ®· ®¹t ®Õn giíi h¹n, kh«ng thÓ tiÕp tôc nhËn nh÷ng phÇn th­ëng cã liªn quan ®Õn ®Êu r­îu", "<", nNumber,"§¹i YÕn QuÇn HiÖp n¨m 2011, nhËn phÇn th­ëng ®Êu r­îu thµnh c«ng."} },
		{"ThisActivity:SetTask",	{TSK_WinDrink,0} },
	},
}
tbConfig[30] = --Ò»¸öÏ¸½Ú
{
	nId = 30,
	szMessageType = "nil",
	szName = "NhËn phÇn th­ëng an ñi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_AnWei,1,"ThiÕu HiÖp, ng­¬i kh«ng cã phÇn th­ëng an ñi ®Ó nhËn","=="} },
	},
	tbActition = 
	{
		{"ThisActivity:GetDrinkAward",	{TSK_TotalDrinkExp, nTotalDrinkUpExp, nAnWeiExp, "ThiÕu HiÖp ng­¬i tham gia ®Êu r­îu nhËn ®­îc kinh nghiÖm ®· ®¹t ®Õn giíi h¹n, kh«ng thÓ tiÕp tôc nhËn nh÷ng phÇn th­ëng cã liªn quan ®Õn ®Êu r­îu", "<", nNumber,"§¹i YÕn QuÇn HiÖp n¨m 2011, nhËn phÇn th­ëng an ñi"} },
		{"ThisActivity:SetTask",	{TSK_AnWei,0} },
	},
}
tbConfig[31] = --Ò»¸öÏ¸½Ú
{
	nId = 31,
	szMessageType = "ServerStart",
	szName = "Khi më sever ®¨ng t¶i §Ìn Lång",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddMulNpc",	{tbNpcs,"§Ìn Lång",1592} },
	},
}
tbConfig[32] = --Ò»¸öÏ¸½Ú
{
	nId = 32,
	szMessageType = "ServerStart",
	szName = "Khi më sever ®¨ng t¶i Bóp Bª §Çu Bù",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"ThisActivity:AddNpcFromFile",	{"§Çu «ng ®Þa", 1660, "\\settings\\maps\\dayanqunxia\\datouwawa.txt",176} },
		{"ThisActivity:AddNpcFromFile",	{"§Çu «ng ®Þa", 1660, "\\settings\\maps\\dayanqunxia\\dauongdia.txt",78} },
	},
}
tbConfig[33] = --Ò»¸öÏ¸½Ú
{
	nId = 33,
	szMessageType = "ServerStart",
	szName = "Khi më sever ®¨ng t¶i Vò Nam S­",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"ThisActivity:AddNpcFromFile",	{"Nam S­ ", 1661, "\\settings\\maps\\dayanqunxia\\wunanshi.txt",176} },
		{"ThisActivity:AddNpcFromFile",	{"Nam S­ ", 1661, "\\settings\\maps\\dayanqunxia\\namsu.txt",78} },
	},
}
tbConfig[34] = --Ò»¸öÏ¸½Ú
{
	nId = 34,
	szMessageType = "ServerStart",
	szName = "Khi më sever ®¨ng t¶i Vò B¾c S­",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"ThisActivity:AddNpcFromFile",	{"B¾c S­ ", 1662, "\\settings\\maps\\dayanqunxia\\wubeishi.txt",176} },
		{"ThisActivity:AddNpcFromFile",	{"B¾c S­ ", 1662, "\\settings\\maps\\dayanqunxia\\bacsu.txt",78} },
	},
}
--================Them event=================
tbConfig[35] = --Ò»¸öÏ¸½Ú
{
	nId = 35,
	szMessageType = "ServerStart",
	szName = "Khi më sever ®¨ng t¶i V¨n TuyÕt Nhi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddDialogNpc",	{"V¨n TuyÕt Nhi", 1327, tbYuanWaiPos1} },
	},
}
tbConfig[36] = --Ò»¸öÏ¸½Ú
{
	nId = 36,
	szMessageType = "ClickNpc",
	szName = "Click vµo V¨n TuyÕt Nhi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V¨n TuyÕt Nhi"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{nPlayerLevel,"",">="} },
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"<npc>Chóc mõng n¨m míi 2017. Muéi ë ®©y ®· bµy s½n s¬n hµo h¶i vÞ chiªu ®·i c¸c ch­ vÞ, xin c¸c vÞ cø tù nhiªn, ®õng kh¸ch s¸o, ¨n uèng no say tho¶i m¸i ®i!"} },
		{"AddDialogOpt",	{"Hîp thµnh Ngò Th¸i KÕt Tinh",49} },
	},
}
tbConfig[37] = --Ò»¸öÏ¸½Ú
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Mua kÕt tinh Méc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"KÕt tinh Méc",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},9000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2599,1,0,0},nExpiredTime=HetHanEventTetTay,},1,"§¹i YÕn QuÇn HiÖp n¨m 2011, nhËn ®­îc KÕt Tinh Méc"} },
	},
}
tbConfig[38] = --Ò»¸öÏ¸½Ú
{
	nId = 38,
	szMessageType = "NpcOnDeath",
	szName = "B¶n ®å ®¸no qu¸i nhËn ®­îc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{szName="KÕt tinh Thæ",tbProp={6,1,2600,1,0,0},nExpiredTime=HetHanEventTetTay,},1,"2"} },
		{"NpcFunLib:DropSingleItem",	{{szName="KÕt tinh Thñy",tbProp={6,1,2602,1,0,0},nExpiredTime=HetHanEventTetTay,},1,"2"} },
	},
}

--Tham gia hoat dong ket tinh hoa

tbConfig[39] = --Ò»¸öÏ¸½Ú
{
	nId = 39,
	szMessageType = "FinishSongJin",
	szName = "§iÓm tÝch lòy Tèng Kim cao cÊp lín h¬n 1000 thÊp h¬n 3000 nhËn ®­îc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",1000,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},25,EVENT_LOG_TITLE,"TongKim1000NhanDuoc"} },
	},
}
tbConfig[40] = --Ò»¸öÏ¸½Ú
{
	nId = 40,
	szMessageType = "FinishSongJin",
	szName = "§iÓm tÝch lòy Tèng Kim cao cÊp 3000 nhËn ®­îc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},50,EVENT_LOG_TITLE,"TongKim3000NhanDuoc"} },
	},
}
tbConfig[41] = --Ò»¸öÏ¸½Ú
{
	nId = 41,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i thø 17 nhËn ®­îc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},25,EVENT_LOG_TITLE,"VuotAi17NhanDuoc"} },
	},
}
tbConfig[42] = --Ò»¸öÏ¸½Ú
{
	nId = 42,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i thø 28 nhËn ®­îc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},50,EVENT_LOG_TITLE,"VuotAi28NhanDuoc"} },
	},
}
tbConfig[43] = --Ò»¸öÏ¸½Ú
{
	nId = 43,
	szMessageType = "NpcOnDeath",
	szName = "Thñy TÆc §Çu LÜnh Phong L¨ng §é nhËn ®­îc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},15,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinhNhanDuoc"} },
	},

}
tbConfig[44] = --Ò»¸öÏ¸½Ú
{
	nId = 44,
	szMessageType = "NpcOnDeath",
	szName = "Thñy TÆc §¹i §Çu LÜnh Phong L¨ng §é nhËn ®­îc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},20,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinhNhanDuoc"} },
	},
}
tbConfig[45] = --Ò»¸öÏ¸½Ú
{
	nId = 45,
	szMessageType = "YDBZguoguan",
	szName = "Viªm §Õ v­ît qua ¶i thø 10 nhËn ®­îc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},50,EVENT_LOG_TITLE,"VuotAiViemDe10NhanDuoc"} },
	},
}
tbConfig[46] = --Ò»¸öÏ¸½Ú
{
	nId = 46,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt Boss Hoµng Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},20,EVENT_LOG_TITLE,"TieuDietBossTheGioiNhanDuoc"} },
	},
}
tbConfig[47] = --Ò»¸öÏ¸½Ú
{
	nId = 47,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt Boss S¸t Thñ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},5,EVENT_LOG_TITLE,"TieuDietBossSatThuNhanDuoc"} },
	},
}
tbConfig[48] = --Ò»¸öÏ¸½Ú
{
	nId = 48,
	szMessageType = "Chuanguan",
	szName = "V­ît ¶i tiªu diÖt Boss ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"30"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},nExpiredTime=HetHanEventTetTay,},4,EVENT_LOG_TITLE,"VuotAiTieuDietBosssNhanDuoc"} },
	},
}
tbConfig[49] = --Ò»¸öÏ¸½Ú
{
	nId = 49,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Ngò Th¸i KÕt Tinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ngò Th¸i KÕt Tinh",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"KÕt Tinh Kim",{szName="KÕt tinh Kim",tbProp={6,1,2598,1,0,0},},1} },
		{"AddOneMaterial",	{"KÕt Tinh Méc",{szName="KÕt tinh Méc",tbProp={6,1,2599,1,0,0},},1} },
		{"AddOneMaterial",	{"KÕt Tinh Thñy",{szName="KÕt tinh Thñy",tbProp={6,1,2600,1,0,0},},1} },
		{"AddOneMaterial",	{"KÕt Tinh Háa",{szName="KÕt tinh Háa",tbProp={6,1,2601,1,0,0},},1} },
		{"AddOneMaterial",	{"KÕt Tinh Thæ",{szName="KÕt tinh Thæ",tbProp={6,1,2602,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2605,1,0,0},nExpiredTime=HetHanEventTetTay,},1,"§¹i YÕn QuÇn HiÖp n¨m 2016, nhËn ®­îc Ngò Th¸i KÕt Tinh"} },
	},
}
tbConfig[50] = 
{
	nId = 50,
	szMessageType = "ItemScript",
	szName = "Sö dông Ngò Th¸i KÕt Tinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2605,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{3, 3, 1,"default"} },
		{"ThisActivity:CheckTask",	{TSK_SuDungNTKT,2000,"ThËt ®¸ng tiÕc hiÖn t¹i sè lÇn sö dông ®· ®ñ, kh«ng thÓ sö dông ®­îc n÷a","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNTKT",	{nil} },
	},
}

tbConfig[51] = --Ò»¸öÏ¸½Ú
{
	nId = 51,
	szMessageType = "ClickNpc",
	szName = "Click vµo Chñ TiÖm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chñ TiÖm"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{nPlayerLevel,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua kÕt tinh Kim",52} },
		
	},
}

ITEM_COIN		= {szName="TiÒn §ång",tbProp={4,417,1,1,0,0},}
tbConfig[52] = 
{
	nId = 52,
	szMessageType = "CreateCompose",
	szName = "Mua KÕt Tinh Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua KÕt Tinh Kim",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
		{"AddOneMaterial",	{"TiÒn §ång",ITEM_COIN,10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="KÕt tinh Kim",tbProp={6,1,2598,1,0,0},nExpiredTime=HetHanEventTetTay,},1,EVENT_LOG_TITLE,"MuaKetTinhKim"} },
	},
}

tbConfig[53] = --Ò»¸öÏ¸½Ú
{
	nId = 53,
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