Include("\\script\\activitysys\\config\\1008\\variables.lua")
tbConfig = {}
tbConfig[1] =
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi kh�i ��ng server s� t�i Nguy�t Nhi",
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

-----��i tho�i v�i Npc
tbConfig[2] =
{
	nId = 2,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Nguy�t Nhi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nguy�t Nhi"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Xem B�ng X�p H�ng Cao Th�",3} },
		{"AddDialogOpt",	{"Xem Th� H�ng Cao Th� c�a ta",4} },
	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "nil",
	szName = "xem b�ng x�p h�ng",
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
