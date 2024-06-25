tbConfig = {}
tbConfig[1] = --§èi tho¹i
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thî RÌn Hoµng Kim"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"N©ng CÊp Trang BÞ",2} },	
		-- {"AddDialogOpt",	{"N©ng CÊp LÖnh Bµi",25} },	
	},
}
tbConfig[2] = 
{
	nId = 2,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C¸c H¹ Muèn N©ng CÊp Trang BÞ Lo¹i Nµo"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	-- {"AddDialogOpt",	{"§æi B¶o R­¬ng DiÖu D­¬ng",3} },
	--{"AddDialogOpt",	{"§æi B¶o R­¬ng Minh Ph­îng",14} },
	-- {"AddDialogOpt",	{"§æi B¶o R­¬ng Anh Hµo",28} },
	{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng (Liªn)",40} },
	{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng (Kh«i)",41} },
	{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng (Th­îng Giíi)",42} },
	{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng (Hé UyÓn)",43} },
	{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng (Yªu §¸i)",44} },
	{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng (Kh¶i)",45} },
	{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng (Vò KhÝ)",46} },
	{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng (Hµi)",47} },
	{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng (Béi)",48} },
	{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng (H¹ Giíi)",49} },

	},
}

tbConfig[3] = 
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C¸c H¹ H·y Chän Lo¹i Trang BÞ Muèn §æi"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"B¶o R­¬ng DiÖu D­¬ng Liªn",4} },
		{"AddDialogOpt",	{"B¶o R­¬ng DiÖu D­¬ng Kh«i",5} },
		{"AddDialogOpt",	{"B¶o R­¬ng DiÖu D­¬ng Th­îng Giíi",6} },
		{"AddDialogOpt",	{"B¶o R­¬ng DiÖu D­¬ng Hé UyÓn",7} },
		{"AddDialogOpt",	{"B¶o R­¬ng DiÖu D­¬ng Yªu §¸i",8} },
		{"AddDialogOpt",	{"B¶o R­¬ng DiÖu D­¬ng Kh¶i",9} },
		{"AddDialogOpt",	{"B¶o R­¬ng DiÖu D­¬ng Vò KhÝ",10} },
		{"AddDialogOpt",	{"B¶o R­¬ng DiÖu D­¬ng Hµi",11} },
		{"AddDialogOpt",	{"B¶o R­¬ng DiÖu D­¬ng Béi",12} },
		{"AddDialogOpt",	{"B¶o R­¬ng DiÖu D­¬ng H¹ Giíi",13} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng DiÖu D­¬ng Liªn",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={1,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6044,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng DiÖu D­¬ng Liªn]"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng DiÖu D­¬ng Kh«i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={2,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6045,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng DiÖu D­¬ng Kh«i]"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng DiÖu D­¬ng Th­îng Giíi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={3,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6046,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng DiÖu D­¬ng Th­îng Giíi]"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng DiÖu D­¬ng Hé UyÓn",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={4,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6047,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng DiÖu D­¬ng Hé UyÓn]"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng DiÖu D­¬ng Yªu §¸i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={5,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6048,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng DiÖu D­¬ng Yªu §¸i]"} },
	},
}
tbConfig[9] = 
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng DiÖu D­¬ng Kh¶i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={6,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6049,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng DiÖu D­¬ng Kh¶i]"} },
	},
}
tbConfig[10] = 
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng DiÖu D­¬ng Vò KhÝ",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={7,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6050,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng DiÖu D­¬ng Vò KhÝ]"} },
	},
}
tbConfig[11] = 
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng DiÖu D­¬ng Hµi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={8,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6051,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng DiÖu D­¬ng Hµi]"} },
	},
}
tbConfig[12] = 
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng DiÖu D­¬ng Béi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={9,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6052,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng DiÖu D­¬ng Béi]"} },
	},
}
tbConfig[13] = 
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng DiÖu D­¬ng H¹ Giíi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={10,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6053,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng DiÖu D­¬ng H¹ Giíi]"} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateDialog",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C¸c H¹ H·y Chän Lo¹i Trang BÞ Muèn §æi"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng Liªn",15} },
		{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng Kh«i",16} },
		{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng Th­îng Giíi",17} },
		{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng Hé UyÓn",18} },
		{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng Yªu §¸i",19} },
		{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng Kh¶i",20} },
		{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng Vò KhÝ",21} },
		{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng Hµi",22} },
		{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng Béi",23} },
		{"AddDialogOpt",	{"B¶o R­¬ng Minh Ph­îng H¹ Giíi",24} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Minh Ph­îng Liªn",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"Minh Ph­îng LÖnh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={1,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,5996,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Minh Ph­îng Liªn]"} },
	},
}
tbConfig[16] = 
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Minh Ph­îng Kh«i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"Minh Ph­îng LÖnh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={2,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,5997,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Minh Ph­îng Kh«i]"} },
	},
}
tbConfig[17] = 
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Minh Ph­îng Th­îng Giíi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"Minh Ph­îng LÖnh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={3,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,5998,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Minh Ph­îng Th­îng Giíi]"} },
	},
}
tbConfig[18] = 
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Minh Ph­îng Hé UyÓn",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"Minh Ph­îng LÖnh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={4,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,5999,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Minh Ph­îng Hé UyÓn]"} },
	},
}
tbConfig[19] = 
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Minh Ph­îng Yªu §¸i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"Minh Ph­îng LÖnh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={5,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6000,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Minh Ph­îng Yªu §¸i]"} },
	},
}
tbConfig[20] = 
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Minh Ph­îng Kh¶i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"Minh Ph­îng LÖnh",{tbProp={6,1,5438,1,0,0},},5} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={6,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6001,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Minh Ph­îng Kh¶i]"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Minh Ph­îng Vò KhÝ",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"Minh Ph­îng LÖnh",{tbProp={6,1,5438,1,0,0},},5} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={7,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6002,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Minh Ph­îng Vò KhÝ]"} },
	},
}
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Minh Ph­îng Hµi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"Minh Ph­îng LÖnh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={8,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6003,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Minh Ph­îng Hµi]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Minh Ph­îng Béi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"Minh Ph­îng LÖnh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={9,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6004,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Minh Ph­îng Béi]"} },
	},
}
tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Minh Ph­îng H¹ Giíi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"Minh Ph­îng LÖnh",{tbProp={6,1,5438,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={10,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6005,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Minh Ph­îng H¹ Giíi]"} },
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateDialog",
	szName = "Chøc N¨ng N©ng CÊp",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C¸c H¹ H·y Chän Lo¹i LÖnh Bµi Muèn N©ng CÊp"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"N©ng CÊp LÖnh Bµi NguyÖt KhuyÕt",26} },
	{"AddDialogOpt",	{"N©ng CÊp LÖnh Bµi DiÖu D­¬ng",27} },
   {"AddDialogOpt",	{"N©ng CÊp LÖnh Bµi Anh Hµo",39} },
	},
}

tbConfig[26] = 
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"LÖnh Bµi NguyÖt KhuyÕt",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		       {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},500} },
                  {"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5441,1,0,0},},1,"[Chøc N¨ng §æi LÖnh Bµi] [LÖnh Bµi NguyÖt KhuyÕt]"} },
	},
}

tbConfig[27] = 
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"LÖnh Bµi DiÖu D­¬ng",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{30,"H·y §Ó Trèng 30 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi NguyÖt KhuyÕt",{tbProp={6,1,5441,1,0,0},},10} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},3000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5442,1,0,0},},1,"[Chøc N¨ng §æi LÖnh Bµi] [LÖnh Bµi DiÖu D­¬ng]"} },
	},
}
tbConfig[28] = 
{
	nId = 28,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C¸c H¹ H·y Chän Lo¹i Trang BÞ Muèn §æi"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"B¶o R­¬ng Anh Hµo Liªn",29} },
		{"AddDialogOpt",	{"B¶o R­¬ng Anh Hµo Kh«i",30} },
		{"AddDialogOpt",	{"B¶o R­¬ng Anh Hµo Th­îng Giíi",31} },
		{"AddDialogOpt",	{"B¶o R­¬ng Anh Hµo Hé UyÓn",32} },
		{"AddDialogOpt",	{"B¶o R­¬ng Anh Hµo Yªu §¸i",33} },
		{"AddDialogOpt",	{"B¶o R­¬ng Anh Hµo Kh¶i",34} },
		{"AddDialogOpt",	{"B¶o R­¬ng Anh Hµo Vò KhÝ",35} },
		{"AddDialogOpt",	{"B¶o R­¬ng Anh Hµo Hµi",36} },
		{"AddDialogOpt",	{"B¶o R­¬ng Anh Hµo Béi",37} },
		{"AddDialogOpt",	{"B¶o R­¬ng Anh Hµo H¹ Giíi",38} },
	},
}
tbConfig[29] = 
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Anh Hµo Liªn",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 5 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi Anh Hµo",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh Hµo Th¹ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={1,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6056,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Anh Hµo Liªn]"} },
	},
}
tbConfig[30] = 
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Anh Hµo Kh«i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 5 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi Anh Hµo",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh Hµo Th¹ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={2,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6057,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Anh Hµo Kh«i]"} },
	},
}
tbConfig[31] = 
{
	nId = 31,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Anh Hµo Th­îng Giíi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 5 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi Anh Hµo",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh Hµo Th¹ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={3,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6058,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Anh Hµo Th­îng Giíi]"} },
	},
}
tbConfig[32] = 
{
	nId = 32,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Anh Hµo Hé UyÓn",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 5 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi Anh Hµo",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh Hµo Th¹ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={4,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6059,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Anh Hµo Hé UyÓn]"} },
	},
}
tbConfig[33] = 
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Anh Hµo Yªu §¸i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 5 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi Anh Hµo",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh Hµo Th¹ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={5,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6060,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Anh Hµo Yªu §¸i]"} },
	},
}
tbConfig[34] = 
{
	nId = 34,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Anh Hµo Kh¶i",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 5 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi Anh Hµo",{tbProp={6,1,5443,1,0,0},},15} },
		{"AddOneMaterial",	{"Anh Hµo Th¹ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={6,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6061,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Anh Hµo Kh¶i]"} },
	},
}

tbConfig[35] = 
{
	nId = 35,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Anh Hµo Vò KhÝ",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 5 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi Anh Hµo",{tbProp={6,1,5443,1,0,0},},15} },
		{"AddOneMaterial",	{"Anh Hµo Th¹ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={7,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6062,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Anh Hµo Vò KhÝ]"} },
	},
}
tbConfig[36] = 
{
	nId = 36,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Anh Hµo Hµi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 5 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi Anh Hµo",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh Hµo Th¹ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={8,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6063,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Anh Hµo Hµi]"} },
	},
}
tbConfig[37] = 
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Anh Hµo Béi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 5 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi Anh Hµo",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh Hµo Th¹ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={9,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6064,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Anh Hµo Béi]"} },
	},
}
tbConfig[38] = 
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¶o R­¬ng Anh Hµo H¹ Giíi",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 5 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh Bµi Anh Hµo",{tbProp={6,1,5443,1,0,0},},5} },
		{"AddOneMaterial",	{"Anh Hµo Th¹ch",{tbProp={6,1,5448,1,0,0},},500} },
                {"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},500 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbParam={10,0,0,0,0,0},nExpiredTime=nLeftTime,tbProp={6,1,6065,1,0,0},},1,"[Chøc N¨ng §æi Trang BÞ] [B¶o R­¬ng Anh Hµo H¹ Giíi]"} },
	},
}
tbConfig[39] = 
{
	nId = 39,
	szMessageType = "CreateCompose",
	szName = "Chøc N¨ng §æi",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"LÖnh Bµi Anh Hµo",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"LÖnh DiÖu D­¬ng",{tbProp={6,1,5442,1,0,0},},10} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1},},5000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},10000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5443,1,0,0},},1,"[Chøc N¨ng §æi LÖnh Bµi] [LÖnh Bµi LÖnh Bµi Anh Hµo]"} },
	},
}


-- B¶o R­¬ng Minh Ph­îng (Liªn)	6	1	5680	\spr\item\script\item_baibaoxiang.spr	387	1	1	Sö Dông NhËn §­îc Trang BÞ Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh - M«n Ph¸i Cã ThÓ Mang §Õn Thî RÌn ThÇn BÝ KiÓm §Þnh Theo H­íng M«n Ph¸i §· §­îc Chän.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B¶o R­¬ng Minh Ph­îng (Kh«i)	6	1	5681	\spr\item\script\item_baibaoxiang.spr	387	1	1	Sö Dông NhËn §­îc Trang BÞ Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh - M«n Ph¸i Cã ThÓ Mang §Õn Thî RÌn ThÇn BÝ KiÓm §Þnh Theo H­íng M«n Ph¸i §· §­îc Chän.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B¶o R­¬ng Minh Ph­îng (Th­îng Giíi)	6	1	5682	\spr\item\script\item_baibaoxiang.spr	387	1	1	Sö Dông NhËn §­îc Trang BÞ Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh - M«n Ph¸i Cã ThÓ Mang §Õn Thî RÌn ThÇn BÝ KiÓm §Þnh Theo H­íng M«n Ph¸i §· §­îc Chän.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B¶o R­¬ng Minh Ph­îng (Hé UyÓn)	6	1	5683	\spr\item\script\item_baibaoxiang.spr	387	1	1	Sö Dông NhËn §­îc Trang BÞ Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh - M«n Ph¸i Cã ThÓ Mang §Õn Thî RÌn ThÇn BÝ KiÓm §Þnh Theo H­íng M«n Ph¸i §· §­îc Chän.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B¶o R­¬ng Minh Ph­îng (Yªu §¸i)	6	1	5684	\spr\item\script\item_baibaoxiang.spr	387	1	1	Sö Dông NhËn §­îc Trang BÞ Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh - M«n Ph¸i Cã ThÓ Mang §Õn Thî RÌn ThÇn BÝ KiÓm §Þnh Theo H­íng M«n Ph¸i §· §­îc Chän.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B¶o R­¬ng Minh Ph­îng (Kh¶i)	6	1	5685	\spr\item\script\item_baibaoxiang.spr	387	1	1	Sö Dông NhËn §­îc Trang BÞ Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh - M«n Ph¸i Cã ThÓ Mang §Õn Thî RÌn ThÇn BÝ KiÓm §Þnh Theo H­íng M«n Ph¸i §· §­îc Chän.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B¶o R­¬ng Minh Ph­îng (Vò KhÝ)	6	1	5686	\spr\item\script\item_baibaoxiang.spr	387	1	1	Sö Dông NhËn §­îc Trang BÞ Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh - M«n Ph¸i Cã ThÓ Mang §Õn Thî RÌn ThÇn BÝ KiÓm §Þnh Theo H­íng M«n Ph¸i §· §­îc Chän.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B¶o R­¬ng Minh Ph­îng (Hµi)	6	1	5687	\spr\item\script\item_baibaoxiang.spr	387	1	1	Sö Dông NhËn §­îc Trang BÞ Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh - M«n Ph¸i Cã ThÓ Mang §Õn Thî RÌn ThÇn BÝ KiÓm §Þnh Theo H­íng M«n Ph¸i §· §­îc Chän.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B¶o R­¬ng Minh Ph­îng (Béi)	6	1	5688	\spr\item\script\item_baibaoxiang.spr	387	1	1	Sö Dông NhËn §­îc Trang BÞ Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh - M«n Ph¸i Cã ThÓ Mang §Õn Thî RÌn ThÇn BÝ KiÓm §Þnh Theo H­íng M«n Ph¸i §· §­îc Chän.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0
-- B¶o R­¬ng Minh Ph­îng (H¹ Giíi)	6	1	5689	\spr\item\script\item_baibaoxiang.spr	387	1	1	Sö Dông NhËn §­îc Trang BÞ Minh Ph­îng NgÉu Nhiªn Thuéc TÝnh - M«n Ph¸i Cã ThÓ Mang §Õn Thî RÌn ThÇn BÝ KiÓm §Þnh Theo H­íng M«n Ph¸i §· §­îc Chän.	0	0	1	0	\script\vng_event\item\ruongtuchon\ruongminhphuong.lua	0	1	1	0	0		0	0	0	0	0	0	0	0	0	0



-- §å Phæ Minh Ph­îng (Vò khÝ)	6	1	8001	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (NhÉn)	6	1	8002	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Y)	6	1	8003	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Béi)	6	1	8004	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Hé UyÓn)	6	1	8005	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Giµy)	6	1	8006	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (D©y ChuyÒn)	6	1	8007	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (§ai)	6	1	8008	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Nãn)	6	1	8009	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0


tbConfig[40] = 
{
	nId = 40,
	szMessageType = "CreateCompose",
	szName = "N©ng cÊp trang bÞ",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh BÞ Minh Ph­îng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"§å Phæ Minh Ph­îng (D©y ChuyÒn)",{tbProp={6,1,8007,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5680,1,0,0},tbParam={1,0,0,0,0,0},},1,"B¶o R­¬ng Minh Ph­îng (Liªn)"} },
	},
}

tbConfig[41] = 
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "N©ng cÊp trang bÞ",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh BÞ Minh Ph­îng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"§å Phæ Minh Ph­îng (Nãn)",{tbProp={6,1,8009,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},70} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5681,1,0,0},tbParam={2,0,0,0,0,0},},1,"B¶o R­¬ng Minh Ph­îng (Kh«i)"} },
	},
}

tbConfig[42] = 
{
	nId = 42,
	szMessageType = "CreateCompose",
	szName = "N©ng cÊp trang bÞ",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh BÞ Minh Ph­îng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"§å Phæ Minh Ph­îng (NhÉn)",{tbProp={6,1,8002,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5682,1,0,0},tbParam={3,0,0,0,0,0},},1,"B¶o R­¬ng Minh Ph­îng (Th­îng Giíi)"} },
	},
}

tbConfig[43] = 
{
	nId = 43,
	szMessageType = "CreateCompose",
	szName = "N©ng cÊp trang bÞ",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh BÞ Minh Ph­îng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"§å Phæ Minh Ph­îng (Hé UyÓn)",{tbProp={6,1,8005,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5683,1,0,0},tbParam={4,0,0,0,0,0},},1,"B¶o R­¬ng Minh Ph­îng (Hé UyÓn)"} },
	},
}

tbConfig[44] = 
{
	nId = 44,
	szMessageType = "CreateCompose",
	szName = "N©ng cÊp trang bÞ",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh BÞ Minh Ph­îng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"§å Phæ Minh Ph­îng (§ai)",{tbProp={6,1,8008,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5684,1,0,0},tbParam={5,0,0,0,0,0},},1,"B¶o R­¬ng Minh Ph­îng (Yªu §¸i)"} },
	},
}

tbConfig[45] = 
{
	nId = 45,
	szMessageType = "CreateCompose",
	szName = "N©ng cÊp trang bÞ",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh BÞ Minh Ph­îng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"§å Phæ Minh Ph­îng (Y)",{tbProp={6,1,8003,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},70} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5685,1,0,0},tbParam={6,0,0,0,0,0},},1,"B¶o R­¬ng Minh Ph­îng (Kh¶i)"} },
	},
}

tbConfig[46] = 
{
	nId = 46,
	szMessageType = "CreateCompose",
	szName = "N©ng cÊp trang bÞ",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh BÞ Minh Ph­îng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"§å Phæ Minh Ph­îng (Vò khÝ)",{tbProp={6,1,8001,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},1000} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5686,1,0,0},tbParam={7,0,0,0,0,0},},1,"B¶o R­¬ng Minh Ph­îng (Vò KhÝ)"} },
	},
}

tbConfig[47] = 
{
	nId = 47,
	szMessageType = "CreateCompose",
	szName = "N©ng cÊp trang bÞ",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh BÞ Minh Ph­îng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"§å Phæ Minh Ph­îng (Giµy)",{tbProp={6,1,8006,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5687,1,0,0},tbParam={8,0,0,0,0,0},},1,"B¶o R­¬ng Minh Ph­îng (Hµi)"} },
	},
}

tbConfig[48] = 
{
	nId = 48,
	szMessageType = "CreateCompose",
	szName = "N©ng cÊp trang bÞ",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh BÞ Minh Ph­îng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"§å Phæ Minh Ph­îng (Béi)",{tbProp={6,1,8004,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5688,1,0,0},tbParam={9,0,0,0,0,0},},1,"B¶o R­¬ng Minh Ph­îng (Béi)"} },
	},
}

tbConfig[49] = 
{
	nId = 49,
	szMessageType = "CreateCompose",
	szName = "N©ng cÊp trang bÞ",
	nStartDate = nil,
	nEndDate  = nil,
		tbMessageParam = {"Tranh BÞ Minh Ph­îng",1,1,1,0.02,0,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"H·y §Ó Trèng 10 ¤ Råi ChÕ T¹o"} },
		{"AddOneMaterial",	{"§å Phæ Minh Ph­îng (NhÉn)",{tbProp={6,1,8002,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,5689,1,0,0},tbParam={10,0,0,0,0,0},},1,"B¶o R­¬ng Minh Ph­îng (H¹ Giíi)"} },
	},
}
