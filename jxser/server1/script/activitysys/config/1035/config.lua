Include("\\script\\activitysys\\config\\1035\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "click npc1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Cu�i CTT"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nh�n th�ng G� ",9} },
		--{"AddDialogOpt", 	{"Mua H� Thu� l�nh (t�n 10 v�n)", 7}},
		{"AddDialogOpt",	{"Ta mu�n H� T�ng H�ng Nga ",2} },
		{"SetDialogTitle",	{"<npc> Xin ch�o ��i hi�p! Th�n l�ng c� <color=green>1 c�y �a th�n k�<color> �� gi�p �ch r�t nhi�u cho ng��i trong th�n.<enter>Hi�n c� nhi�u t�n <color=green>Gi�c C�<color> ��n qu�y ph�. ��i hi�p h�y nh�n c�a ta <color=green>1 Th�ng G�<color> sau �� h�y ��n v� tr� h� n��c (168/203) �� l�y ��y n��c. Sau �� s� d�ng <color=green>1 Th�ng N��c ��y v� 1 H� Thu� L�nh<color> gi�p cho ti�u �� h� t�ng v� l�ng th� c� th� nh�n ���c ph�n th��ng phong ph�, m�i ��i hi�p m�i ng�y c� th� ti�p nh�n nhi�m v� <color=red>2 l�n,<color> trong h�nh tr�nh h� t�ng, ��i hi�p c�n ph�i b�o v� s� an to�n c�a <color=green>H�ng Nga<color>, n�u <color=green>Xe Ng�a<color> b� ch�t, th� s� r�i ra <color=green>1 H�n Nguy�n Linh L�<color> v� nhi�m v� s� th�t b�i"} },	},
}
tbConfig[2] = --һ��ϸ��
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
		{"PlayerFunLib:CheckTaskDaily",	{TSKI_DAILY_COUNT,MAX_DAILY_COUNT,"H�m nay ��i hi�p �� h� t�ng 3 l�n r�i, ��i ng�y mai ti�p t�c nh�.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveTaskNow",	{nil} },
	},
}
tbConfig[3] = --һ��ϸ��
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
tbConfig[4] = --һ��ϸ��
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
		{"NpcFunLib:AddDialogNpc",	{"C�y �a CTT",1452,{{100,1588,3210}}} },
		{"NpcFunLib:AddDialogNpc",	{"Ch� Cu�i CTT",1448,{{100,1468,3356}}} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "ClickNpc",
	szName = "click npc2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�y �a CTT"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nh�n ph�n th��ng nhi�m v� h� t�ng",3} },
		{"SetDialogTitle",	{"L�y <color=green>Th�ng n��c ��y<color> t� Ch� Cu�i t��i n��c cho c�y �a, s� ���c nh�n th��ng h�u h�nh"} },
	},
}
tbConfig[6] = --һ��ϸ��
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
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "buy healing bag",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H� Thu� L�nh 2021",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=100000},1} },
		{"PlayerFunLib:CheckTotalLevel",	{60,"default",">="} },
		{"ThisActivity:CheckCamp",	{0, szCAMP_TIP} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="H� Thu� L�nh 2021",tbProp={6,1,30204,1,0,0},nExpiredTime=10080},1,EVENT_LOG_TITLE,"Mua H� Thu� L�nh"} },
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
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "",
	szName = "Nh�n Th�ng g� �i l�y n��c � ch� Ch� Cu�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nh�n ���c 1 Th�ng g�, hay �i gi�p Ch� Cu�i l�y n��c � v� tr� (168/201), v� quay tr� l�i h� t�ng xe ch� n��c �� c�u gi�p c�y �a tr��c c�ng l�ng!"},
	tbCondition = 
	{
		{"ThisActivity:CheckThungGo",	{nil} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H�nh trang kh�ng ��, kh�ng th� nh�n ��o c�"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30202,1,0,0},nExpiredTime=1440,},1,"Nh�n t� Ch� cu�i"} },	},
}
tbConfig[10] = --һ��ϸ��
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
tbConfig[11] = --һ��ϸ��
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
		{"PlayerFunLib:CheckTaskDaily",	{TSKI_DAILY_COUNT,MAX_DAILY_COUNT,"H�m nay ��i hi�p �� h� t�ng 3 l�n r�i, ��i ng�y mai ti�p t�c nh�.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveTaskNowVLT",	{nil} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "ClickNpc",
	szName = "click npc4",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�y �a VLT"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nh�n ph�n th��ng nhi�m v� h� t�ng",13} },
		{"SetDialogTitle",	{"L�y h�ng t� Ch� Cu�i t��i n��c cho c�y �a, s� ���c nh�n th��ng h�u h�nh"} },
	},

}
tbConfig[13] = --һ��ϸ��
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
tbConfig[14] = --һ��ϸ��
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
tbConfig[15] = --һ��ϸ��
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
tbConfig[16] = --һ��ϸ��
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
tbConfig[17] = --һ��ϸ��
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
tbConfig[18] = --һ��ϸ��
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
tbConfig[19] = --һ��ϸ��
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
tbConfig[20] = --һ��ϸ��
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
tbConfig[21] = --һ��ϸ��
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
tbConfig[22] = --һ��ϸ��
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
tbConfig[23] = --һ��ϸ��
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
