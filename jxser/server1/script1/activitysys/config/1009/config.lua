Include("\\script\\activitysys\\config\\1009\\variables.lua")
tbConfig = {}
tbConfig[1] =
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "B�n �� ��nh qu�i nh�n m�nh chi�n c�ng l�nh 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		--{"NpcFunLib:CheckInMap",	{"321,322,340,225,226,227"} },
		{"NpcFunLib:CheckNormalMonster",	{"50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"ThisActivity:DropItemRandom",	{nil} },
	},
}

tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "ClickNpc",
	szName = "click npc name lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch� Ti�m"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua m�nh Chi�n C�ng L�nh 2",3} },
		--{"AddDialogOpt",	{"Mua t�i m�ng chi�n th�ng",11} },
		{"AddDialogOpt",	{"Nh�n v�ng s�ng v� x2 t� 0h00 30-4 ��n 23h59 30-4 ",14} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "CreateCompose",
	szName = "compose shijin",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua m�nh chi�n c�ng l�nh 2",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},9000} }, -- Hoa son
		--{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},5000} }, -- Tan thu
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_COMMAND_PIECE_2,1,EVENT_LOG_TITLE,"MuaManhChienCongLenh1"} },
	},
}
tbConfig[4] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Ch��ng ��ng Cung N�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch��ng ��ng Cung N�"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta mu�n ��i Chi�c M� H�a B�nh",5} },		
		{"AddDialogOpt",	{"Ta mu�n ��i Chi�c M� T� Do",7} },		
		--{"AddDialogOpt",	{"Xem TOP 3 s� d�ng v�t ph�m Event",12} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "��i Chi�c M� H�a B�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chi�c M� H�a B�nh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"M�nh chi�n c�ng 1",ITEM_COMMAND_PIECE_1,1} },
		{"AddOneMaterial",	{"M�nh chi�n c�ng 2",ITEM_COMMAND_PIECE_2,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_HAT_PEACE,1,EVENT_LOG_TITLE,"DoiChiecMuHoaBinh"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "��i Chi�c M� Tai B�o",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chi�c M� Tai B�o",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"M�nh chi�n c�ng 1",ITEM_COMMAND_PIECE_1,1} },
		{"AddOneMaterial",	{"T�i m�ng chi�n th�ng",ITEM_BAG_VICTORY,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_EAR_HAT_DIRT,1,EVENT_LOG_TITLE,"DoiChiecMuTaiBeo"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "��i Chi�c M� T� Do",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chi�c M� T� Do",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"M�nh chi�n c�ng 1",ITEM_COMMAND_PIECE_1,1} },
		{"AddOneMaterial",	{"T�i m�ng chi�n th�ng",ITEM_BAG_VICTORY,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_HAT_FREEDOM,1,EVENT_LOG_TITLE,"DoiChiecMuTuDo"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "ItemScript",
	szName = "S� d�ng Chi�c M� Tai B�o",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30197,1,0,0},}},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		--{"PlayerFunLib:CheckFreeBagCell",	{8,"default"} },
		--{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d�ng t�i c�c th�nh th� v� c�c t�n th� th�n."} },		
		--{"tbVNG_BitTask_Lib:CheckBitTaskValue", {tbBITTSK_LIMIT_HAT_USING, 1000, "M�i nh�n v�t ch� ���c s� d�ng v�t ph�m n�y 1000 l�n.", "<"}},	
		--{"ThisActivity:UseLimitHat", {1}},
	},
	tbActition = 
	{		
		--{"PlayerFunLib:AddExp",	{50000000,0,EVENT_LOG_TITLE,"SuDungMuTaiBeo"} },
		--{"ThisActivity:UseHatDirt",	{nil} },
	},
}
tbConfig[9] = 
{
	nId = 9,
	szMessageType = "ItemScript",
	szName = "S� d�ng Chi�c M� T� Do",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30199,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		--{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d�ng t�i c�c th�nh th� v� c�c t�n th� th�n."} },		
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {tbBITTSK_LIMIT_HAT_USING, 1000, "M�i nh�n v�t ch� ���c s� d�ng v�t ph�m n�y 1000 l�n.", "<"}},	
		--{"ThisActivity:UseLimitHat", {1}},
	},
	tbActition = 
	{		
		{"PlayerFunLib:AddExp",	{100000,0,EVENT_LOG_TITLE,"SuDungMuTuDo"} },
		{"ThisActivity:UseHatFreedom",	{nil} },
		{"tbVNG_BitTask_Lib:addTask", {tbBITTSK_LIMIT_HAT_USING, 1}},
	},
}
tbConfig[10] = 
{
	nId = 10,
	szMessageType = "ItemScript",
	szName = "S� d�ng Chi�c M� H�a B�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30198,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		--{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d�ng t�i c�c th�nh th� v� c�c t�n th� th�n."} },		
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {tbBITTSK_LIMIT_HAT_PEACE_USING, 1000, "M�i nh�n v�t ch� ���c s� d�ng v�t ph�m n�y 1000 l�n.", "<"}},	
	},
	tbActition = 
	{		
		{"PlayerFunLib:AddExp",	{200000,0,EVENT_LOG_TITLE,"SuDungMuHoaBinh"} },
		{"ThisActivity:UseHatPeace",	{nil} },
		{"tbVNG_BitTask_Lib:addTask", {tbBITTSK_LIMIT_HAT_PEACE_USING, 1}},
	},
}

tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "compose shijin",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�i m�ng chi�n th�ng",1,1,1,0.02,0,50},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		--{"AddOneMaterial",	{"Ti�n ��ng",ITEM_COIN,10} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{ITEM_BAG_VICTORY,1,EVENT_LOG_TITLE,"MuaTuiMungChienThang"} },
	},
}

tbConfig[12] =
{
	nId = 12,
	szMessageType = "nil",
	szName = "Xem TOP 3 s� d�ng v�t ph�m event",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{		
	},
	tbActition = 
	{
		{"ThisActivity:XemTOP3Event",	{nil} },
	},
}

tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "OnLogin",
	szName = "Ng��i ch�i tr�c tuy�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"ThisActivity:PlayerOnLogin",	{nil} },
	},
}

tbConfig[14] =
{
	nId = 14,
	szMessageType = "nil",
	szName = "Nhan X2 kinh nghiem",
	nStartDate = 201804300000,
	nEndDate  = 201804302359,
	tbMessageParam = {nil},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"ThisActivity:NhanNhanDoiKinhNghiem",	{nil} },
	},
}

-- Thu thap nguyenlieu tham gia hoat dong

tbConfig[15] = --T�ng kim 1000 �i�m
{
	nId = 15,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim trung c�p 1000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},10,"Event30thang4\tTongKim1000"} },
	},
}
tbConfig[16] = --T�ng kim 3000 �i�m
{
	nId = 16,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim trung c�p 3000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,2},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},20,"Event30thang4\tTongKim3000"} },
	},
}
tbConfig[17] =
{
	nId = 17,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 17",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},5,"Event30thang4\tVuotAi17"} },
	},
}
tbConfig[18] =
{
	nId = 18,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 28",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},10,"Event30thang4\tVuotAi28"} },
	},
}
tbConfig[19] = --thu� t�c ��i ��u l�nh
{
	nId = 19,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t thu� t�c ��i ��u l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},4,"Event30thang4\tTieuDietDaiThuyTac"} },
	},
}

tbConfig[20] = --Th�y t�c ��u l�nh
{
	nId = 20,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t ch�t 1 th�y t�c ��u l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},2,"Event30thang4\tTieuDietThuyTac"} },
	},
}

tbConfig[21] = --Boss tieu
{
	nId = 21,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t boss th� gi�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"523,513,511"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30200,1,0,0},nExpiredTime=NGAYHETHAN30t4,},2,"Event30thang4\tBosssTieuHoangKim"} },
	},
}

