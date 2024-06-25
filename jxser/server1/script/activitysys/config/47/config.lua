tbConfig = {}
tbConfig[1] = --Add NPC
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi Kh�i ��ng Server S� T�i Npc",
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
tbConfig[2] = --��i tho�i
{
	nId = 2,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng L�o Nu�i Ng�a"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"[Phi�n V�] => [B�ch H�]",3} },	
--		{"AddDialogOpt",	{"[Phi�n V�] => [X�ch Long C�u Truy�n Thuy�t]",4} },
--		{"AddDialogOpt",	{"[X�ch Long C�u Truy�n Thuy�t] => [S� T� Truy�n Thuy�t]",5} },
	--{"AddDialogOpt",	{"[S� T� Truy�n Thuy�t Ho�c C�p] => [Ng�a 1 Skill  Truy�n Thuy�t]",6} },
---	{"AddDialogOpt",	{"[Ng� Phong Truy�n Thuy�t] => [H�n Huy�t Truy�n Thuy�t]",7} },
	},
}
tbConfig[3] = 
{
	nId = 3,
	szMessageType = "CreateCompose",
	szName = "Ng��i Nu�i D�y Th�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"S� T� Ho�ng Kim",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"C�c H� Kh�ng �� 10 � Tr�ng H�y S�p X�p L�i H�nh Trang"} },
        -- {"AddOneMaterial",	{"Phi�n V�",{tbProp={0,9377},nQuality=1},1} },
        {"AddOneMaterial",	{"Phi�n V�",{tbProp={0,10,7,10},},1} },
		{"AddOneMaterial",	{"Thu�n th� quy�n",{tbProp={6,1,8010,1},},2} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},1500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,9380},},1,"[N�ng C�p Th�n Th�] [B�ch H�]"} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "Ng��i Nu�i D�y Th�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"x�ch long c�u",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"C�c H� Kh�ng �� 10 � Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"phi�n v� Truy�n Thuy�t",{tbProp={0,4947},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},4000} },
	         {"AddOneMaterial",	{"M� b�i -x�ch long c�u",{tbProp={6,1,30214,1,0,0},},1} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},3000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,4948},},1,"[N�ng C�p Th�n Th�] [x�ch long c�u]"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Ng��i Nu�i D�y Th�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"S� T� Truy�n Thuy�t",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"C�c H� Kh�ng �� 10 � Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"x�ch long c�u Truy�n Thuy�t",{tbProp={0,4948},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},4000} },
	         {"AddOneMaterial",	{"M� b�i -S� T� ",{tbProp={6,1,30215,1,0,0},},1} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},3000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,4949},},1,"[N�ng C�p Th�n Th�] [S� T� Truy�n Thuy�t]"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Ng��i Nu�i D�y Th�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ng�a 1 skill Truy�n Thuy�t",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"C�c H� Kh�ng �� 10 � Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"S� T� Ho�c C�p Truy�n Thuy�t",{tbProp={0,{2840,3109}},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},5000} },
	         {"AddOneMaterial",	{"M� b�i - L�C �� ",{tbProp={6,1,30219,1,0,0},},1} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},3000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,4912},},1,"[N�ng C�p Th�n Th�] [Ng�a 1 skill Truy�n Thuy�t]"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Ng��i Nu�i D�y Th�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�n Huy�t Truy�n Thuy�t",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"C�c H� Kh�ng �� 10 � Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Ng� Phong Truy�n Thuy�t",{tbProp={0,3945},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},6000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},3000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3946},},1,"[N�ng C�p Th�n Th�] [H�n Huy�t Truy�n Thuy�t]"} },
	},
}
