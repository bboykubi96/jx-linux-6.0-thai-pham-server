Include("\\script\\global\\g7vn\\g7configall.lua")

-------�ֲ��������� ��ʼ---------
-------�ֲ��������� ����---------

tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "B�n th�ng t�ng kim",
	nStartDate = 201204020000,
	nEndDate  = 203005010000,
	tbMessageParam = {1,3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		--{"PlayerFunLib:CheckTaskDaily",	{1926,0,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:AddExp",	{"6000000000",1,"sonjin"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={4,468,1,1,0,0},nBindState = -2,},60,"T�ng Kim cao c�p nh�n ���c Kim b�i"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4985, 1, 1, 0},nBindState = -2,nExpiredTime=ThoiHanHanhHiepKy},1,"T�ng Kim cao c�p nh�n ���c kim b�i"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4435,1,0,0},},10,"T�ng Kim cao c�p nh�n ���c Ngoi sao"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4372,1,0,0},},1,"T�ng Kim cao c�p nh�n ���c �� Ph� ��ng Long Ngoa"} },

		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "B�n thua t�ng kim",
	nStartDate = 201204020000,
	nEndDate  = 203005010000,
	tbMessageParam = {"-1",3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
	--	{"PlayerFunLib:CheckTaskDaily",	{1926,0,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:AddExp",	{"4000000000",1,"sonjin"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={4,468,1,1,0,0},nBindState=-2,},30,"T�ng Kim cao c�p nh�n ���c ��i c�t b�o h�p"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 30200, 1, 1, 0},nExpiredTime=20190430},30,"T�ng Kim cao c�p nh�n ���c t�i nl"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4435,1,0,0},},10,"T�ng Kim cao c�p nh�n ���c Ngoi sao"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4372,1,0,0},},1,"T�ng Kim cao c�p nh�n ���c �� Ph� ��ng Long Ngoa"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4985, 1, 1, 0},nBindState = -2,nExpiredTime=ThoiHanHanhHiepKy},1,"T�ng Kim cao c�p nh�n ���c kim b�i"} },

		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,4353,1,0,0},},1,"T�ng Kim cao c�p nh�n ���c c�ng th�c n� nhi h�ng"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "B�n h�a t�ng kim",
	nStartDate = 201204020000,
	nEndDate  = 203005010000,
	tbMessageParam = {0,3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
	--	{"PlayerFunLib:CheckTaskDaily",	{1926,0,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:AddExp",	{"4000000000*(mod(GetTask(1926),256)+1)",1,"sonjin"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={4,468,1,1,0,0},nBindState=-2,},40,"T�ng Kim cao c�p nh�n ���c ��i c�t b�o h�p"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 30200, 1, 1, 0},nExpiredTime=20190430},40,"T�ng Kim cao c�p nh�n ���c t�i nl"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4435,1,0,0},},10,"T�ng Kim cao c�p nh�n ���c Ngoi sao"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4372,1,0,0},},1,"T�ng Kim cao c�p nh�n ���c �� Ph� ��ng Long Ngoa"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4985, 1, 1, 0},nBindState = -2,nExpiredTime=ThoiHanHanhHiepKy},1,"T�ng Kim cao c�p nh�n ���c kim b�i"} },

		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,4353,1,0,0},},1,"T�ng Kim cao c�p nh�n ���c c�ng th�c n� nhi h�ng"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}

