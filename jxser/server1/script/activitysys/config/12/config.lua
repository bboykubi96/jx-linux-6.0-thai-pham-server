Include("\\script\\activitysys\\config\\12\\variables.lua")
tbConfig = {}
tbConfig[1] = 
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "click npc1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�ng Ti�u ��u"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta Mu�n H� T�ng",2} },
	},
}
tbConfig[2] = 
{
	nId = 2,
	szMessageType = "nil",
	szName = "give task",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,szLEVEL_TIP,">="} },
		{"ThisActivity:CheckCamp",		{0, szCAMP_TIP} },
		{"ThisActivity:CheckTaskDaily",	{TSKI_DAILY_COUNT,MAX_DAILY_COUNT,"H�m nay ��i hi�p �� h� t�ng 2 l�n r�i, ��i ng�y mai ti�p t�c nh�.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveTask",	{nil} },
	},
}
tbConfig[3] = 
{
	nId = 3,
	szMessageType = "nil",
	szName = "give award",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:IsWinner",		{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,szLEVEL_TIP,">="} },
		{"ThisActivity:CheckCamp",		{0, szCAMP_TIP} },
	},
	tbActition = 
	{
		{"ThisActivity:DelWinner",		{nil} },
		{"ThisActivity:AddTaskDaily",	{TSKI_DAILY_COUNT,1} },
		{"ThisActivity:GiveAward",		{nil} },
	},
}
tbConfig[4] = 
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
		{"NpcFunLib:AddDialogNpc",		{"Th��ng Bu�n T�y V�c",244,{{1,1865,2755}}} },
		{"NpcFunLib:AddDialogNpc",		{"T�ng Ti�u ��u",376,{{1,1564,2759}}} },
		
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "ClickNpc",
	szName = "click npc2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th��ng Bu�n T�y V�c"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nh�n Ph�n Th��ng Nhi�m V� H� T�ng",3} },
		{"SetDialogTitle",	{"Ti�u Xa ��u Mang ��n Giao Cho Ta, Ta S� Th��ng H�u H�nh"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "ClickNpc",
	szName = "Click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong "},
	tbCondition = 
	{
		{"ThisActivity:CheckCamp",	{0} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Gia Huy�t Ph�",7} },
	},
}
tbConfig[7] =
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "buy healing bag",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gia Huy�t Ph�",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=50000},1} },
		{"ThisActivity:CheckCamp",	{0, szCAMP_TIP} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Gia Huy�t Ph�",tbProp={6,1,3146,1,0,0},nExpiredTime=10080},1,EVENT_LOG_TITLE,"Mua Gia Huy�t Ph�"} },
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
tbConfig[9] = 
{
	nId = 9,
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
tbConfig[10] = 
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
tbConfig[11] = 
{
	nId = 11,
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
tbConfig[12] = 
{
	nId = 12,
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
tbConfig[13] =
{
	nId = 13,
	szMessageType = "nil",
	szName = "��ϸ��",
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
tbConfig[14] = 
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
tbConfig[15] = 
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
tbConfig[16] = 
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
tbConfig[17] = 
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
tbConfig[18] = 
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
tbConfig[19] = 
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
tbConfig[20] =
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
tbConfig[21] = 
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
tbConfig[22] = 
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
tbConfig[23] = 
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
