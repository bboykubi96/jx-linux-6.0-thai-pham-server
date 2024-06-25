Include("\\script\\global\\g7vn\\g7configall.lua")

-------¾Ö²¿±äÁ¿¶¨Òå ¿ªÊ¼---------
-------¾Ö²¿±äÁ¿¶¨Òå ½áÊø---------

tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "Bªn th¾ng tèng kim",
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
		--{"PlayerFunLib:GetItem",	{{tbProp={4,468,1,1,0,0},nBindState = -2,},60,"Tèng Kim cao cÊp nhËn ®­îc Kim bµi"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4985, 1, 1, 0},nBindState = -2,nExpiredTime=ThoiHanHanhHiepKy},1,"Tèng Kim cao cÊp nhËn ®­îc kim bµi"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4435,1,0,0},},10,"Tèng Kim cao cÊp nhËn ®­îc Ngoi sao"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4372,1,0,0},},1,"Tèng Kim cao cÊp nhËn ®­îc §å Phæ §»ng Long Ngoa"} },

		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Bªn thua tèng kim",
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
		--{"PlayerFunLib:GetItem",	{{tbProp={4,468,1,1,0,0},nBindState=-2,},30,"Tèng Kim cao cÊp nhËn ®­îc ®¹i c¸t b¶o h¹p"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 30200, 1, 1, 0},nExpiredTime=20190430},30,"Tèng Kim cao cÊp nhËn ®­îc tói nl"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4435,1,0,0},},10,"Tèng Kim cao cÊp nhËn ®­îc Ngoi sao"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4372,1,0,0},},1,"Tèng Kim cao cÊp nhËn ®­îc §å Phæ §»ng Long Ngoa"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4985, 1, 1, 0},nBindState = -2,nExpiredTime=ThoiHanHanhHiepKy},1,"Tèng Kim cao cÊp nhËn ®­îc kim bµi"} },

		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,4353,1,0,0},},1,"Tèng Kim cao cÊp nhËn ®­îc c«ng thøc n÷ nhi hång"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "Bªn hßa tèng kim",
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
		--{"PlayerFunLib:GetItem",	{{tbProp={4,468,1,1,0,0},nBindState=-2,},40,"Tèng Kim cao cÊp nhËn ®­îc ®¹i c¸t b¶o h¹p"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 30200, 1, 1, 0},nExpiredTime=20190430},40,"Tèng Kim cao cÊp nhËn ®­îc tói nl"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4435,1,0,0},},10,"Tèng Kim cao cÊp nhËn ®­îc Ngoi sao"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,4372,1,0,0},},1,"Tèng Kim cao cÊp nhËn ®­îc §å Phæ §»ng Long Ngoa"} },
		--{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4985, 1, 1, 0},nBindState = -2,nExpiredTime=ThoiHanHanhHiepKy},1,"Tèng Kim cao cÊp nhËn ®­îc kim bµi"} },

		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,4353,1,0,0},},1,"Tèng Kim cao cÊp nhËn ®­îc c«ng thøc n÷ nhi hång"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}

