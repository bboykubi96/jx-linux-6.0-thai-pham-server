

-------�ֲ��������� ��ʼ---------
-------�ֲ��������� ����---------

tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "B�n th�ng t�ng kim",
	nStartDate = 201204020000,
	nEndDate  = 202309030000,
	tbMessageParam = {1,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		--{"PlayerFunLib:CheckTaskDaily",	{1926,0,"",">="} },
	},
	tbActition = 
	{
	--	{"PlayerFunLib:AddExp",	{"700000",1,"sonjin"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={4,240,1,1,0,0},nRate=1,},1,"T�ng Kim thuy tinh"} },
	--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4459, 1, 1, 0},nCount=1,},1,"L�nh b�i g�i boss ti�u"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4416, 1, 1, 0},nCount=2,},1,"D�y Th�ng"} },
	--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4415, 1, 1, 0},nCount=2,},1,"B� C�"} },
		--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4425, 1, 1, 0},nCount=1,nBindState=-2,},1,"T�n V�t T�ng Kim"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=20180903,},40,"T�ng Kim nhan duoc phan thuong"} },
		

		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "B�n thua t�ng kim",
	nStartDate = 201204020000,
	nEndDate  = 202309030000,
	tbMessageParam = {"-1",2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
	--	{"PlayerFunLib:CheckTaskDaily",	{1926,0,"",">="} },
	},
	tbActition = 
	{
	--	{"PlayerFunLib:AddExp",	{"600000",1,"sonjin"} },
	--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 30317, 1, 1, 0},nCount=1,},1,"H� ti�u l�nh"} },
	--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4420, 1, 1, 0},nCount=1,},1,"M�nh �� N� Oa"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4416, 1, 1, 0},nCount=1,},1,"D�y Th�ng"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4415, 1, 1, 0},nCount=1,},1,"B� C�"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4425, 1, 1, 0},nCount=1,},1,"T�n V�t T�ng Kim"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={4,240,1,1,0,0},nRate=1,},1,"T�ng Kim thuy tinh"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 22, 1, 1, 0},nRate=1,},1,"T�ng Kim nhan duoc ttk"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=20180903,},30,"T�ng Kim nhan duoc phan thuong"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "B�n h�a t�ng kim",
	nStartDate = 201204020000,
	nEndDate  = 202309030000,
	tbMessageParam = {0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
	--	{"PlayerFunLib:CheckTaskDaily",	{1926,0,"",">="} },
	},
	tbActition = 
	{
	--	{"PlayerFunLib:AddExp",	{"650000*(mod(GetTask(1926),256)+1)",1,"sonjin"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4420, 1, 1, 0},nCount=1,},1,"M�nh �� N� Oa"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4416, 1, 1, 0},nCount=2,},1,"D�y Th�ng"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4415, 1, 1, 0},nCount=2,},1,"B� C�"} },
		--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4425, 1, 1, 0},nCount=1,},1,"T�n V�t T�ng Kim"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={4,240,1,1,0,0},nRate=1,},1,"T�ng Kim thuy tinh"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 22, 1, 1, 0},nRate=1,},1,"T�ng Kim nhan duoc ttk"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=20180903,},30,"T�ng Kim nhan duoc phan thuong"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}

