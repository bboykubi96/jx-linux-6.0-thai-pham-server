tbConfig = {}
tbConfig[1] = --Tèng Kim 1000 §iÓm
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "Tèng Kim Cao CÊp 1000 §iÓm",
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
		
  {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tTongKim1000]"} },
   




	},
}
tbConfig[2] = --Tèng Kim 3000 §iÓm
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Tèng Kim Cao CÊp 3000 §iÓm",
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
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tTongKim3000]"} },

             

	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V­ît Qua ¶i 17 Giai §o¹n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tVuotAi17]"} },
  

	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V­ît Qua ¶i 28 Giai §o¹n 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tVuotAi28]"} },
	
	},
}
tbConfig[5] = --Thñy TÆc §Çu LÜnh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt ChÕt 1 Thñy TÆc §Çu LÜnh",
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
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tTieuDietThuyTacDauLinh]"} },

},
}
tbConfig[6] = --Thñy TÆc §¹i §Çu LÜnh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu DiÖt Thñy TÆc §¹i §Çu LÜnh",
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
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tTieuDietThuyTacDaiDauLinh]"} },           
  
	},
}
tbConfig[7] = --Viªm §Õ
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V­ît Qua ¶i Viªm §Õ Thø 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
               {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tVuotAiViemDe10]"} },
	 	 
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
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tTinSu10]"} },  
                
	},
}
tbConfig[9] = --V­LMC
{
	nId = 9,
	szMessageType = "FinishVLMC_VNG",
	szName = "Hoµn Thµnh VLMC",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{          
               {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tVLMC]"} },

	},
}
tbConfig[10] = --Boss ThÕ Giíi
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu DiÖt Boss ThÕ Giíi",
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
                {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tTieuDietBossTheGioi]"} },  
 				
	},
}
tbConfig[11] = --Boss S¸t Thñ
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm Vô S¸t Thñ CÊp 90",
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
      {"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3164,1,0,0},},300,"[Event_Quèc TÕ Phô N÷] [tTieuDietBossS¸tThñ]"} },

	},
}
tbConfig[12] = --B¶n §å §¸nh Qu¸i Rí Nguyªn LiÖu
{
	nId = 12,
	szMessageType = "NpcOnDeath",
	szName = "B¶n §å §¸nh Qu¸i Rít Ra Nguyªn LiÖu",
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
tbConfig[13] = --§èi tho¹i §¹i ThÇn Tµi
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C©y Ph­îng Khoe S¾c"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	      {"AddDialogOpt",{"Trång C©y Ph­îng Khoe S¾c",14} },
	      {"AddDialogOpt",{"GhÐp Hoa Ph­îng TÝm",21} },


	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Lµm l¸ cê",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trång C©y Ph­îng Khoe S¾c",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H¹t MÇm ",{tbProp={6,1,3157,1,0,0},},4} },
		{"AddOneMaterial",	{"Tói Thuèc T¨ng Tr­ëng",{tbProp={6,1,3158,1,0,0},},5} },
		{"AddOneMaterial",	{"B×nh N­íc",{tbProp={6,1,3159,1,0,0},},5} },
		{"AddOneMaterial",	{"PhÈm Mµu S¾c",{tbProp={6,1,3160,1,0,0},},2} },
		{"AddOneMaterial",	{"Xu ",{tbProp={4,417,1,1,0,0},},30} },
		
      

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,3161,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Lµm l¸ cê]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Lµm B¸nh Ch­ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Lµm B¸nh Ch­ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"l¸ Giong ",{tbProp={6,1,30277,1,0,0},},4} },
		{"AddOneMaterial",	{"g¹o nÕp",{tbProp={6,1,30278,1,0,0},},4} },
		{"AddOneMaterial",	{"®Ëu xanh ",{tbProp={6,1,30279,1,0,0},},4} },
		{"AddOneMaterial",	{"ThÞt ba räi",{tbProp={6,1,30280,1,0,0},},4} },
		{"AddOneMaterial",	{"Khu«n B¸nh Ch­ng",{tbProp={6,1,30282,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,30283,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Bã Hoa Tø S¾c]"} },
	},
}

tbConfig[16] = 
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "Lµm B¸nh kem Sè 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Lµm B¸nh kem Sè 2",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B¸nh Kem Sè 4",{tbProp={6,1,6711,1,0,0},},10} },
        {"AddOneMaterial",	{"B¸nh Kem Sè 3",{tbProp={6,1,6712,1,0,0},},5} },
		{"AddOneMaterial",	{"200000 l­îng",{nJxb=200000,},1} },

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20211231,tbProp={6,1,6713,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Giá Hoa Hång]"} },
	},
}
tbConfig[22] = 
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "Lµm B¸nh kem Sè 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Lµm B¸nh kem Sè 1",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B¸nh Kem Sè 3",{tbProp={6,1,6712,1,0,0},},10} },
              {"AddOneMaterial",	{"B¸nh Kem Sè 2",{tbProp={6,1,6713,1,0,0},},5} },
		{"AddOneMaterial",	{"300000 l­îng",{nJxb=300000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20211231,tbProp={6,1,6714,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Giá Hoa Hång]"} },
	},
}

tbConfig[17] = --Sö Dông
{
	nId = 17,
	szMessageType = "ItemScript",
	szName = "Hép Quµ §Æc BiÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2299,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H·y §Ó Trèng 1 ¤ Råi Më"} },
	},
	tbActition = 
	{
		{"ThisActivity:GioHoaHong", {nil}},
	},
}
tbConfig[18] = --Sö Dông
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "Giá §ùng Hoa LÔ Bao",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3125,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H·y §Ó Trèng 1 ¤ Råi Më"} },
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
	szName = "Khi Khëi §éng Server SÏ T¶i Npc",
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
	szName = "Khu«n B¸nh Ch­ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¸o",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"H·y §Ó Trèng 20 ¤ Råi Më"} },
		{"AddOneMaterial",	{" 2 DKB = 1 Khu«n B¸nh Ch­ng",{tbProp={4,1506,1,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,30282,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Hoa Hång §á]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "Cèi §©m B¸nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"GhÐp Hoa Ph­îng TÝm",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"H·y §Ó Trèng 20 ¤ Råi Më"} },
		{"AddOneMaterial",	{"2 DKB = 1 Cèi §©m B¸nh",{tbProp={4,1506,1,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220529,tbProp={6,1,30281,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Hoa Hång §á]"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "GhÐp Hoa Ph­îng TÝm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"GhÐp Hoa Ph­îng TÝm",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hoa Ph­îng Tr¾ng",{tbProp={6,1,3163,1,0,0},},10} },
		{"AddOneMaterial",	{"PhÈm Mµu S¾c",{tbProp={6,1,3160,1,0,0},},10} },

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220530,tbProp={6,1,3162,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Kim M· LÖnh]"} },
	},
}