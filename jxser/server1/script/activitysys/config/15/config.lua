Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")


-------局部变量定义 开始---------
-------局部变量定义 结束---------

local tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "H祅g rong b竛 v� b鉵g ho祅g kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H祅g rong"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua v� b鉵g ho祅g kim",2} },
	},
}
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "CreateCompose",
	szName = "H祅g rong b竛 v� b鉵g ho祅g kim_2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V� b鉵g ho祅g kim",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng﹏ lng",{nJxb=1},30000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2358,1,0,0},nExpiredTime=20100628,},1,"[WC 2010]Gh衟 th祅h v� b鉵g ho祅g kim"} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "T鑞g kim cao c蕄 sinh ra t骾 nguy猲 li謚_th緉g",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {1,3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},80,"[WC 2010]T鑞g kim cho ra t骾 nguy猲 li謚"} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "T鑞g kim cao c蕄 cho ra t骾 nguy猲 li謚_H遖",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {0,3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},80,"[WC 2010]T鑞g kim cho ra t骾 nguy猲 li謚"} },
	},
}
tbConfig[5] = --一个细节
{
	nId = 5,
	szMessageType = "FinishSongJin",
	szName = "T鑞g kim cao c蕄 cho ra t骾 nguy猲 li謚_Thua",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-1,3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},80,"[WC 2010]T鑞g kim cho ra t骾 nguy猲 li謚"} },
	},
}
tbConfig[6] = --一个细节
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "T鑞g kim cao c蕄 cho ra t骾 nguy猲 li謚",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"20"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{90,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},80,"[WC 2010]Vt 秈 cho ra t骾 nguy猲 li謚"} },
	},
}
tbConfig[7] = --一个细节
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Phong L╪g ч cho ra t骾 nguy猲 li謚",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},200,"[WC 2010]Phong L╪g ч cho ra t骾 nguy猲 li謚"} },
	},
}
tbConfig[8] = --一个细节
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Nhi謒 v� s竧 th� cho ra t骾 nguy猲 li謚",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},200,"[WC 2010]Nhi謒 v� s竧 th� cho ra t骾 nguy猲 li謚"} },
	},
}
tbConfig[9] = --一个细节
{
	nId = 9,
	szMessageType = "ItemScript",
	szName = "S� d鬾g t骾 nguy猲 li謚",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2360,1,0,0},}},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{63,1,"[WC 2010]S� d鬾g t骾 nguy猲 li謚"} },
	},
}
tbConfig[10] = --一个细节
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "T筰 l� quan h頿 th祅h b鉵g da",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C竎 h� mu鑞 gh衟 th祅h lo筰 b鉵g n祇?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Gh衟 th祅h b鉵g da",11} },
		{"AddDialogOpt",	{"Gh衟 th祅h b鉵g ho祅g kim",12} },
		{"AddDialogOpt",	{"Gh衟 th祅h b鉵g b筩h kim",13} },
	},
}
tbConfig[11] = --一个细节
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "Gh衟 th祅h b鉵g da",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B鉵g da",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ru閠 cao su",{tbProp={6,1,2361,1,0,0},},1} },
		{"AddOneMaterial",	{"Ch蕋 d蝟",{tbProp={6,1,2362,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2363,1,0,0},nExpiredTime=20100628,},1,"[WC 2010]Gh衟 th祅h b鉵g da"} },
	},
}
tbConfig[12] = --一个细节
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Gh衟 th祅h b鉵g ho祅g kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B鉵g ho祅g kim",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ru閠 cao su",{tbProp={6,1,2361,1,0,0},},1} },
		{"AddOneMaterial",	{"Ch蕋 d蝟",{tbProp={6,1,2362,1,0,0},},1} },
		{"AddOneMaterial",	{"V� b鉵g ho祅g kim",{tbProp={6,1,2358,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2364,1,0,0},nExpiredTime=20100628,},1,"[WC 2010]Gh衟 th祅h b鉵g ho祅g kim"} },
	},
}
tbConfig[13] = --一个细节
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Gh衟 th祅h b鉵g b筩h kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B鉵g b筩h kim",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ru閠 cao su",{tbProp={6,1,2361,1,0,0},},1} },
		{"AddOneMaterial",	{"Ch蕋 d蝟",{tbProp={6,1,2362,1,0,0},},1} },
		{"AddOneMaterial",	{"V� b鉵g b筩h kim",{tbProp={6,1,2359,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2365,1,0,0},nExpiredTime=20100628,},1,"[WC 2010]Gh衟 th祅h b鉵g b筩h kim"} },
	},
}
tbConfig[14] = --一个细节
{
	nId = 14,
	szMessageType = "ItemScript",
	szName = "S� d鬾g b鉵g da",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2363,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� s� d鬾g",">="} },
		{"ThisActivity:CheckTask",	{1,500,"S� d鬾g b鉵g da nhi襲 nh蕋 ch� 頲 500000000 kinh nghi謒","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{1000000,0,"[WC 2010]S� d鬾g b鉵g da nh薾 頲 kinh nghi謒"} },
		{"ThisActivity:AddTask",	{1,1} },
	},
}
tbConfig[15] = --一个细节
{
	nId = 15,
	szMessageType = "ItemScript",
	szName = "S� d鬾g b鉵g ho祅g kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2364,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� s� d鬾g",">="} },
		{"ThisActivity:CheckTask",	{2,4000,"S� d鬾g b鉵g ho祅g kim v� b筩h kim nhi襲 nh蕋 t鎛g c閚g ch� 頲 4000000000 kinh nghi謒","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{2000000,0,"[WC 2010]S� d鬾g b鉵g ho祅g kim nh薾 頲 kinh nghi謒"} },
		{"ThisActivity:AddTask",	{2,2} },
	},
}
tbConfig[16] = --一个细节
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "S� d鬾g b鉵g b筩h kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2365,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� s� d鬾g",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H祅h trang ph秈 tr鑞g 10 � tr� l猲 m韎 c� th� s� d鬾g b鉵g b筩h kim"} },
		{"ThisActivity:CheckTask",	{2,4000,"S� d鬾g b鉵g ho祅g kim v� b筩h kim nhi襲 nh蕋 t鎛g c閚g ch� 頲 4000000000 kinh nghi謒","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{64,1,"[WC 2010]S� d鬾g b鉵g b筩h kim nh薾 頲 v藅 ph萴 thng"} },
		{"ThisActivity:ExecActivityDetail",	{17} },
	},
}
tbConfig[17] = --一个细节
{
	nId = 17,
	szMessageType = "nil",
	szName = "S� d鬾g b鉵g b筩h kim_kinh nghi謒",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{2,4000,"S� d鬾g b鉵g ho祅g kim v� b筩h kim nhi襲 nh蕋 t鎛g c閚g ch� 頲 4000000000 kinh nghi謒","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{65,1,"[WC 2010]S� d鬾g b鉵g b筩h kim nh薾 頲 thng kinh nghi謒"} },
	},
}
tbConfig[18] = --一个细节
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "S� d鬾g B� Huy誸 Кn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2366,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{3,1000,"S� d鬾g B� Huy誸 Кn nhi襲 nh蕋 ch� 頲 1000000000 kinh nghi謒","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[WC 2010]S� d鬾g b� huy誸 n t╪g kinh nghi謒"} },
		{"ThisActivity:AddTask",	{3,10} },
	},
}
tbConfig[19] = --一个细节
{
	nId = 19,
	szMessageType = "CreateDialog",
	szName = "L� quan gh衟 trang b�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Чi hi謕 mu鑞 gh衟 th祅h lo筰 trang b� n祇?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Gh衟 th祅h Vinh Di謚 Chi Y",20} },
		{"AddDialogOpt",	{"Gh衟t h祅h Tinh Chu萵 Chi Ngoa",21} },
	},
}
tbConfig[20] = --一个细节
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "Gh衟 th祅h Vinh Di謚 Chi Y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Vinh Di謚 Chi Y",0,2,3,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ti觰 C莡 chi y",{tbProp={6,1,2367,1,0,0},},99} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,214},nQuality=1,nExpiredTime=86400,},1,"[WC 2010]Gh衟 th祅h Vinh Di謚 Chi Y"} },
	},
}
tbConfig[21] = --一个细节
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Gh衟t h祅h Tinh Chu萵 Chi Ngoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tinh Chu萵 Chi Ngoa",0,2,2,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ti觰 t骳 chi ngoa",{tbProp={6,1,2368,1,0,0},},99} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,215},nQuality=1,nExpiredTime=86400,},1,"[WC 2010]Gh衟 th祅h Tinh Chu萵 Chi Ngoa"} },
	},
}
tbConfig[22] = --一个细节
{
	nId = 22,
	szMessageType = "ClickNpc",
	szName = "L� quan gi韎 thi謚 ho箃 ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L� Quan"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ho箃 ng ch祇 m鮪g WORLDCUP",23} },
	},
}
tbConfig[23] = --一个细节
{
	nId = 23,
	szMessageType = "CreateDialog",
	szName = "L� quan gi韎 thi謚 ho箃 ng_2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch祇 m鮪g ng祔 h閕 b鉵g  l韓 nh蕋 h祅h tinh, trong kho秐g 11/06/2010 � 0h ng祔 28/06/2010, qu� ng o c� th� tham gia c竎 ho箃 ng v韎 nhi襲 ph莕 thng h蕄 d蒼"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta n  gh衟 b鉵g da",10} },
		{"AddDialogOpt",	{"Ta n gh衟 trang b�",19} },
	},
}
G_ACTIVITY:RegisteActivityDetailConfig(15, tbConfig)
