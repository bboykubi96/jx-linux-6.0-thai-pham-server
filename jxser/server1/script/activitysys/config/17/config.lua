tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ItemScript",
	szName = "S� d�ng th�n b� b�o r��ng c�a d� t�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2374,1,-1,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,2348,1,-1,0},},6,"C�n %d Huy�n Thi�n Ch�y, c�c h� �em kh�ng �� s� l��ng!"} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{71,1,"B�o r��ng th�n b� c�a D� T�u"} },
		{"PlayerFunLib:ConsumeEquiproomItem",	{{tbProp={6,1,2348,1,-1,0},},6} },
		{"ThisActivity:Jiluxiaohao_yesou",	{nil} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "ItemScript",
	szName = "S� d�ng l� bao c�ng th�nh chi�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2377,1,-1,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{72,1,"C�ng Th�nh Chi�n L� Bao"} },
		{"ThisActivity:Jiluxiaohao_chengzhan",	{nil} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "ItemScript",
	szName = "S� d�ng ch� t�n m�t b�o",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2375,-1,-1,-1},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,2348,1,-1,0},},12,"C�n %d Huy�n Thi�n Ch�y, c�c h� �em kh�ng �� s� l��ng!"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{73,1,"Ch� T�n B� B�o"} },
		{"PlayerFunLib:ConsumeEquiproomItem",	{{tbProp={6,1,2348,1,-1,0},},12} },
		{"ThisActivity:Jiluxiaohao_zhizun",	{nil} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "ItemScript",
	szName = "ʹ��ˮ���ĲƱ�(��)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2376,1,-1,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{74,1,"T�i B�o Th�y T�c"} },		
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "ItemScript",
	szName = "S� d�ng phong h�a c�m nang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2373,1,-1,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{75,1,"Phong H�a C�m Nang"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "��c c� thi�n phong ch�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckName",	{"��c C� Thi�n Phong"} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2375,1,0,0},},20,"100"} },--chi ton bi bao
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "BOSS ch�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2375,1,0,0},},10,"100"} },--chi ton bi bao
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "nil",
	szName = "ˮ��ͷ������(��)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[9] = --Tieu diet Dai thuy tac dau linh
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "ˮ����ͷ��������1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{337} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2743,1,0,0},},3,"100"} }, --bao ruong thuy tac
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2125,1,0,0},},3,"100"} }, --2 ngu hanh ky thach
		--�i�u ch�nh ph�n th��ng r�i them ra t� boss thu� t�c ��i ��u l�nh - Modified By DinhHQ - 20120523
		{"ThisActivity:VnFFBigBossDrop",	{nil}},
		{"PlayerFunLib:AddExp",	{1000000,0,"Event_G7TangThemPLD","Hoatdongthuongxuyen\ttrieutieudietdaithuytacdaulinh"} },
	},
}
tbConfig[10] =  --Tieu diet Dai thuy tac dau linh
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "ˮ����ͷ��������23",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"338,339"} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2743,1,0,0},},3,"100"} }, --bao ruong thuy tac
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2125,1,0,0},},3,"100"} }, --1 ngu hanh ky thach
		--�i�u ch�nh ph�n th��ng r�i ra t� boss thu� t�c ��i ��u l�nh - Modified By DinhHQ - 20120523
		--{"ThisActivity:VnFFBigBossDrop",	{nil},},
		{"PlayerFunLib:AddExp",	{1000000,0,"Event_G7TangThemPLD","Hoatdongthuongxuyen\ttrieutieudietdaithuytacdaulinh"} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "nil",
	szName = "null",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[12] = --Su dung bao ruong Thuy Tac
{
	nId = 12,
	szMessageType = "ItemScript",
	szName = "ʹ��ˮ������",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2743,1,0,0},}},
	tbCondition = 
	{
		--{"PlayerFunLib:CheckItemInBag",	{{tbProp={6,1,2744,1,0,0},},1,"C�n m�t c�i %d Ch�a Kh�a Nh� �"} },
		{"ThisActivity:VnUsePirateBox",	{nil}}
	},
	tbActition = 
	{
		--{"PlayerFunLib:ConsumeEquiproomItem",	{{tbProp={6,1,2744,1,0,0},},1} },
		--	{"ThisActivity:GiveAward",	{"shuizeibaoxiang",1,"use_shuizeibaoxiang"} },
		--{"ThisActivity:Jiluxiaohao_shuizexiangzi",	{nil} },		
	},
}

tbConfig[13] =
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "��i tho�i v�i Nguy�t Ca V� V�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nguy�t Ca V� V�"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Nh�n nguy�t ca l�nh",14} },
		--{"AddDialogOpt",	{"��i y�u quy�t k� n�ng 150",15} },
	},
}

tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Nh�n nguy�t ca l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Nh�n nguy�t ca l�nh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},500000000} },
		{"AddOneMaterial",	{"V� L�m M�t T�ch",{tbProp={6,1,26,1,0,0},},20} },
		{"AddOneMaterial",	{"T�y T�y Kinh",{tbProp={6,1,22,1,0,0},},20} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2908,1,0,0},},1,"NhanNguyetCaLenh", "NhanNguyetCaLenh"} },
	},
}

tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "��i y�u quy�t k� n�ng 150",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i y�u quy�t k� n�ng 150",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"Th�t tinh th�ch",{tbProp={6,1,4334,1,0,0},},100} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},600} },
		{"AddOneMaterial",	{"��i th�nh b� k�p 90",{tbProp={6,1,2424,1,0,0},},1} },
		{"AddOneMaterial",	{"��i th�nh b� k�p 120",{tbProp={6,1,2425,1,0,0},},1} },
		--{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},10000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30165,1,0,0}},1,"DoiYeuQuyetKyNang150", "DoiYeuQuyetKyNang150"} },
	},
}

tbConfig[16] =
{
	nId = 16,
	szMessageType = "ClickNpc",
	szName = "��i tho�i v�i Nguy�t Ca ��o Ch�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nguy�t Ca ��o Ch�"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Ho�n th�nh nhi�m v� k� n�ng 150",17} },
	},
}

tbConfig[17] = 
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Ho�n th�nh nhi�m v� k� n�ng 150",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ho�n th�nh nhi�m v� k� n�ng 150",1,1,1,0.02},
	tbCondition = 
	{
		--{"ThisActivity:CheckTask",	{TSK_DoiBiKip150,1,"M�i nh�n v�t ch� ���c ��i 1 l�n","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"Y�u c�u ��ng c�p 150 tr� l�n",">="} },
		{"PlayerFunLib:CheckTransLifeCount",	{2,"Y�u c�u tr�ng sinh 2 tr� l�n",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"Nguy�t Ca L�nh",{tbProp={6,1,2908,1,0,0},},1} },
		{"AddOneMaterial",	{"Y�u quy�t k� n�ng 150",{tbProp={6,1,30165,1,0,0},},1} },
	},
	tbActition = 
	{
		--{"ThisActivity:AddTask",	{TSK_DoiBiKip150,1} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4286,1,0,0}},1,"HoanThanhNhiemVu150", "HoanThanhNhiemVu150"} },
	},
}

tbConfig[18] =
{
	nId = 18,
	szMessageType = "ClickNpc",
	szName = "��i tho�i v�i B�t M� �n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�t M� �n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"��i ng�a X�ch Th� l�y Chi�u D�",19} },
		--{"AddDialogOpt",	{"��i ng�a � V�n l�y Chi�u D�",20} },
		--{"AddDialogOpt",	{"��i ng�a ��ch L� l�y Chi�u D�",21} },
		--{"AddDialogOpt",	{"��i ng�a Tuy�t �nh l�y Chi�u D�",22} },
		{"AddDialogOpt",	{"��i 200 ng� h�nh k� th�ch l�y Phi V�n",23} },
		{"AddDialogOpt",	{"��i 500 ng� h�nh k� th�ch l�y B�n Ti�u",24} },
		--{"AddDialogOpt",	{"��i ng�a B�n Ti�u l�y Phi�n V�",25} },
	},
}

tbConfig[19] = 
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "��i ng�a X�ch Th� l�y Chi�u D�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i ng�a X�ch Th� l�y Chi�u D�",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"X�ch Th�",{tbProp={0,10,5,2,0,0},},1} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},5000000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,5,5,0,0}},1,"DoiXichThoLayChieuDa", "DoiXichThoLayChieuDa"} },
	},
}

tbConfig[20] = 
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "��i ng�a � V�n l�y Chi�u D�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i ng�a � V�n l�y Chi�u D�",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"� V�n",{tbProp={0,10,5,1,0,0},},1} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},5000000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,5,5,0,0}},1,"DoiXichThoLayChieuDa", "DoiXichThoLayChieuDa"} },
	},
}

tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "��i ng�a ��ch L� l�y Chi�u D�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i ng�a ��ch L� l�y Chi�u D�",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"��ch L�",{tbProp={0,10,5,4,0,0},},1} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},5000000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,5,5,0,0}},1,"DoiXichThoLayChieuDa", "DoiXichThoLayChieuDa"} },
	},
}

tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "��i ng�a Tuy�t �nh l�y Chi�u D�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i ng�a ��ch L� l�y Chi�u D�",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"Tuy�t �nh",{tbProp={0,10,5,3,0,0},},1} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},5000000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,5,5,0,0}},1,"DoiXichThoLayChieuDa", "DoiXichThoLayChieuDa"} },
	},
}

tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "��i 200 ng� h�nh k� th�ch l�y Phi V�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i 200 ng� h�nh k� th�ch l�y Phi V�n",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		--{"AddOneMaterial",	{"Chi�u D� 1 con",{tbProp={0,10,5,5,0,0},},1} },
		--{"AddOneMaterial",	{"Tinh h�ng b�o th�ch",{tbProp={4,353,1,1,0,0},},3} },
		--{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},5} },
		--{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},5} },
		--{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},5} },
		--{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},70000000} },
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch 200 c�i",{tbProp={6,1,2125,1,0,0},},200} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,8,1,5,0}},1,"DoiChieuDaLayPhiVan", "DoiChieuDaLayPhiVan"} },
	},
}

tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "��i ng�a B�n Ti�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i 500 NHKT ��i ng�a B�n Ti�u",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		--{"AddOneMaterial",	{"Phi V�n",{tbProp={0,10,8,1,5,0},},3} },
		--{"AddOneMaterial",	{"Tinh h�ng b�o th�ch",{tbProp={4,353,1,1,0,0},},5} },
		--{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},3} },
		--{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},3} },
		--{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},3} },
		--{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},700000000} },
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch 500 c�i",{tbProp={6,1,2125,1,0,0},},500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,6,1,5,0}},1,"DoiLayBonTieu", "DoiLayBonTieu"} },
	},
}

tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "��i ng�a B�n Ti�u l�y Phi�n V�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i ng�a B�n Ti�u l�y Phi�n V�",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"B�n Ti�u",{tbProp={0,10,6,1,5,0},},1} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},5} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},5} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},5} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},5} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},800000000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,7,1,5,0}},1,"DoiBonTieuLayPhienVu", "DoiBonTieuLayPhienVu"} },
	},
}

tbConfig[26] =
{
	nId = 26,
	szMessageType = "ClickNpc",
	szName = "��i tho�i v�i ��i S� L�o L�o",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i S� L�o L�o"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"��i Trang b� H�ng �nh",37} },
		--{"AddDialogOpt",	{"��i Trang b� ��ng S�t",42} },
		--{"AddDialogOpt",	{"��i Trang b� ��nh Qu�c",29} },
		--{"AddDialogOpt",	{"��i Trang b� Nhu T�nh",30} },
		--{"AddDialogOpt",	{"��i Trang b� Hi�p C�t",31} },
		--{"AddDialogOpt",	{"��i Trang b� An Bang",32} },
		--{"AddDialogOpt",	{"��i Trang b� V� Danh",47} },
		--{"AddDialogOpt",	{"��i Trang b� H�ng �nh 30 ng�y",34} },
		--{"AddDialogOpt",	{"��i Trang b� ��ng S�t 30 ng�y",35} },
		--{"AddDialogOpt",	{"��i Trang b� An Bang 30 ng�y",36} },
		--{"AddDialogOpt",	{"��i ch�a kh�a Ho�ng Kim",50} },
		--{"AddDialogOpt",	{"Thu Ph�c Th�n M� X�ch Long C�u V�nh Vi�n",51} },
		--{"AddDialogOpt",	{"��i nh�c v��ng h�n th�ch ra Ti�n ��ng",52} },
		--{"AddDialogOpt",	{"��i KNB ra Ti�n ��ng",58} },
		--{"AddDialogOpt",	{"��i K� Huy�t ��ng",66} },
		--{"AddDialogOpt",	{"��i M�t n� v��ng gi�",70} },
	},
}

tbConfig[27] = 
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� H�ng �nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� H�ng �nh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,204},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,205},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,206},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,207},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
	},
}

tbConfig[28] = 
{
	nId = 28,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� ��ng S�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� ��ng S�t",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,143},nQuality = 1},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,144},nQuality = 1},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,145},nQuality = 1},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,146},nQuality = 1},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
	},
}

tbConfig[29] = 
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� ��nh Qu�c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� ��nh Qu�c",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,159},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,160},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,161},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,162},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,163},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[30] = 
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� Nhu T�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� Nhu T�nh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,190},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,191},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,192},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,193},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[31] = 
{
	nId = 31,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� Hi�p C�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� Hi�p C�t",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},1000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,186},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,187},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,188},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,189},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[32] = 
{
	nId = 32,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� An Bang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� An Bang",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},1500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,164},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,165},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,166},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,167},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[33] = 
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� V� Danh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� V� Danh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},8000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,141},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,142},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[34] = 
{
	nId = 34,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� H�ng �nh 30 ng�y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� H�ng �nh 30 ng�y",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,204},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,205},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,206},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,207},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHongAnh", "DoiNguHanhKyThachTrangBiHongAnh"} },
	},
}

tbConfig[35] = 
{
	nId = 35,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� ��ng S�t 30 ng�y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� ��ng S�t 30 ng�y",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,143},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,144},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,145},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,146},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiDongSat", "DoiNguHanhKyThachTrangBiDongSat"} },
	},
}

tbConfig[36] = 
{
	nId = 36,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� An Bang  30 ng�y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� An Bang  30 ng�y",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,164},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,165},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,166},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,167},nQuality = 1,nExpiredTime=60*24*30},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[37] =
{
	nId = 37,
	szMessageType = "CreateDialog",
	szName = "��i trang b� h�ng �nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i trang b� h�ng �nh",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�ng �nh Th�m Vi�n Uy�n",38} },
		{"AddDialogOpt",	{"H�ng �nh Ki�m B�i",39} },
		{"AddDialogOpt",	{"H�ng �nh M�c T�c",40} },
		{"AddDialogOpt",	{"H�ng �nh T� Chi�u",41} },
	},
}

tbConfig[38] = 
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� H�ng �nh Th�m Vi�n Uy�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� H�ng �nh Th�m Vi�n Uy�n",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,204},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[39] = 
{
	nId = 39,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� H�ng �nh Ki�m B�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� H�ng �nh Ki�m B�i",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,205},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[40] = 
{
	nId = 40,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� H�ng �nh M�c T�c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� H�ng �nh M�c T�c",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,206},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[41] = 
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� H�ng �nh T� Chi�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� H�ng �nh T� Chi�u",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,207},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[42] =
{
	nId = 42,
	szMessageType = "CreateDialog",
	szName = "��i trang b� ��ng S�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i trang b� ��ng S�t",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"��ng S�t B�ch Kim �i�u Long Gi�i",43} },
		{"AddDialogOpt",	{"��ng S�t B�ch Ng�c C�n Kh�n B�i",44} },
		{"AddDialogOpt",	{"��ng S�t B�ch Kim T� Ph�ng Gi�i",45} },
		{"AddDialogOpt",	{"��ng S�t Ph� Th�y Ng�c H�ng Khuy�n",46} },
	},
}

tbConfig[43] = 
{
	nId = 43,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� ��ng S�t B�ch Kim �i�u Long Gi�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� ��ng S�t B�ch Kim �i�u Long Gi�i",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,143},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[44] = 
{
	nId = 44,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� ��ng S�t B�ch Ng�c C�n Kh�n B�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� ��ng S�t B�ch Ng�c C�n Kh�n B�i",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,144},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[45] = 
{
	nId = 45,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� ��ng S�t B�ch Kim T� Ph�ng Gi�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� ��ng S�t B�ch Kim T� Ph�ng Gi�i",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,145},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[46] = 
{
	nId = 46,
	szMessageType = "CreateCompose",
	szName = "��i Trang b� ��ng S�t Ph� Th�y Ng�c H�ng Khuy�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Trang b� ��ng S�t Ph� Th�y Ng�c H�ng Khuy�n",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},250} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,146},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[47] =
{
	nId = 47,
	szMessageType = "CreateDialog",
	szName = "��i trang b� V� Danh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i trang b� V� Danh",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"V� Danh Ch� Ho�n",48} },
		{"AddDialogOpt",	{"V� Danh Gi�i Ch�",49} },
	},
}


tbConfig[48] = 
{
	nId = 48,
	szMessageType = "CreateCompose",
	szName = "V� Danh Ch� Ho�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>V� Danh Ch� Ho�n",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},7000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,141},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[49] = 
{
	nId = 49,
	szMessageType = "CreateCompose",
	szName = "V� Danh Gi�i Ch�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>V� Danh Gi�i Ch�",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},7000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,142},nQuality = 1},1,"DoiNguHanhKyThachTrangBiHoangKim", "DoiNguHanhKyThachTrangBiHoangKim"} },
	},
}

tbConfig[50] = 
{
	nId = 50,
	szMessageType = "CreateCompose",
	szName = "Ch�a kh�a Ho�ng Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch�a kh�a Ho�ng Kim",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6, 1, 4297, 1, 0, 0}},1,"DoiNguHanhKyThachChiaKhoaHK", "DoiNguHanhKyThachChiaKhoaHK"} },
	},
}

tbConfig[51] = 
{
	nId = 51,
	szMessageType = "CreateCompose",
	szName = "Th�n m� X�ch Long C�u V�nh Vi�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Th�n m� X�ch Long C�u V�nh Vi�n",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},3000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,9,10,0,0,0}},1,"DoiNguHanhKyThachXichLongCau", "DoiNguHanhKyThachXichLongCau"} },
	},
}

tbConfig[52] = 
{
	nId = 52,
	szMessageType = "CreateCompose",
	szName = "��i Nh�c V��ng H�n Th�ch",
	nStartDate = 201509100000,
	nEndDate  = 201602160000,
	tbMessageParam = {"<npc>��i Nh�c V��ng H�n Th�ch",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"Nh�c v��ng h�n th�ch",{tbProp={4,507,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4, 417, 1, 1, 0, 0}},50,"DoiNVHTLayXu", "DoiNVHTLayXu"} },
	},
}

tbConfig[53] =
{
	nId = 53,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 17",
	nStartDate = 201509100000,
	nEndDate  = 201903010000,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2742,1,0,0},},2,"BaoRuongVuotAi\tVuotAi17"} },
		{"PlayerFunLib:AddExp",	{2000000,0,"Event_G7TangThem","Hoatdongthuongxuyen\tVuotAi1"} },
	},
}

tbConfig[54] =
{
	nId = 54,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 28",
	nStartDate = 201509100000,
	nEndDate  = 201903010000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2742,1,0,0},},3,"BaoRuongVuotAi\tVuotAi28"} },
		{"PlayerFunLib:AddExp",	{2000000,0,"Event_G7TangThem","Hoatdongthuongxuyen\tVuotAi1"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4344,1,0,0},},10,"ManhTSTL\tVuotAi28"} },
	},
}

tbConfig[55] =
{
	nId = 55,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 10",
	nStartDate = 201509100000,
	nEndDate  = 201603010000,
	tbMessageParam = {"10"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{tbProp={4, 417, 1, 1, 0, 0},},10,"Hoatdongthuongxuyen\tVuotAi10"} },
	},
}

tbConfig[56] =
{
	nId = 56,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 20",
	nStartDate = 201509100000,
	nEndDate  = 201603010000,
	tbMessageParam = {"20"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{tbProp={4, 417, 1, 1, 0, 0},},10,"Hoatdongthuongxuyen\tVuotAi20"} },
	},
}

tbConfig[56] = --qua ai 27 duoc ngu hanh ky thach
{
	nId = 56,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 27",
	nStartDate = 201509100000,
	nEndDate  = 201603010000,
	tbMessageParam = {"27"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,2125,1,0,0},},10,"Hoatdongthuongxuyen\tVuotAi27"} },
	},
}

tbConfig[57] =
{
	nId = 57,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 1",
	nStartDate = 201509100000,
	nEndDate  = 201603010000,
	tbMessageParam = {"1"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:AddExp",	{2000000,0,"Event_G7TangThem","Hoatdongthuongxuyen\tVuotAi1"} },
	},
}

tbConfig[58] = 
{
	nId = 58,
	szMessageType = "CreateCompose",
	szName = "��i Kim Nguy�n B�o",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i Kim Nguy�n B�o",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"Kim Nguy�n B�o",{tbProp={4,343,1,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4, 417, 1, 1, 0, 0}},20,"DoiKNBLayXu", "DoiKNBLayXu"} },
	},
}

tbConfig[59] =
{
	nId = 59,
	szMessageType = "ClickNpc",
	szName = "��i tho�i v�i C� Gi�i Ti�n Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C� Gi�i Ti�n Sinh"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"H�p th�nh Vi Di�u Chi Y",60} },
		--{"AddDialogOpt",	{"H�p th�nh Tinh Chu�n Chi Ngoa",61} },
		--{"AddDialogOpt",	{"N�ng c�p Ho�n M� Vi Di�u Chi Y",71} },
		--{"AddDialogOpt",	{"N�ng c�p Ho�n M� Chu�n Chi Ngoa",72} },

		--{"AddDialogOpt",	{"H�p th�nh Th�n M� Si�u Quang",62} },
		--{"AddDialogOpt",	{"H�p th�nh Th�n M� X�ch Long C�u",63} },
		--{"AddDialogOpt",	{"H�p th�nh Th�n M� H�n Huy�t Long C�u",64} },
		
		--{"AddDialogOpt",	{"H�p th�nh T�i C�n Kh�n",69} },
	},
}

tbConfig[60] = 
{
	nId = 60,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Vi Di�u Chi Y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>H�p th�nh Vi Di�u Chi Y",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"M�nh Vi Di�u Chi Y",{tbProp={4,1496,1,1,0,0},},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,214},nQuality = 1},1,"HopThanhViDieuChiY", "HopThanhViDieuChiY"} },
	},
}

tbConfig[61] = 
{
	nId = 61,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Tinh Chu�n Chi Ngoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>H�p th�nh Tinh Chu�n Chi Ngoa",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"M�nh Vi Di�u Chi Y",{tbProp={4,1497,1,1,0,0},},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,215},nQuality = 1},1,"HopThanhViDieuChiY", "HopThanhViDieuChiY"} },
	},
}

tbConfig[62] = 
{
	nId = 62,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Th�n M� Si�u Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>H�p th�nh Th�n M� Si�u Quang",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"M�nh Si�u Quang",{tbProp={4,1498,1,1,0,0},},300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,13,10,0,0,0},},1,"HopThanhSieuQuang", "HopThanhSieuQuang"} },
	},
}

tbConfig[63] = 
{
	nId = 63,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Th�n M� X�ch Long C�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>H�p th�nh Th�n M� X�ch Long C�u",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"M�nh X�ch Long C�u",{tbProp={4,1499,1,1,0,0},},200} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,9,10,0,0,0},},1,"HopThanhXichLongCau", "HopThanhXichLongCau"} },
	},
}

tbConfig[64] = 
{
	nId = 64,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Th�n M� H�n Huy�t Long C�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>H�p th�nh Th�n M� H�n Huy�t Long C�u",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{50,"default"} },
		{"AddOneMaterial",	{"M�nh H�n Huy�t Long C�u",{tbProp={4,1500,1,1,0,0},},500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,18,10,0,0,0},},1,"HopThanhHanHuyetLongCau", "HopThanhHanHuyetLongCau"} },
	},
}
tbConfig[65] =  --Tieu diet thuy tac dau linh
{
	nId = 65,
	szMessageType = "NpcOnDeath",
	szName = "Tieu diet thuy tac dau linh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"725"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2743,1,0,0},},1,"100"} }, --bao ruong thuy tac
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2125,1,0,0},},1,"100"} }, --1 ngu hanh ky thach
		{"ThisActivity:VnFFBigBossDropTieu",	{nil}},
	},
}

tbConfig[66] = 
{
	nId = 66,
	szMessageType = "CreateCompose",
	szName = "��i K� Huy�t ��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i K� Huy�t ��ng",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ng� h�nh k� th�ch",{tbProp={6,1,2125,1,0,0},},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4307,1,0,0}},1,"DoiKeHuyetDang", "DoiKeHuyetDang"} },
	},
}

tbConfig[67] =
{
	nId = 67,
	szMessageType = "ClickNpc",
	szName = "��i tho�i v�i Ch��ng ��ng Cung N�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch��ng ��ng Cung N�"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua C�n Kh�n L�nh",68} },
	},
}

tbConfig[68] = 
{
	nId = 68,
	szMessageType = "CreateCompose",
	szName = "Mua C�n Kh�n L�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Mua C�n Kh�n L�nh",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},1000000} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},7} },
		{"AddOneMaterial",	{"T� Th�y Tinh",{tbProp={4,239,1,1,0,0},},7} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},7} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},7} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4309,1,0,0}},1,"MuaCanKhonLenh", "MuaCanKhonLenh"} },
	},
}

tbConfig[69] = 
{
	nId = 69,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh T�i C�n Kh�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>H�p th�nh T�i C�n Kh�n",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"K� Huy�t ��ng",{tbProp={6,1,4307,1,0,0},},1} },
		{"AddOneMaterial",	{"Tu Th�n Ho�n",{tbProp={6,1,4308,1,0,0},},1} },
		{"AddOneMaterial",	{"C�n Kh�n L�nh B�i",{tbProp={6,1,4309,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4310,1,0,0}},1,"HopThanhTuiCanKhon", "HopThanhTuiCanKhon"} },
	},
}
tbConfig[70] = --һ��ϸ��
{
	nId = 70,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� V��ng Gi�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V��ng Gi�",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},150} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,561,1,0,0},nExpiredTime=60*24*30,},1,"[Ho�t ��ng][��i m�t n� v��ng gi�]"} },
	},
}

tbConfig[71] = --һ��ϸ��
{
	nId = 71,
	szMessageType = "CreateCompose",
	szName = "Ho�n M� Vinh Di�u Chi Y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ho�n M� Vinh Di�u Chi Y",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Trang b� Vinh Di�u Chi Y",{tbProp={0,214},nQuality = 1},1} },
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0}},3000} },
		{"AddOneMaterial",	{"Ng�c L�c B�o",{tbProp={6,1,4325,1,0,0}},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,512},nQuality = 1},1,"[Ho�t ��ng][N�ng c�p ho�n m� vinh di�u chi y]"} },
	},
}

tbConfig[72] = --һ��ϸ��
{
	nId = 72,
	szMessageType = "CreateCompose",
	szName = "Ho�n M� Tinh chu�n chi Ngoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ho�n M� Tinh chu�n chi Ngoa",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Trang b� Tinh chu�n chi Ngoa",{tbProp={0,215},nQuality = 1},1} },
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0}},3000} },
		{"AddOneMaterial",	{"Ng�c L�c B�o",{tbProp={6,1,4325,1,0,0}},100} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,513},nQuality = 1},1,"[Ho�t ��ng][N�ng c�p ho�n m� vinh tinh chu�n chi ngoa]"} },
	},
}
