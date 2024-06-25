tbConfig = {}
tbConfig[1] = --Add NPC
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi Kh�i ��ng Server S� T�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th� R�n Ho�ng Kim"},
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
	tbMessageParam = {"Th� R�n Ho�ng Kim"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"N�ng C�p Trang S�c",3} },	
		{"AddDialogOpt",	{"N�ng C�p Ng� H�nh �n",9} },
		{"AddDialogOpt",	{"N�ng C�p Phi Phong",18} },
		-- {"AddDialogOpt",	{"N�ng C�p M�t N�",27} },
		-- {"AddDialogOpt",	{"Gh�p T�i Xu 20.000",25} },
		-- {"AddDialogOpt",	{"��i H�nh Hi�p Kh�ng S�i ���c",26} },
                
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
		{"AddDialogOpt",	{"[Long Chi�n Vu D� - Ki�m Di�u 1] => [Long Chi�n Vu D� - Ki�m Di�u C�p 2]",4} },
		--{"AddDialogOpt",	{"[Long Chi�n Vu D� - Ki�m Di�u C�p 6] => [Long Chi�n Vu D� - Ki�m Di�u C�p 7]",5} },
		--{"AddDialogOpt",	{"[Long Chi�n Vu D� - Ki�m Di�u C�p 7] => [Long Chi�n Vu D� - Ki�m Di�u C�p 8]",6} },
		--{"AddDialogOpt",	{"[Long Chi�n Vu D� - Ki�m Di�u C�p 8] => [Long Chi�n Vu D� - Ki�m Di�u C�p 9]",7} },
	--	{"AddDialogOpt",	{"[Long Chi�n Vu D� - Ki�m Di�u C�p 9] => [Long Chi�n Vu D� - Ki�m Di�u C�p 10]",8} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Long Chi�n Vu D� - Ki�m Di�u C�p 1",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Long Chi�n Vu D� - Ki�m Di�u C�p 1",{tbProp={0,9352},nQuality=1},1} },
		{"AddOneMaterial",	{"�� Ph� Trang S�c",{tbProp={6,1,8011,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},1500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},100} },

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,9353},},1,"[N�ng C�p Ngo�i Trang] [Long Chi�n Vu D� - Ki�m Di�u C�p 2]"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Long Chi�n Vu D� - Ki�m Di�u C�p 7",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Long Chi�n Vu D� - Ki�m Di�u C�p 6",{tbProp={0,9357},nQuality=1},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1,0,0},},2000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,9353},},1,"[N�ng C�p Ngo�i Trang] [Long Chi�n Vu D� - Ki�m Di�u C�p 7]"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Long Chi�n Vu D� - Ki�m Di�u C�p 8",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Long Chi�n Vu D� - Ki�m Di�u C�p 7",{tbProp={0,9358},nQuality=1},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1,0,0},},2000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,9359},},1,"[N�ng C�p Ngo�i Trang] [Long Chi�n Vu D� - Ki�m Di�u C�p 8]"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Long Chi�n Vu D� - Ki�m Di�u C�p 9",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Long Chi�n Vu D� - Ki�m Di�u C�p 8",{tbProp={0,3995},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},16000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},8000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3996},},1,"[N�ng C�p Ngo�i Trang] [Long Chi�n Vu D� - Ki�m Di�u C�p 9]"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Long Chi�n Vu D� - Ki�m Di�u C�p 10",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Long Chi�n Vu D� - Ki�m Di�u C�p 9",{tbProp={0,3996},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},9999} },
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},150} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3997},},1,"[N�ng C�p Ngo�i Trang] [Long Chi�n Vu D� - Ki�m Di�u C�p 10]"} },
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
		{"AddDialogOpt",	{"[Ng� H�nh �n C�p 1] => [Ng� H�nh �n C�p 2]",10} },
	--	{"AddDialogOpt",	{"[Ng� H�nh �n C�p 6] => [Ng� H�nh �n C�p 7]",11} },
         --       {"AddDialogOpt",	{"[Ng� H�nh �n C�p 7] => [Ng� H�nh �n C�p 8]",12} },
	--	{"AddDialogOpt",	{"[Ng� H�nh �n C�p 5] => [Ng� H�nh �n C�p 6]",13} },
	--	{"AddDialogOpt",	{"[Ng� H�nh �n C�p 9] => [Ng� H�nh �n C�p 10]",14} },
--		{"AddDialogOpt",	{"[Ng� H�nh �n C�p 10] => [T�n Nh�m �n Gi�m H�]",15} },
	--	{"AddDialogOpt",	{"[T�n Nh�m �n Gi�m H�] => [T�n Nh�m �n Gi�m Trung]",16} },
	--	{"AddDialogOpt",	{"[T�n Nh�m �n Gi�m Trung => [T�n Nh�m �n Gi�m Th��ng]",17} },
	},
}
tbConfig[10] = 
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ng� H�nh �n C�p 1",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Ng� H�nh �n C�p 1",{tbProp={0,9339},nQuality=1},1} },
		{"AddOneMaterial",	{"�� Ph� �n",{tbProp={6,1,8012,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},1500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,9340},},1,"Ng� H�nh �n C�p 2"} },
	},
}
tbConfig[11] = 
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ng� H�nh �n C�p 7",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
                {"AddOneMaterial",	{"Ng� H�nh �n C�p 6",{tbProp={0,9344},nQuality=1},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1,0,0},},2000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,9345},},1,"[N�ng C�p Ngo�i Trang] [Ng� H�nh �n C�p 7]"} },
	},
}
tbConfig[12] = 
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ng� H�nh �n C�p 8",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
               {"AddOneMaterial",	{"Ng� H�nh �n C�p 7",{tbProp={0,9345},nQuality=1},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1,0,0},},2000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},2000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,9346},},1,"[N�ng C�p Ngo�i Trang] [Ng� H�nh �n C�p 8]"} },
	},
}
tbConfig[13] = 
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ng� H�nh �n C�p 9",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Ng� H�nh �n C�p 5",{tbProp={0,4901},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},10000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},10000} },
                {"AddOneMaterial",	{"Huy�n Th�y V�n Tinh- �t [C�p 6]",{tbProp={6,1,30305,1,0,0},},2000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,4902},},1,"[N�ng C�p Ngo�i Trang] [Ng� H�nh �n C�p 6]"} },
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
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},150} },
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
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},180} },
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
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},210} },
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
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},250} },
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
		-- {"AddDialogOpt",	{"[T�i FF Huy�n Kim] => [T�i FF V� C�c]",19} },
		-- {"AddDialogOpt",	{"[T�i FF V� C�c] => [T�i FF V� C�c Tinh S�o]",20} },
		{"AddDialogOpt",	{"[Phi Phong Ph� Quang] => [Phi Phong Kh�p Th�n]",21} },
		--{"AddDialogOpt",	{"[Phi Phong Kh�p Th�n] => [Phi Phong K�nh Thi�n]",22} },
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
	tbMessageParam = {"Phi Phong huyen kim",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"T�i FF Huy�n Kim",{tbProp={6,1,30146,1,0,0},},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},3000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},3000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30147,1,0,0},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong huyenkim]"} },
	},
}
tbConfig[20] = 
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�i FF V� C�c",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"[T�i FF V� C�c",{tbProp={6,1,30147,1,0,0},},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},5000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},5000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30148,1,0,0},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong vo cuc]"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ph� Quang",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Phi phong Ph� Quang",{tbProp={0,9409},nQuality=1},1} },
		{"AddOneMaterial",	{"�� Ph� Phi Phong",{tbProp={6,1,8013,1},},1} },
		{"AddOneMaterial",	{"T� Tinh Kho�ng Th�ch",{tbProp={6,1,8000,1},},1500} },
		{"AddOneMaterial",	{"H�n Thi�t Ng�n N�m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,1496,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
	},
	tbActition = 
	{
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,9420,1,0,0},},1,"Phi phong Kh�p Th�n"} },
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,9420},},1,"Phi phong Kh�p Th�n"} },
	},
}
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong K�nh Thi�n",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Phi Phong Kh�p Th�n",{tbProp={0,3935},nQuality=1},1} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},16000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},8000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3936},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong K�nh Thi�n]"} },
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
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},150} },
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
		{"AddOneMaterial",	{"Kim Nguy�n b�o",{tbProp={4,343,1,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,5980},},1,"[N�ng C�p Ngo�i Trang] [Phi Phong + 3 K� N�ng]"} },
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gh�p T�i Xu",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},21000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nLeftTime,tbProp={6,1,30338,1,0,0},},1,"[N�ng C�p Ngo�i Trang] [Gh�p T�i Xu]"} },
	},
}
tbConfig[26] = 
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",	
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i H�nh Hi�p L�nh",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nLeftTime,tbProp={6,1,2566,1,0,0},},1,"[N�ng C�p Ngo�i Trang] [��i H�nh Hi�p L�nh]"} },
	},
}
tbConfig[27] = 
{
	nId = 27,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C�c H� H�y Ch�n Lo�i M�t N� Mu�n N�ng C�p"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"[M�t N� S� Ph��ng] => [M�t N� Ti�m Long]",28} },
	--	{"AddDialogOpt",	{"[Long Chi�n Vu D� - Ki�m Di�u C�p 3] => [Long Chi�n Vu D� - Ki�m Di�u C�p 4]",29} },
		--{"AddDialogOpt",	{"[Long Chi�n Vu D� - Ki�m Di�u C�p 4] => [Long Chi�n Vu D� - Ki�m Di�u C�p 5]",30} },
		--{"AddDialogOpt",	{"[Long Chi�n Vu D� - Ki�m Di�u C�p 8] => [Long Chi�n Vu D� - Ki�m Di�u C�p 9]",31} },
	--	{"AddDialogOpt",	{"[Long Chi�n Vu D� - Ki�m Di�u C�p 9] => [Long Chi�n Vu D� - Ki�m Di�u C�p 10]",32} },
	},
}
tbConfig[28] = 
{
	nId = 28,
	szMessageType = "CreateCompose",
	szName = "N�ng C�p Ngo�i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�t N� Kinh Hong",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C�c H� Kh�ng �� Ch� Tr�ng H�y S�p X�p L�i H�nh Trang"} },
		{"AddOneMaterial",	{"M�t N� S� Ph��ng",{tbProp={0,9330},nQuality=1},1} },
		{"AddOneMaterial",	{"Tinh Ng�c",{tbProp={6,1,4807,1,0,0},},5000} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},8000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,9331},},1,"[N�ng C�p Ngo�i Trang] [M�t N� Ti�m Long]"} },
	},
}

