tbConfig = {}
tbConfig[1] = --T�ng Kim 1000 �i�m
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim Cao C�p 1000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		
  {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tTongKim1000]"} },
   




	},
}
tbConfig[2] = --T�ng Kim 3000 �i�m
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim Cao C�p 3000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tTongKim3000]"} },

             

	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V��t Qua �i 17 Giai �o�n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tVuotAi17]"} },
  

	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V��t Qua �i 28 Giai �o�n 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tVuotAi28]"} },
	
	},
}
tbConfig[5] = --Th�y T�c ��u L�nh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t Ch�t 1 Th�y T�c ��u L�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tTieuDietThuyTacDauLinh]"} },

},
}
tbConfig[6] = --Th�y T�c ��i ��u L�nh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u Di�t Th�y T�c ��i ��u L�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{          
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tTieuDietThuyTacDaiDauLinh]"} },           
  
	},
}
tbConfig[7] = --Vi�m ��
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V��t Qua �i Vi�m �� Th� 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
               {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tVuotAiViemDe10]"} },
	 	 
	},
}
tbConfig[8] = --Tin Su
{
	nId = 8,
	szMessageType = "FinishMail",
	szName = "Tin Su",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{        
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tTinSu10]"} },  
                
	},
}
tbConfig[9] = --V�LMC
{
	nId = 9,
	szMessageType = "FinishVLMC_VNG",
	szName = "Ho�n Th�nh VLMC",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{          
               {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tVLMC]"} },

	},
}
tbConfig[10] = --Boss Th� Gi�i
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u Di�t Boss Th� Gi�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
                {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tTieuDietBossTheGioi]"} },  
 				
	},
}
tbConfig[11] = --Boss S�t Th�
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m V� S�t Th� C�p 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
      {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Qu�c T� Ph� N�] [tTieuDietBossS�tTh�]"} },

	},
}
tbConfig[12] = --B�n �� ��nh Qu�i R� Nguy�n Li�u
{
	nId = 12,
	szMessageType = "NpcOnDeath",
	szName = "B�n �� ��nh Qu�i R�t Ra Nguy�n Li�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,321,322,75,340"} },
	},
	tbActition = 
	{
              {"NpcFunLib:DropSingleItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},1,"40"} },  

	},
}
tbConfig[13] = --��i tho�i ��i Th�n T�i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�y Ph��ng Khoe S�c"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	      {"AddDialogOpt",{"Tr�ng C�y Ph��ng Khoe S�c",14} },
	      {"AddDialogOpt",{"Gh�p Hoa Ph��ng T�m",21} },


	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "L�m l� c�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng C�y Ph��ng Khoe S�c",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H�t M�m ",{tbProp={6,1,3157,1,0,0},},4} },
		{"AddOneMaterial",	{"T�i Thu�c T�ng Tr��ng",{tbProp={6,1,3158,1,0,0},},5} },
		{"AddOneMaterial",	{"B�nh N��c",{tbProp={6,1,3159,1,0,0},},5} },
		{"AddOneMaterial",	{"Ph�m M�u S�c",{tbProp={6,1,3160,1,0,0},},2} },
		{"AddOneMaterial",	{"Xu ",{tbProp={4,417,1,1,0,0},},30} },
		
      

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3161,1,0,0},},1,"[Event_Qu�c T� Ph� N�] [L�m l� c�]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "L�m B�nh Ch�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�m B�nh Ch�ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"l� Giong ",{tbProp={6,1,30277,1,0,0},},4} },
		{"AddOneMaterial",	{"g�o n�p",{tbProp={6,1,30278,1,0,0},},4} },
		{"AddOneMaterial",	{"��u xanh ",{tbProp={6,1,30279,1,0,0},},4} },
		{"AddOneMaterial",	{"Th�t ba r�i",{tbProp={6,1,30280,1,0,0},},4} },
		{"AddOneMaterial",	{"Khu�n B�nh Ch�ng",{tbProp={6,1,30282,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,30283,1,0,0},},1,"[Event_Qu�c T� Ph� N�] [B� Hoa T� S�c]"} },
	},
}

tbConfig[16] = 
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "L�m B�nh kem S� 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�m B�nh kem S� 2",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�nh Kem S� 4",{tbProp={6,1,6711,1,0,0},},10} },
        {"AddOneMaterial",	{"B�nh Kem S� 3",{tbProp={6,1,6712,1,0,0},},5} },
		{"AddOneMaterial",	{"200000 l��ng",{nJxb=200000,},1} },

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20211231,tbProp={6,1,6713,1,0,0},},1,"[Event_Qu�c T� Ph� N�] [Gi� Hoa H�ng]"} },
	},
}
tbConfig[22] = 
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "L�m B�nh kem S� 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�m B�nh kem S� 1",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�nh Kem S� 3",{tbProp={6,1,6712,1,0,0},},10} },
              {"AddOneMaterial",	{"B�nh Kem S� 2",{tbProp={6,1,6713,1,0,0},},5} },
		{"AddOneMaterial",	{"300000 l��ng",{nJxb=300000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20211231,tbProp={6,1,6714,1,0,0},},1,"[Event_Qu�c T� Ph� N�] [Gi� Hoa H�ng]"} },
	},
}

tbConfig[17] = --S� D�ng
{
	nId = 17,
	szMessageType = "ItemScript",
	szName = "H�p Qu� ��c Bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2299,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H�y �� Tr�ng 1 � R�i M�"} },
	},
	tbActition = 
	{
		{"ThisActivity:GioHoaHong", {nil}},
	},
}
tbConfig[18] = --S� D�ng
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "Gi� ��ng Hoa L� Bao",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3125,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H�y �� Tr�ng 1 � R�i M�"} },
	},
	tbActition = 
	{
		{"ThisActivity:GioDungHoa", {nil}},
	},
}
tbConfig[19] = --Add NPC
{
	nId = 19,
	szMessageType = "ServerStart",
	szName = "Khi Kh�i ��ng Server S� T�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
	},
}
tbConfig[20] = 
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "Khu�n B�nh Ch�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�o",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"H�y �� Tr�ng 20 � R�i M�"} },
		{"AddOneMaterial",	{" 2 DKB = 1 Khu�n B�nh Ch�ng",{tbProp={4,1506,1,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,30282,1,0,0},},1,"[Event_Qu�c T� Ph� N�] [Hoa H�ng ��]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "C�i ��m B�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gh�p Hoa Ph��ng T�m",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"H�y �� Tr�ng 20 � R�i M�"} },
		{"AddOneMaterial",	{"2 DKB = 1 C�i ��m B�nh",{tbProp={4,1506,1,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,30281,1,0,0},},1,"[Event_Qu�c T� Ph� N�] [Hoa H�ng ��]"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Gh�p Hoa Ph��ng T�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gh�p Hoa Ph��ng T�m",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hoa Ph��ng Tr�ng",{tbProp={6,1,3163,1,0,0},},10} },
		{"AddOneMaterial",	{"Ph�m M�u S�c",{tbProp={6,1,3160,1,0,0},},10} },

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220530,tbProp={6,1,3162,1,0,0},},1,"[Event_Qu�c T� Ph� N�] [Kim M� L�nh]"} },
	},
}