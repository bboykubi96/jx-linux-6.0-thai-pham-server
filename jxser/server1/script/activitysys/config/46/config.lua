tbConfig = {}
tbConfig[1] = --Add NPC
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi Khëi §éng Server SÏ T¶i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thî RÌn Hoµng Kim"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
	},
}
tbConfig[2] = --§èi tho¹i
{
	nId = 2,
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
		{"AddDialogOpt",	{"N©ng CÊp Trang Søc",3} },	
		{"AddDialogOpt",	{"N©ng CÊp Ngò Hµnh Ên",9} },
		{"AddDialogOpt",	{"N©ng CÊp Phi Phong",18} },
		-- {"AddDialogOpt",	{"N©ng CÊp MÆt N¹",27} },
		-- {"AddDialogOpt",	{"GhÐp Tói Xu 20.000",25} },
		-- {"AddDialogOpt",	{"§çi Hµnh HiÖp Kh«ng Sµi §­îc",26} },
                
	},
}
tbConfig[3] = 
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C¸c H¹ H·y Chän Lo¹i Trang Søc Muèn N©ng CÊp"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"[Long ChiÕn Vu D· - KiÕm DiÖu 1] => [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 2]",4} },
		--{"AddDialogOpt",	{"[Long ChiÕn Vu D· - KiÕm DiÖu CÊp 6] => [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 7]",5} },
		--{"AddDialogOpt",	{"[Long ChiÕn Vu D· - KiÕm DiÖu CÊp 7] => [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 8]",6} },
		--{"AddDialogOpt",	{"[Long ChiÕn Vu D· - KiÕm DiÖu CÊp 8] => [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 9]",7} },
	--	{"AddDialogOpt",	{"[Long ChiÕn Vu D· - KiÕm DiÖu CÊp 9] => [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 10]",8} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Long ChiÕn Vu D· - KiÕm DiÖu CÊp 1",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Long ChiÕn Vu D· - KiÕm DiÖu CÊp 1",{tbProp={0,9352},nQuality=1},1} },
		{"AddOneMaterial",	{"§å Phæ Trang Søc",{tbProp={6,1,8011,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},1500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},100} },

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,9353},},1,"[N©ng CÊp Ngo¹i Trang] [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 2]"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Long ChiÕn Vu D· - KiÕm DiÖu CÊp 7",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Long ChiÕn Vu D· - KiÕm DiÖu CÊp 6",{tbProp={0,9357},nQuality=1},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1,0,0},},2000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,9353},},1,"[N©ng CÊp Ngo¹i Trang] [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 7]"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Long ChiÕn Vu D· - KiÕm DiÖu CÊp 8",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Long ChiÕn Vu D· - KiÕm DiÖu CÊp 7",{tbProp={0,9358},nQuality=1},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1,0,0},},2000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,9359},},1,"[N©ng CÊp Ngo¹i Trang] [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 8]"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Long ChiÕn Vu D· - KiÕm DiÖu CÊp 9",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Long ChiÕn Vu D· - KiÕm DiÖu CÊp 8",{tbProp={0,3995},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},16000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},8000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3996},},1,"[N©ng CÊp Ngo¹i Trang] [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 9]"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Long ChiÕn Vu D· - KiÕm DiÖu CÊp 10",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Long ChiÕn Vu D· - KiÕm DiÖu CÊp 9",{tbProp={0,3996},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},9999} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},150} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3997},},1,"[N©ng CÊp Ngo¹i Trang] [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 10]"} },
	},
}
tbConfig[9] = 
{
	nId = 9,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C¸c H¹ H·y Chän Lo¹i Ngò Hµnh Ên Muèn N©ng CÊp"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"[Ngò Hµnh Ên CÊp 1] => [Ngò Hµnh Ên CÊp 2]",10} },
	--	{"AddDialogOpt",	{"[Ngò Hµnh Ên CÊp 6] => [Ngò Hµnh Ên CÊp 7]",11} },
         --       {"AddDialogOpt",	{"[Ngò Hµnh Ên CÊp 7] => [Ngò Hµnh Ên CÊp 8]",12} },
	--	{"AddDialogOpt",	{"[Ngò Hµnh Ên CÊp 5] => [Ngò Hµnh Ên CÊp 6]",13} },
	--	{"AddDialogOpt",	{"[Ngò Hµnh Ên CÊp 9] => [Ngò Hµnh Ên CÊp 10]",14} },
--		{"AddDialogOpt",	{"[Ngò Hµnh Ên CÊp 10] => [T©n NhËm Ên Gi¸m H¹]",15} },
	--	{"AddDialogOpt",	{"[T©n NhËm Ên Gi¸m H¹] => [T©n NhËm Ên Gi¸m Trung]",16} },
	--	{"AddDialogOpt",	{"[T©n NhËm Ên Gi¸m Trung => [T©n NhËm Ên Gi¸m Th­îng]",17} },
	},
}
tbConfig[10] = 
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ngò Hµnh Ên CÊp 1",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Ngò Hµnh Ên CÊp 1",{tbProp={0,9339},nQuality=1},1} },
		{"AddOneMaterial",	{"§å Phæ Ên",{tbProp={6,1,8012,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},1500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,9340},},1,"Ngò Hµnh Ên CÊp 2"} },
	},
}
tbConfig[11] = 
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ngò Hµnh Ên CÊp 7",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
                {"AddOneMaterial",	{"Ngò Hµnh Ên CÊp 6",{tbProp={0,9344},nQuality=1},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1,0,0},},2000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,9345},},1,"[N©ng CÊp Ngo¹i Trang] [Ngò Hµnh Ên CÊp 7]"} },
	},
}
tbConfig[12] = 
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ngò Hµnh Ên CÊp 8",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
               {"AddOneMaterial",	{"Ngò Hµnh Ên CÊp 7",{tbProp={0,9345},nQuality=1},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1,0,0},},2000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},2000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,9346},},1,"[N©ng CÊp Ngo¹i Trang] [Ngò Hµnh Ên CÊp 8]"} },
	},
}
tbConfig[13] = 
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ngò Hµnh Ên CÊp 9",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Ngò Hµnh Ên CÊp 5",{tbProp={0,4901},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},10000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},10000} },
                {"AddOneMaterial",	{"HuyÒn Thñy V¨n Tinh- Êt [CÊp 6]",{tbProp={6,1,30305,1,0,0},},2000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,4902},},1,"[N©ng CÊp Ngo¹i Trang] [Ngò Hµnh Ên CÊp 6]"} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ngò Hµnh Ên CÊp 10",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Ngò Hµnh Ên CÊp 9",{tbProp={0,3958},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},15000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},150} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3959},},1,"[N©ng CÊp Ngo¹i Trang] [Ngò Hµnh Ên CÊp 10]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T©n NhËm Ên Gi¸m H¹",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Ngò Hµnh Ên CÊp 10",{tbProp={0,3959},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},18000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},180} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3960},},1,"[N©ng CÊp Ngo¹i Trang] [T©n NhËm Ên Gi¸m H¹]"} },
	},
}
tbConfig[16] = 
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T©n NhËm Ên Gi¸m Trung",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"T©n NhËm Ên Gi¸m H¹",{tbProp={0,3960},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},21000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},210} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3961},},1,"[N©ng CÊp Ngo¹i Trang] [T©n NhËm Ên Gi¸m Trung]"} },
	},
}
tbConfig[17] = 
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T©n NhËm Ên Gi¸m Th­îng",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"T©n NhËm Ên Gi¸m trung",{tbProp={0,3961},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},24000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3962},},1,"[N©ng CÊp Ngo¹i Trang] [T©n NhËm Ên Gi¸m Th­îng]"} },
	},
}
tbConfig[18] = 
{
	nId = 18,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C¸c H¹ H·y Chän Lo¹i Trang Søc Muèn N©ng CÊp"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		-- {"AddDialogOpt",	{"[Tói FF HuyÒn Kim] => [Tói FF V« Cùc]",19} },
		-- {"AddDialogOpt",	{"[Tói FF V« Cùc] => [Tói FF V« Cùc Tinh S¶o]",20} },
		{"AddDialogOpt",	{"[Phi Phong PhÖ Quang] => [Phi Phong KhÊp ThÇn]",21} },
		--{"AddDialogOpt",	{"[Phi Phong KhÊp ThÇn] => [Phi Phong K×nh Thiªn]",22} },
	--	{"AddDialogOpt",	{"[Phi Phong K×nh Thiªn] => [Phi Phong V« Cùc]",23} },
	--	{"AddDialogOpt",	{"[Phi Phong V« Cùc] => [Phi Phong + 3 Kü N¨ng]",24} },
	},
}
tbConfig[19] = 
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong huyen kim",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Tói FF HuyÒn Kim",{tbProp={6,1,30146,1,0,0},},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},3000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},3000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30147,1,0,0},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong huyenkim]"} },
	},
}
tbConfig[20] = 
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tói FF V« Cùc",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"[Tói FF V« Cùc",{tbProp={6,1,30147,1,0,0},},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},5000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},5000 }},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30148,1,0,0},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong vo cuc]"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong PhÖ Quang",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi phong PhÖ Quang",{tbProp={0,9409},nQuality=1},1} },
		{"AddOneMaterial",	{"§å Phæ Phi Phong",{tbProp={6,1,8013,1},},1} },
		{"AddOneMaterial",	{"Tö Tinh Kho¸ng Th¹ch",{tbProp={6,1,8000,1},},1500} },
		{"AddOneMaterial",	{"Hµn ThiÕt Ngµn N¨m",{tbProp={6,1,8014,1},},10} },
		{"AddOneMaterial",	{"Kim Nguyªn B¶o",{tbProp={4,1496,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
	},
	tbActition = 
	{
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,9420,1,0,0},},1,"Phi phong KhÊp ThÇn"} },
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,9420},},1,"Phi phong KhÊp ThÇn"} },
	},
}
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong K×nh Thiªn",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong KhÊp ThÇn",{tbProp={0,3935},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},16000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},8000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3936},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong K×nh Thiªn]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong V« Cùc",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong K×nh Thiªn",{tbProp={0,3936},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},15000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},150} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,3937},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong V« Cùc]"} },
	},
}
tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi Phong + 3 Kü N¨ng",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Phi Phong V« Cùc",{tbProp={0,3937},nQuality=1},1} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},18000} },
		{"AddOneMaterial",	{"Kim Nguyªn b¶o",{tbProp={4,343,1,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,5980},},1,"[N©ng CÊp Ngo¹i Trang] [Phi Phong + 3 Kü N¨ng]"} },
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"GhÐp Tói Xu",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},21000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nLeftTime,tbProp={6,1,30338,1,0,0},},1,"[N©ng CÊp Ngo¹i Trang] [GhÐp Tói Xu]"} },
	},
}
tbConfig[26] = 
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",	
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"®çi Hµnh HiÖp Lªnh",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nLeftTime,tbProp={6,1,2566,1,0,0},},1,"[N©ng CÊp Ngo¹i Trang] [®çi Hµnh HiÖp Lªnh]"} },
	},
}
tbConfig[27] = 
{
	nId = 27,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C¸c H¹ H·y Chän Lo¹i MÆt N¹ Muèn N©ng CÊp"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"[MÆt N¹ Så Ph­îng] => [MÆt N¹ TiÒm Long]",28} },
	--	{"AddDialogOpt",	{"[Long ChiÕn Vu D· - KiÕm DiÖu CÊp 3] => [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 4]",29} },
		--{"AddDialogOpt",	{"[Long ChiÕn Vu D· - KiÕm DiÖu CÊp 4] => [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 5]",30} },
		--{"AddDialogOpt",	{"[Long ChiÕn Vu D· - KiÕm DiÖu CÊp 8] => [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 9]",31} },
	--	{"AddDialogOpt",	{"[Long ChiÕn Vu D· - KiÕm DiÖu CÊp 9] => [Long ChiÕn Vu D· - KiÕm DiÖu CÊp 10]",32} },
	},
}
tbConfig[28] = 
{
	nId = 28,
	szMessageType = "CreateCompose",
	szName = "N©ng CÊp Ngo¹i Trang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"MÆt N¹ Kinh Hong",2,2,2,0.04,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"C¸c H¹ Kh«ng §ñ Chç Trèng H·y S¾p XÕp L¹i Hµnh Trang"} },
		{"AddOneMaterial",	{"MÆt N¹ Så Ph­îng",{tbProp={0,9330},nQuality=1},1} },
		{"AddOneMaterial",	{"Tinh Ngäc",{tbProp={6,1,4807,1,0,0},},5000} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},8000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,nExpiredTime=nLeftTime,tbProp={0,9331},},1,"[N©ng CÊp Ngo¹i Trang] [MÆt N¹ TiÒm Long]"} },
	},
}

