tbConfig = {}
tbConfig[1] = --Add NPC
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi Kh�i ��ng Server S� T�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th� May Ho�ng Kim"},
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
	tbMessageParam = {"Th� May Ho�ng Kim"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Shop Thi�n Th�ch",3} },		
	--	{"AddDialogOpt",	{"N�ng C�p Phi Phong",18} },
	--	{"AddDialogOpt",	{"Tr�ng Luy�n Phi Phong",9} },
	},
}
tbConfig[3] = 
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C�c H� H�y Ch�n Lo�i Trang S�c Mu�n N�ng C�p"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"��i Duy�n Qu�n + Tu� Thanh (15 Ng�y)",4} },
		{"AddDialogOpt",	{"��i C�n Kh�n Song Tuy�t B�i",5} },
		{"AddDialogOpt",	{"��i C�n Kh�n Song Tuy�t B�i 7 Ng�y",6} },
	--	{"AddDialogOpt",	{"[Xuy�n Y Ph� Gi�p C�p 7] => [Xuy�n Y Ph� Gi�p C�p 8]",6} },
	--	{"AddDialogOpt",	{"[Xuy�n Y Ph� Gi�p C�p 8] => [Xuy�n Y Ph� Gi�p C�p 9]",7} },
	--	{"AddDialogOpt",	{"[Xuy�n Y Ph� Gi�p C�p 9] => [Xuy�n Y Ph� Gi�p C�p 10]",8} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i Nh�n C�n Kh�n(15 Ng�y)",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 9",{tbProp={4,1325,1,1,0,0},},100 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=15*24*60,tbProp={0,208},},1,"[N�ng C�p Ngo�i Trang] [Duy�n Qu�n + Tu� Thanh]"} },
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=15*24*60,tbProp={0,209},},1,"[N�ng C�p Ngo�i Trang] [Duy�n Qu�n + Tu� Thanh]"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i C�n Kh�n Song Tuy�t B�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 9",{tbProp={4,1325,1,1,0,0},},100 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2219,1,0,0},},1,"[N�ng C�p Ngo�i Trang] [C�n Kh�n Song Tuy�t B�i"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i C�n Kh�n Song Tuy�t B�i 7 Ng�y",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 1",{tbProp={4,1317,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 2",{tbProp={4,1318,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 3",{tbProp={4,1319,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 4",{tbProp={4,1320,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 5",{tbProp={4,1321,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 6",{tbProp={4,1322,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 7",{tbProp={4,1323,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 8",{tbProp={4,1324,1,1,0,0},},25 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 9",{tbProp={4,1325,1,1,0,0},},25 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4377,1,0,0},},1,"[N�ng C�p Ngo�i Trang] [C�n Kh�n Song Tuy�t B�i 7 Ng�y"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Xuy�n Y Ph� Gi�p C�p 9",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Xuy�n Y Ph� Gi�p C�p 8",{tbProp={0,3995},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},5999} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2999} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3996},},1,"[N�ng C�p Ngo�i Trang] [Xuy�n Y Ph� Gi�p C�p 9]"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Xuy�n Y Ph� Gi�p C�p 10",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Xuy�n Y Ph� Gi�p C�p 9",{tbProp={0,3996},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},9999} },
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},150} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3997},},1,"[N�ng C�p Ngo�i Trang] [Xuy�n Y Ph� Gi�p C�p 10]"} },
	},
}
tbConfig[9] = 
{
	nId = 9,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C�c H� H�y Ch�n Lo�i Ng� H�nh �n Mu�n N�ng C�p"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Tr�ng Luy�n Phi Phong C�p 1",10} },
		{"AddDialogOpt",	{"Tr�ng Luy�n Phi Phong C�p 2",11} },
		--{"AddDialogOpt",	{"Tr�ng Luy�n Phi Phong C�p 3",12} },
		--{"AddDialogOpt",	{"Tr�ng Luy�n Phi Phong C�p 4",13} },
	--	{"AddDialogOpt",	{"[Ng� H�nh �n C�p 9] => [Ng� H�nh �n C�p 10]",14} },
	----	{"AddDialogOpt",	{"[Ng� H�nh �n C�p 10] => [T�n Nh�m �n Gi�m H�]",15} },
	--	{"AddDialogOpt",	{"[T�n Nh�m �n Gi�m H�] => [T�n Nh�m �n Gi�m Trung]",16} },
	---	{"AddDialogOpt",	{"[T�n Nh�m �n Gi�m Trung => [T�n Nh�m �n Gi�m Th��ng]",17} },
	},
}
tbConfig[10] = 
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ng� H�nh �n C�p 6",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Phi Phong C�p 1",{tbProp={0,3467},nQuality=1},1} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3467},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong C�p 1]"} },
	},
}
tbConfig[11] = 
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong C�p 2",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Phi Phong C�p 2",{tbProp={0,3468},nQuality=1},1} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3468},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong C�p 2]"} },
	},
}
tbConfig[12] = 
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong C�p 3",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Phi Phong C�p 1",{tbProp={0,3469},nQuality=1},1} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3469},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong C�p 3]"} },
	},
}
tbConfig[13] = 
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong C�p 4",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Phi Phong C�p 4",{tbProp={0,3470},nQuality=1},1} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3470},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong C�p 4]"} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ng� H�nh �n C�p 10",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Ng� H�nh �n C�p 9",{tbProp={0,3958},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},15000} },
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3959},},1,"[N�ng C�p Ngo�i Trang] [Ng� H�nh �n C�p 10]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�n Nh�m �n Gi�m H�",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Ng� H�nh �n C�p 10",{tbProp={0,3959},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},18000} },
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},10000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3960},},1,"[N�ng C�p Ngo�i Trang] [T�n Nh�m �n Gi�m H�]"} },
	},
}
tbConfig[16] = 
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�n Nh�m �n Gi�m Trung",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"T�n Nh�m �n Gi�m H�",{tbProp={0,3960},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},21000} },
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},20000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3961},},1,"[N�ng C�p Ngo�i Trang] [T�n Nh�m �n Gi�m Trung]"} },
	},
}
tbConfig[17] = 
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�n Nh�m �n Gi�m Th��ng",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"T�n Nh�m �n Gi�m trung",{tbProp={0,3961},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},24000} },
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},5000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3962},},1,"[N�ng C�p Ngo�i Trang] [T�n Nh�m �n Gi�m Th��ng]"} },
	},
}
tbConfig[18] = 
{
	nId = 18,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C�c H� H�y Ch�n Lo�i Trang S�c Mu�n N�ng C�p"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"[Phi Phong C�p 1]",19} },
		{"AddDialogOpt",	{"[Phi Phong C�p 1] => [Phi Phong C�p 2]",20} },
	--	{"AddDialogOpt",	{"[Phi Phong C�p 2] => [Phi Phong C�p 3]",21} },
	--	{"AddDialogOpt",	{"[Phi Phong C�p 3] => [Phi Phong C�p 4]",22} },
	--	{"AddDialogOpt",	{"[Phi Phong K�nh Thi�n] => [Phi Phong V� C�c]",23} },
	--	{"AddDialogOpt",	{"[Phi Phong V� C�c] => [Phi Phong + 3 K� N�ng]",24} },
	},
}
tbConfig[19] = 
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong C�p 1",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
	--	{"AddOneMaterial",	{"Phi Phong K�nh L�i",{tbProp={0,3932},nQuality=1},1} },
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 9",{tbProp={4,1325,1,1,0,0},},100 }},

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3467},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong C�p 1]"} },
	},
}
tbConfig[20] = 
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong C�p 2",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Phi Phong C�p 1",{tbProp={0,3467},nQuality=1},1} },
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 9",{tbProp={4,1325,1,1,0,0},},100 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3468},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong C�p 2]"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong C�p 3",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
	--	{"AddOneMaterial",	{"Phi Phong Ph� Quang",{tbProp={0,3468},nQuality=1},1} },
		{"AddOneMaterial",	{"Phi Phong C�p 2",{tbProp={0,3468},nQuality=1},1} },
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 9",{tbProp={4,1325,1,1,0,0},},100 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3469},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong C�p 3]"} },
	},
}
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong C�p 4",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Phi Phong C�p 4",{tbProp={0,3469},nQuality=1},1} },
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 1",{tbProp={4,1317,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 2",{tbProp={4,1318,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 3",{tbProp={4,1319,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 4",{tbProp={4,1320,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 5",{tbProp={4,1321,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 6",{tbProp={4,1322,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 7",{tbProp={4,1323,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 8",{tbProp={4,1324,1,1,0,0},},100 }},
		{"AddOneMaterial",	{"M�nh Thi�n Th�ch S� 9",{tbProp={4,1325,1,1,0,0},},100 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3470},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong C�p 4]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong V� C�c",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Phi Phong K�nh Thi�n",{tbProp={0,3936},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},15000} },
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3937},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong V� C�c]"} },
	},
}
tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong + 3 K� N�ng",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Phi Phong V� C�c",{tbProp={0,3937},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},18000} },
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},5000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,5980},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong + 3 K� N�ng]"} },
	},
}
