Include("\\script\\activitysys\\config\\1008\\variables.lua")
tbConfig = {}
tbConfig[1] =
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi khëi ®éng server sÏ t¶i NguyÖt Nhi",
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

-----§èi tho¹i víi Npc
tbConfig[2] =
{
	nId = 2,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo NguyÖt Nhi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"NguyÖt Nhi"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Xem B¶ng XÕp H¹ng Cao Thñ",3} },
		{"AddDialogOpt",	{"Xem Thø H¹ng Cao Thñ cña ta",4} },
	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "nil",
	szName = "xem b¶ng xÕp h¹ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{				
	},
	tbActition = 
	{
		{"ThisActivity:ShowTopList1",	{nil} },
	},
}
