tbConfig = {}
tbConfig[1] = --��i tho�i
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th� R�n Ho�ng Kim"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"N�ng C�p Trang B�",2} },	
		-- {"AddDialogOpt",	{"N�ng C�p L�nh B�i",25} },	
	},
}
tbConfig[2] = 
{
	nId = 2,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�c H� Mu�n N�ng C�p Trang B� Lo�i N�o"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	-- {"AddDialogOpt",	{"��i B�o R��ng Di�u D��ng",3} },
	--{"AddDialogOpt",	{"��i B�o R��ng Minh Ph��ng",14} },
	-- {"AddDialogOpt",	{"��i B�o R��ng Anh H�o",28} },
	{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng (Li�n)",40} },
	{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng (Kh�i)",41} },
	{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng (Th��ng Gi�i)",42} },
	{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng (H� Uy�n)",43} },
	{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng (Y�u ��i)",44} },
	{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng (Kh�i)",45} },
	{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng (V� Kh�)",46} },
	{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng (H�i)",47} },
	{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng (B�i)",48} },
	{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng (H� Gi�i)",49} },

	},
}

tbConfig[3] = 
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�c H� H�y Ch�n Lo�i Trang B� Mu�n ��i"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"B�o R��ng Di�u D��ng Li�n",4} },
		{"AddDialogOpt",	{"B�o R��ng Di�u D��ng Kh�i",5} },
		{"AddDialogOpt",	{"B�o R��ng Di�u D��ng Th��ng Gi�i",6} },
		{"AddDialogOpt",	{"B�o R��ng Di�u D��ng H� Uy�n",7} },
		{"AddDialogOpt",	{"B�o R��ng Di�u D��ng Y�u ��i",8} },
		{"AddDialogOpt",	{"B�o R��ng Di�u D��ng Kh�i",9} },
		{"AddDialogOpt",	{"B�o R��ng Di�u D��ng V� Kh�",10} },
		{"AddDialogOpt",	{"B�o R��ng Di�u D��ng H�i",11} },
		{"AddDialogOpt",	{"B�o R��ng Di�u D��ng B�i",12} },
		{"AddDialogOpt",	{"B�o R��ng Di�u D��ng H� Gi�i",13} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Di�u D��ng Li�n",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Di�u D��ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={1,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6044,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Di�u D��ng Li�n]"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Di�u D��ng Kh�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Di�u D��ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={2,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6045,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Di�u D��ng Kh�i]"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Di�u D��ng Th��ng Gi�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Di�u D��ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={3,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6046,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Di�u D��ng Th��ng Gi�i]"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Di�u D��ng H� Uy�n",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Di�u D��ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={4,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6047,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Di�u D��ng H� Uy�n]"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Di�u D��ng Y�u ��i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Di�u D��ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={5,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6048,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Di�u D��ng Y�u ��i]"} },
	},
}
tbConfig[9] = 
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Di�u D��ng Kh�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Di�u D��ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={6,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6049,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Di�u D��ng Kh�i]"} },
	},
}
tbConfig[10] = 
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Di�u D��ng V� Kh�",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Di�u D��ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={7,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6050,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Di�u D��ng V� Kh�]"} },
	},
}
tbConfig[11] = 
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Di�u D��ng H�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Di�u D��ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={8,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6051,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Di�u D��ng H�i]"} },
	},
}
tbConfig[12] = 
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Di�u D��ng B�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Di�u D��ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={9,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6052,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Di�u D��ng B�i]"} },
	},
}
tbConfig[13] = 
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Di�u D��ng H� Gi�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Di�u D��ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={10,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6053,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Di�u D��ng H� Gi�i]"} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateDialog",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�c H� H�y Ch�n Lo�i Trang B� Mu�n ��i"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng Li�n",15} },
		{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng Kh�i",16} },
		{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng Th��ng Gi�i",17} },
		{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng H� Uy�n",18} },
		{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng Y�u ��i",19} },
		{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng Kh�i",20} },
		{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng V� Kh�",21} },
		{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng H�i",22} },
		{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng B�i",23} },
		{"AddDialogOpt",	{"B�o R��ng Minh Ph��ng H� Gi�i",24} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Minh Ph��ng Li�n",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"Minh Ph��ng L�nh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={1,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,5996,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Minh Ph��ng Li�n]"} },
	},
}
tbConfig[16] = 
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Minh Ph��ng Kh�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"Minh Ph��ng L�nh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={2,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,5997,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Minh Ph��ng Kh�i]"} },
	},
}
tbConfig[17] = 
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Minh Ph��ng Th��ng Gi�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"Minh Ph��ng L�nh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={3,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,5998,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Minh Ph��ng Th��ng Gi�i]"} },
	},
}
tbConfig[18] = 
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Minh Ph��ng H� Uy�n",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"Minh Ph��ng L�nh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={4,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,5999,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Minh Ph��ng H� Uy�n]"} },
	},
}
tbConfig[19] = 
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Minh Ph��ng Y�u ��i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"Minh Ph��ng L�nh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={5,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6000,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Minh Ph��ng Y�u ��i]"} },
	},
}
tbConfig[20] = 
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Minh Ph��ng Kh�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"Minh Ph��ng L�nh",{tbProp={6,1,5438,1,0,0},},5} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={6,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6001,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Minh Ph��ng Kh�i]"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Minh Ph��ng V� Kh�",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"Minh Ph��ng L�nh",{tbProp={6,1,5438,1,0,0},},5} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={7,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6002,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Minh Ph��ng V� Kh�]"} },
	},
}
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Minh Ph��ng H�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"Minh Ph��ng L�nh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={8,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6003,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Minh Ph��ng H�i]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Minh Ph��ng B�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"Minh Ph��ng L�nh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={9,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6004,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Minh Ph��ng B�i]"} },
	},
}
tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Minh Ph��ng H� Gi�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"Minh Ph��ng L�nh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={10,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6005,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Minh Ph��ng H� Gi�i]"} },
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateDialog",
	szName = "Ch�c N�ng N�ng C�p",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�c H� H�y Ch�n Lo�i L�nh B�i Mu�n N�ng C�p"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"N�ng C�p L�nh B�i Nguy�t Khuy�t",26} },
	{"AddDialogOpt",	{"N�ng C�p L�nh B�i Di�u D��ng",27} },
   {"AddDialogOpt",	{"N�ng C�p L�nh B�i Anh H�o",39} },
	},
}

tbConfig[26] = 
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh B�i Nguy�t Khuy�t",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		       {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},500} },
                  {"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5441,1,0,0},},1,"[Ch�c N�ng ��i L�nh B�i] [L�nh B�i Nguy�t Khuy�t]"} },
	},
}

tbConfig[27] = 
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh B�i Di�u D��ng",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H�y �� Tr�ng 30 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Nguy�t Khuy�t",{tbProp={6,1,5441,1,0,0},},10} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},3000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5442,1,0,0},},1,"[Ch�c N�ng ��i L�nh B�i] [L�nh B�i Di�u D��ng]"} },
	},
}
tbConfig[28] = 
{
	nId = 28,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�c H� H�y Ch�n Lo�i Trang B� Mu�n ��i"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"B�o R��ng Anh H�o Li�n",29} },
		{"AddDialogOpt",	{"B�o R��ng Anh H�o Kh�i",30} },
		{"AddDialogOpt",	{"B�o R��ng Anh H�o Th��ng Gi�i",31} },
		{"AddDialogOpt",	{"B�o R��ng Anh H�o H� Uy�n",32} },
		{"AddDialogOpt",	{"B�o R��ng Anh H�o Y�u ��i",33} },
		{"AddDialogOpt",	{"B�o R��ng Anh H�o Kh�i",34} },
		{"AddDialogOpt",	{"B�o R��ng Anh H�o V� Kh�",35} },
		{"AddDialogOpt",	{"B�o R��ng Anh H�o H�i",36} },
		{"AddDialogOpt",	{"B�o R��ng Anh H�o B�i",37} },
		{"AddDialogOpt",	{"B�o R��ng Anh H�o H� Gi�i",38} },
	},
}
tbConfig[29] = 
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Anh H�o Li�n",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 5 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Anh H�o",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh H�o Th�ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={1,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6056,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Anh H�o Li�n]"} },
	},
}
tbConfig[30] = 
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Anh H�o Kh�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 5 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Anh H�o",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh H�o Th�ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={2,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6057,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Anh H�o Kh�i]"} },
	},
}
tbConfig[31] = 
{
	nId = 31,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Anh H�o Th��ng Gi�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 5 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Anh H�o",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh H�o Th�ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={3,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6058,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Anh H�o Th��ng Gi�i]"} },
	},
}
tbConfig[32] = 
{
	nId = 32,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Anh H�o H� Uy�n",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 5 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Anh H�o",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh H�o Th�ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={4,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6059,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Anh H�o H� Uy�n]"} },
	},
}
tbConfig[33] = 
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Anh H�o Y�u ��i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 5 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Anh H�o",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh H�o Th�ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={5,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6060,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Anh H�o Y�u ��i]"} },
	},
}
tbConfig[34] = 
{
	nId = 34,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Anh H�o Kh�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 5 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Anh H�o",{tbProp={6,1,5443,1,0,0},},15} },
		{"AddOneMaterial",	{"Anh H�o Th�ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={6,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6061,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Anh H�o Kh�i]"} },
	},
}

tbConfig[35] = 
{
	nId = 35,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Anh H�o V� Kh�",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 5 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Anh H�o",{tbProp={6,1,5443,1,0,0},},15} },
		{"AddOneMaterial",	{"Anh H�o Th�ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={7,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6062,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Anh H�o V� Kh�]"} },
	},
}
tbConfig[36] = 
{
	nId = 36,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Anh H�o H�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 5 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Anh H�o",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh H�o Th�ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={8,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6063,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Anh H�o H�i]"} },
	},
}
tbConfig[37] = 
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Anh H�o B�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 5 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Anh H�o",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh H�o Th�ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={9,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6064,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Anh H�o B�i]"} },
	},
}
tbConfig[38] = 
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�o R��ng Anh H�o H� Gi�i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 5 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh B�i Anh H�o",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh H�o Th�ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={10,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6065,1,0,0},},1,"[Ch�c N�ng ��i Trang B�] [B�o R��ng Anh H�o H� Gi�i]"} },
	},
}
tbConfig[39] = 
{
	nId = 39,
	szMessageType = "CreateCompose",
	szName = "Ch�c N�ng ��i",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"L�nh B�i Anh H�o",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"L�nh Di�u D��ng",{tbProp={6,1,5442,1,0,0},},10} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1},},5000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},10000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5443,1,0,0},},1,"[Ch�c N�ng ��i L�nh B�i] [L�nh B�i L�nh B�i Anh H�o]"} },
	},
}


-- B�o R��ng Minh Ph��ng (Li�n)	6	1	5680	\spr\item\script\item_baibaoxiang.spr	387	1	1	S� D�ng Nh�n ���c Trang B� Minh Ph��ng Ng�u Nhi�n Thu�c T�nh - M�n Ph�i C� Th� Mang ��n Th� R�n Th�n B� Ki�m ��nh Theo H��ng M�n Ph�i �� ���c Ch�n.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B�o R��ng Minh Ph��ng (Kh�i)	6	1	5681	\spr\item\script\item_baibaoxiang.spr	387	1	1	S� D�ng Nh�n ���c Trang B� Minh Ph��ng Ng�u Nhi�n Thu�c T�nh - M�n Ph�i C� Th� Mang ��n Th� R�n Th�n B� Ki�m ��nh Theo H��ng M�n Ph�i �� ���c Ch�n.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B�o R��ng Minh Ph��ng (Th��ng Gi�i)	6	1	5682	\spr\item\script\item_baibaoxiang.spr	387	1	1	S� D�ng Nh�n ���c Trang B� Minh Ph��ng Ng�u Nhi�n Thu�c T�nh - M�n Ph�i C� Th� Mang ��n Th� R�n Th�n B� Ki�m ��nh Theo H��ng M�n Ph�i �� ���c Ch�n.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B�o R��ng Minh Ph��ng (H� Uy�n)	6	1	5683	\spr\item\script\item_baibaoxiang.spr	387	1	1	S� D�ng Nh�n ���c Trang B� Minh Ph��ng Ng�u Nhi�n Thu�c T�nh - M�n Ph�i C� Th� Mang ��n Th� R�n Th�n B� Ki�m ��nh Theo H��ng M�n Ph�i �� ���c Ch�n.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B�o R��ng Minh Ph��ng (Y�u ��i)	6	1	5684	\spr\item\script\item_baibaoxiang.spr	387	1	1	S� D�ng Nh�n ���c Trang B� Minh Ph��ng Ng�u Nhi�n Thu�c T�nh - M�n Ph�i C� Th� Mang ��n Th� R�n Th�n B� Ki�m ��nh Theo H��ng M�n Ph�i �� ���c Ch�n.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B�o R��ng Minh Ph��ng (Kh�i)	6	1	5685	\spr\item\script\item_baibaoxiang.spr	387	1	1	S� D�ng Nh�n ���c Trang B� Minh Ph��ng Ng�u Nhi�n Thu�c T�nh - M�n Ph�i C� Th� Mang ��n Th� R�n Th�n B� Ki�m ��nh Theo H��ng M�n Ph�i �� ���c Ch�n.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B�o R��ng Minh Ph��ng (V� Kh�)	6	1	5686	\spr\item\script\item_baibaoxiang.spr	387	1	1	S� D�ng Nh�n ���c Trang B� Minh Ph��ng Ng�u Nhi�n Thu�c T�nh - M�n Ph�i C� Th� Mang ��n Th� R�n Th�n B� Ki�m ��nh Theo H��ng M�n Ph�i �� ���c Ch�n.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B�o R��ng Minh Ph��ng (H�i)	6	1	5687	\spr\item\script\item_baibaoxiang.spr	387	1	1	S� D�ng Nh�n ���c Trang B� Minh Ph��ng Ng�u Nhi�n Thu�c T�nh - M�n Ph�i C� Th� Mang ��n Th� R�n Th�n B� Ki�m ��nh Theo H��ng M�n Ph�i �� ���c Ch�n.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B�o R��ng Minh Ph��ng (B�i)	6	1	5688	\spr\item\script\item_baibaoxiang.spr	387	1	1	S� D�ng Nh�n ���c Trang B� Minh Ph��ng Ng�u Nhi�n Thu�c T�nh - M�n Ph�i C� Th� Mang ��n Th� R�n Th�n B� Ki�m ��nh Theo H��ng M�n Ph�i �� ���c Ch�n.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B�o R��ng Minh Ph��ng (H� Gi�i)	6	1	5689	\spr\item\script\item_baibaoxiang.spr	387	1	1	S� D�ng Nh�n ���c Trang B� Minh Ph��ng Ng�u Nhi�n Thu�c T�nh - M�n Ph�i C� Th� Mang ��n Th� R�n Th�n B� Ki�m ��nh Theo H��ng M�n Ph�i �� ���c Ch�n.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0



-- �� Ph� Minh Ph��ng (V� kh�)	6	1	8001	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (Nh�n)	6	1	8002	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (Y)	6	1	8003	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (B�i)	6	1	8004	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (H� Uy�n)	6	1	8005	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (Gi�y)	6	1	8006	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (D�y Chuy�n)	6	1	8007	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (�ai)	6	1	8008	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (N�n)	6	1	8009	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0


tbConfig[40] = 
{
	nId = 40,
	szMessageType = "CreateCompose",
	szName = "N�ng c�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh B� Minh Ph��ng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"�� Ph� Minh Ph��ng (D�y Chuy�n)",{tbProp={6,1,8007,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5680,1,0,0},tbParam={1,0,0,0,0,0},},1,"B�o R��ng Minh Ph��ng (Li�n)"} },
	},
}

tbConfig[41] = 
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "N�ng c�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh B� Minh Ph��ng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"�� Ph� Minh Ph��ng (N�n)",{tbProp={6,1,8009,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},70} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5681,1,0,0},tbParam={2,0,0,0,0,0},},1,"B�o R��ng Minh Ph��ng (Kh�i)"} },
	},
}

tbConfig[42] = 
{
	nId = 42,
	szMessageType = "CreateCompose",
	szName = "N�ng c�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh B� Minh Ph��ng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"�� Ph� Minh Ph��ng (Nh�n)",{tbProp={6,1,8002,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5682,1,0,0},tbParam={3,0,0,0,0,0},},1,"B�o R��ng Minh Ph��ng (Th��ng Gi�i)"} },
	},
}

tbConfig[43] = 
{
	nId = 43,
	szMessageType = "CreateCompose",
	szName = "N�ng c�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh B� Minh Ph��ng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"�� Ph� Minh Ph��ng (H� Uy�n)",{tbProp={6,1,8005,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5683,1,0,0},tbParam={4,0,0,0,0,0},},1,"B�o R��ng Minh Ph��ng (H� Uy�n)"} },
	},
}

tbConfig[44] = 
{
	nId = 44,
	szMessageType = "CreateCompose",
	szName = "N�ng c�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh B� Minh Ph��ng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"�� Ph� Minh Ph��ng (�ai)",{tbProp={6,1,8008,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5684,1,0,0},tbParam={5,0,0,0,0,0},},1,"B�o R��ng Minh Ph��ng (Y�u ��i)"} },
	},
}

tbConfig[45] = 
{
	nId = 45,
	szMessageType = "CreateCompose",
	szName = "N�ng c�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh B� Minh Ph��ng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"�� Ph� Minh Ph��ng (Y)",{tbProp={6,1,8003,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},70} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5685,1,0,0},tbParam={6,0,0,0,0,0},},1,"B�o R��ng Minh Ph��ng (Kh�i)"} },
	},
}

tbConfig[46] = 
{
	nId = 46,
	szMessageType = "CreateCompose",
	szName = "N�ng c�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh B� Minh Ph��ng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"�� Ph� Minh Ph��ng (V� kh�)",{tbProp={6,1,8001,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},1000} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5686,1,0,0},tbParam={7,0,0,0,0,0},},1,"B�o R��ng Minh Ph��ng (V� Kh�)"} },
	},
}

tbConfig[47] = 
{
	nId = 47,
	szMessageType = "CreateCompose",
	szName = "N�ng c�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh B� Minh Ph��ng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"�� Ph� Minh Ph��ng (Gi�y)",{tbProp={6,1,8006,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5687,1,0,0},tbParam={8,0,0,0,0,0},},1,"B�o R��ng Minh Ph��ng (H�i)"} },
	},
}

tbConfig[48] = 
{
	nId = 48,
	szMessageType = "CreateCompose",
	szName = "N�ng c�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh B� Minh Ph��ng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"�� Ph� Minh Ph��ng (B�i)",{tbProp={6,1,8004,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5688,1,0,0},tbParam={9,0,0,0,0,0},},1,"B�o R��ng Minh Ph��ng (B�i)"} },
	},
}

tbConfig[49] = 
{
	nId = 49,
	szMessageType = "CreateCompose",
	szName = "N�ng c�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh B� Minh Ph��ng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H�y �� Tr�ng 10 � R�i Ch� T�o"} },
		{"AddOneMaterial",	{"�� Ph� Minh Ph��ng (Nh�n)",{tbProp={6,1,8002,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5689,1,0,0},tbParam={10,0,0,0,0,0},},1,"B�o R��ng Minh Ph��ng (H� Gi�i)"} },
	},
}
