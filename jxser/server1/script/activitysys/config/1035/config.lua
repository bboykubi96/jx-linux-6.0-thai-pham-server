Include("\\script\\activitysys\\config\\1035\\variables.lua")
tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "click npc1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chó Cuéi CTT"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"NhËn thïng Gç ",9} },
		--{"AddDialogOpt", 	{"Mua Hé Thuû lÖnh (tèn 10 v¹n)", 7}},
		{"AddDialogOpt",	{"Ta muèn Hé Tèng H»ng Nga ",2} },
		{"SetDialogTitle",	{"<npc> Xin chµo ®¹i hiÖp! Th«n lµng cã <color=green>1 c©y §a thÇn kú<color> ®· gióp Ých rÊt nhiÒu cho ng­êi trong th«n.<enter>HiÖn cã nhiÒu tªn <color=green>GiÆc Cá<color> ®Õn quÊy ph¸. §¹i hiÖp h·y nhËn cña ta <color=green>1 Thïng Gç<color> sau ®ã h·y ®Õn vÞ trÝ hå n­íc (168/203) ®Ó lÊy ®Çy n­íc. Sau ®ã sö dông <color=green>1 Thïng N­íc ®Çy vµ 1 Hé Thuû LÖnh<color> gióp cho tiÓu ®Ö hé tèng vÒ lµng th× cã thÓ nhËn ®­îc phÇn th­ëng phong phó, mçi ®¹i hiÖp mçi ngµy cã thÓ tiÕp nhËn nhiÖm vô <color=red>2 lÇn,<color> trong hµnh tr×nh hé tèng, ®¹i hiÖp cÇn ph¶i b¶o vÖ sù an toµn cña <color=green>H»ng Nga<color>, nÕu <color=green>Xe Ngùa<color> bÞ chÕt, th× sÏ r¬i ra <color=green>1 Hçn Nguyªn Linh Lé<color> vµ nhiÖm vô sÏ thÊt b¹i"} },	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "nil",
	szName = "give task",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{60,szLEVEL_TIP,">="} },
		{"ThisActivity:CheckCamp",	{0, szCAMP_TIP} },
		{"PlayerFunLib:CheckTaskDaily",	{TSKI_DAILY_COUNT,MAX_DAILY_COUNT,"H«m nay ®¹i hiÖp ®· hé tèng 3 lÇn råi, ®îi ngµy mai tiÕp tôc nhÐ.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveTaskNow",	{nil} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "nil",
	szName = "give award",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:IsWinner",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{60,szLEVEL_TIP,">="} },
		{"ThisActivity:CheckCamp",	{0, szCAMP_TIP} },
	},
	tbActition = 
	{
		{"ThisActivity:StartLoaderThonLang",	{nil} },
	},
}
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "ServerStart",
	szName = "server start",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:ServerStart",	{nil} },
		{"NpcFunLib:AddDialogNpc",	{"C©y §a CTT",1452,{{100,1588,3210}}} },
		{"NpcFunLib:AddDialogNpc",	{"Chó Cuéi CTT",1448,{{100,1468,3356}}} },
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "ClickNpc",
	szName = "click npc2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C©y §a CTT"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"NhËn phÇn th­ëng nhiÖm vô hé tèng",3} },
		{"SetDialogTitle",	{"LÊy <color=green>Thïng n­íc ®Çy<color> tõ Chó Cuéi t­íi n­íc cho c©y §a, sÏ ®­îc nhËn th­ëng hËu hÜnh"} },
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "buy healing bag",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hé Thuû LÖnh 2021",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=100000},1} },
		{"PlayerFunLib:CheckTotalLevel",	{60,"default",">="} },
		{"ThisActivity:CheckCamp",	{0, szCAMP_TIP} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Hé Thuû LÖnh 2021",tbProp={6,1,30204,1,0,0},nExpiredTime=10080},1,EVENT_LOG_TITLE,"Mua Hé Thuû LÖnh"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "",
	szName = "NhËn Thïng gç ®i lÊy n­íc ë chç Chó Cuéi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"NhËn ®­îc 1 Thïng gç, hay ®i gióp Chó Cuéi lÊy n­íc ë vÞ trÝ (168/201), vµ quay trë l¹i hé tèng xe chë n­íc ®Ó cøu gióp c©y §a tr­íc cæng lµng!"},
	tbCondition = 
	{
		{"ThisActivity:CheckThungGo",	{nil} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"Hµnh trang kh«ng ®ñ, kh«ng thÓ nhËn ®¹o cô"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30202,1,0,0},nExpiredTime=1440,},1,"NhËn tõ Chó cuéi"} },	},
}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "nil",
	szName = "give task",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{60,szLEVEL_TIP,">="} },
		{"ThisActivity:CheckCamp",	{0, szCAMP_TIP} },
		{"PlayerFunLib:CheckTaskDaily",	{TSKI_DAILY_COUNT,MAX_DAILY_COUNT,"H«m nay ®¹i hiÖp ®· hé tèng 3 lÇn råi, ®îi ngµy mai tiÕp tôc nhÐ.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveTaskNowVLT",	{nil} },
	},
}
tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "ClickNpc",
	szName = "click npc4",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C©y §a VLT"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"NhËn phÇn th­ëng nhiÖm vô hé tèng",13} },
		{"SetDialogTitle",	{"LÊy hµng tõ Chó Cuéi t­íi n­íc cho c©y §a, sÏ ®­îc nhËn th­ëng hËu hÜnh"} },
	},

}
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "nil",
	szName = "give award 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:IsWinner",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{60,szLEVEL_TIP,">="} },
		{"ThisActivity:CheckCamp",	{0, szCAMP_TIP} },
	},
	tbActition = 
	{
		{"ThisActivity:StartLoaderThonLangVLT",	{nil} },
	},
}
tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[15] = --Ò»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[18] = --Ò»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[19] = --Ò»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[20] = --Ò»¸öÏ¸½Ú
{
	nId = 20,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[21] = --Ò»¸öÏ¸½Ú
{
	nId = 21,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "nil",
	szName = "nil",
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
tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
	szMessageType = "nil",
	szName = "nil",
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
