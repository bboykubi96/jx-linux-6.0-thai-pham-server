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
		
  {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},20,"[Event_Quèc TÕ Phô N÷] [tTongKim1000]"} },
   




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
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},20,"[Event_Quèc TÕ Phô N÷] [tTongKim3000]"} },

             

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
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},20,"[Event_Quèc TÕ Phô N÷] [tVuotAi17]"} },
  

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
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},20,"[Event_Quèc TÕ Phô N÷] [tVuotAi28]"} },
	
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
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},20,"[Event_Quèc TÕ Phô N÷] [tTieuDietThuyTacDauLinh]"} },

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
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},20,"[Event_Quèc TÕ Phô N÷] [tTieuDietThuyTacDaiDauLinh]"} },           
  
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
               {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},20,"[Event_Quèc TÕ Phô N÷] [tVuotAiViemDe10]"} },
	 	 
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
              {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},10,"[Event_Quèc TÕ Phô N÷] [tTinSu10]"} },  
                
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
               {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},40,"[Event_Quèc TÕ Phô N÷] [tVLMC]"} },

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
                {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},40,"[Event_Quèc TÕ Phô N÷] [tTieuDietBossTheGioi]"} },  
 				
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
      {"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},20,"[Event_Quèc TÕ Phô N÷] [tTieuDietBossS¸tThñ]"} },

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
              {"NpcFunLib:DropSingleItem",	{{nExpiredTime=20220429,tbProp={6,1,30320,1,0,0},},1,"12"} },  

	},
}
tbConfig[13] = --§èi tho¹i §¹i ThÇn Tµi
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Anh Hïng LiÖt Sü"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	      {"AddDialogOpt",{"May Thµnh L¸ Cê Hoµn ChØnh",14} },


	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Lµm l¸ cê",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Lµm l¸ cê",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M·nh Sè 1 ",{tbProp={6,1,30321,1,0,0},},2} },
		{"AddOneMaterial",	{"M·nh Sè 2",{tbProp={6,1,30322,1,0,0},},2} },
		{"AddOneMaterial",	{"M·nh Sè 3",{tbProp={6,1,30323,1,0,0},},2} },
		{"AddOneMaterial",	{"M·nh Sè 4",{tbProp={6,1,30324,1,0,0},},2} },
		{"AddOneMaterial",	{"Xu ",{tbProp={4,417,1,1,0,0},},20} },
		
      

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30325,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Lµm l¸ cê]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30283,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Bã Hoa Tø S¾c]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30282,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Hoa Hång §á]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "Cèi §©m B¸nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¸o",1,1,1,0.02,0,1000},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{20,"H·y §Ó Trèng 20 ¤ Råi Më"} },
		{"AddOneMaterial",	{"2 DKB = 1 Cèi §©m B¸nh",{tbProp={4,1506,1,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20220429,tbProp={6,1,30281,1,0,0},},1,"[Event_Quèc TÕ Phô N÷] [Hoa Hång §á]"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "GhÐp Kim M· LÖnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"GhÐp Kim M· LÖnh",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Kim M· LÖnh#Mét",{tbProp={6,1,6730,1,0,0},},2} },
		{"AddOneMaterial",	{"Kim M· LÖnh#Hai",{tbProp={6,1,6731,1,0,0},},2} },
		{"AddOneMaterial",	{"Kim M· LÖnh#Ba",{tbProp={6,1,6732,1,0,0},},2} },
		{"AddOneMaterial",	{"Kim M· LÖnh#Bèn",{tbProp={6,1,6733,1,0,0},},2} },
		{"AddOneMaterial",	{"Kim M· LÖnh#N¨m",{tbProp={6,1,6734,1,0,0},},2} },
		{"AddOneMaterial",	{"Kim M· LÖnh#S¸u",{tbProp={6,1,6735,1,0,0},},2} },
              {"AddOneMaterial",	{"Kim M· LÖnh#B¶y",{tbProp={6,1,6736,1,0,0},},2} },
              {"AddOneMaterial",	{"Kim M· CÈm Nang",{tbProp={6,1,6728,1,0,0},},1} },
		{"AddOneMaterial",	{"Tien Xu",{tbProp={4,417,1,1,0,0},},2} },

	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20211231,tbProp={6,1,6729,1,0,0},},10,"[Event_Quèc TÕ Phô N÷] [Kim M· LÖnh]"} },
	},
}