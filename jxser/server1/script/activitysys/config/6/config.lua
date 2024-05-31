

-------¾Ö²¿±äÁ¿¶¨Òå ¿ªÊ¼---------
-------¾Ö²¿±äÁ¿¶¨Òå ½áÊø---------

tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "Bªn th¾ng tèng kim",
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
		--{"PlayerFunLib:GetItem",	{{tbProp={4,240,1,1,0,0},nRate=1,},1,"Tèng Kim thuy tinh"} },
	--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4459, 1, 1, 0},nCount=1,},1,"LÖnh bµi gäi boss tiÓu"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4416, 1, 1, 0},nCount=2,},1,"D©y Thõng"} },
	--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4415, 1, 1, 0},nCount=2,},1,"Bã Cá"} },
		--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4425, 1, 1, 0},nCount=1,nBindState=-2,},1,"TÝn VËt Tèng Kim"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=20180903,},40,"Tèng Kim nhan duoc phan thuong"} },
		

		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Bªn thua tèng kim",
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
	--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 30317, 1, 1, 0},nCount=1,},1,"Hé tiªu lÖnh"} },
	--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4420, 1, 1, 0},nCount=1,},1,"M·nh ®å N÷ Oa"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4416, 1, 1, 0},nCount=1,},1,"D©y Thõng"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4415, 1, 1, 0},nCount=1,},1,"Bã Cá"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4425, 1, 1, 0},nCount=1,},1,"TÝn VËt Tèng Kim"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={4,240,1,1,0,0},nRate=1,},1,"Tèng Kim thuy tinh"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 22, 1, 1, 0},nRate=1,},1,"Tèng Kim nhan duoc ttk"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=20180903,},30,"Tèng Kim nhan duoc phan thuong"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "Bªn hßa tèng kim",
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
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4420, 1, 1, 0},nCount=1,},1,"M·nh ®å N÷ Oa"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4416, 1, 1, 0},nCount=2,},1,"D©y Thõng"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4415, 1, 1, 0},nCount=2,},1,"Bã Cá"} },
		--	{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4425, 1, 1, 0},nCount=1,},1,"TÝn VËt Tèng Kim"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={4,240,1,1,0,0},nRate=1,},1,"Tèng Kim thuy tinh"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 22, 1, 1, 0},nRate=1,},1,"Tèng Kim nhan duoc ttk"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=20180903,},30,"Tèng Kim nhan duoc phan thuong"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}

