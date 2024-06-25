----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
---------------------------------------------------
NangCapNguHanhAn = {}
NangCapNguHanhAn = tbActivityCompose:new()
NangCapNguHanhAn.bAccessBindItem = 1
InPut_NguHanhAn_1 = 9339		 OutPut_NguHanhAn_1 = 9340
InPut_NguHanhAn_2 = 9340		 OutPut_NguHanhAn_2 = 9341
InPut_NguHanhAn_3 = 9341		 OutPut_NguHanhAn_3 = 9342
InPut_NguHanhAn_4 = 9342		 OutPut_NguHanhAn_4 = 9343
InPut_NguHanhAn_5 = 9343		 OutPut_NguHanhAn_5 = 9344
InPut_NguHanhAn_6 = 9344		 OutPut_NguHanhAn_6 = 9345
InPut_NguHanhAn_7 = 9345		 OutPut_NguHanhAn_7 = 9346
InPut_NguHanhAn_8 = 9346		 OutPut_NguHanhAn_8 = 9347
InPut_NguHanhAn_9 = 9347		 OutPut_NguHanhAn_9 = 9348
InPut_NguHanhAn_10 = 9348		 OutPut_NguHanhAn_10 = 9349
InPut_NguHanhAn_11 = 9349		 OutPut_NguHanhAn_11 = 9350
InPut_NguHanhAn_12 = 9350		 OutPut_NguHanhAn_12 = 9351
nItem_NguHanhAn = 5186
nKNB_NguHanhAn = 2480
nXu_NguHanhAn = 417
nNL_NguHanhAn_1 = 100;	 nNL_NguHanhAn_2 = 200;	 nNL_NguHanhAn_3 = 300;	 nNL_NguHanhAn_4 = 500;	 nNL_NguHanhAn_5 = 700;	 nNL_NguHanhAn_6 = 1000;	 nNL_NguHanhAn_7 = 1500;	 nNL_NguHanhAn_8 = 2000;	 nNL_NguHanhAn_9 = 3000;	 nNL_NguHanhAn_10 = 5000;	 nNL_NguHanhAn_11 = 7000;	 nNL_NguHanhAn_12 = 9000;
tbXu_NguHanhAn_1 = 3000;	 tbXu_NguHanhAn_2 = 5000;	 tbXu_NguHanhAn_3 = 7000;	 tbXu_NguHanhAn_4 = 10000;	 tbXu_NguHanhAn_5 = 1500;	 tbXu_NguHanhAn_6 = 2000;	 tbXu_NguHanhAn_7 = 3000;	 tbXu_NguHanhAn_8 = 4000;	 tbXu_NguHanhAn_9 = 5000;	 tbXu_NguHanhAn_10 = 350;	 tbXu_NguHanhAn_11 = 450;	 tbXu_NguHanhAn_12 = 600;
nRanD_an_1 = 20;		 nRanD_an_2 = 25;		 nRanD_an_3 = 30;		 nRanD_an_4 = 40;		 nRanD_an_5 = 50;		 nRanD_an_6 = 60;		 nRanD_an_7 = 70;		 nRanD_an_8 = 70;		 nRanD_an_9 = 80;		 nRanD_an_10 = 100;		 nRanD_an_11 = 100;		 nRanD_an_12 = 100;

NangCapNguHanhAn.tbFormulaList = {
	[1] = {szName="Ngò Hµnh Ên CÊp 2"},
	[2] = {szName="Ngò Hµnh Ên CÊp 3"},
	[3] = {szName="Ngò Hµnh Ên CÊp 4"},
	[4] = {szName="Ngò Hµnh Ên CÊp 5"},
	[5] = {szName="Ngò Hµnh Ên CÊp 6"},
	[6] = {szName="Ngò Hµnh Ên CÊp 7"},
	[7] = {szName="Ngò Hµnh Ên CÊp 8"},
	[8] = {szName="Ngò Hµnh Ên CÊp 9"},
	[9] = {szName="Ngò Hµnh Ên CÊp 10"},
	[10] = {szName="T©n NhËm Ên Gi¸m H¹"},
	[11] = {szName="T©n NhËm Ên Gi¸m Trung"},
	[12] = {szName="T©n NhËm Ên Gi¸m Th­îng"},
}

NangCapNguHanhAn.CommonMaterial = {
	[1] = {
		{szName="Ên CÊp 1",tbProp={0,InPut_NguHanhAn_1},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_1},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_NguHanhAn_1},
	},
	[2] = {
		{szName="Ên CÊp 2",tbProp={0,InPut_NguHanhAn_2},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_2},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_NguHanhAn_2},
	},
	[3] = {
		{szName="Ên CÊp 3",tbProp={0,InPut_NguHanhAn_3},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_3},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_NguHanhAn_3},
	},
	[4] = {
		{szName="Ên CÊp 4",tbProp={0,InPut_NguHanhAn_4},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_4},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_NguHanhAn_4},
	},
	[5] = {
		{szName="Ên CÊp 5",tbProp={0,InPut_NguHanhAn_5},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_5},
		{szName="TiÒn Xu",tbProp={4,nXu_NguHanhAn,1,1,0,0},nCount=tbXu_NguHanhAn_5},
	},
	[6] = {
		{szName="Ên CÊp 6",tbProp={0,InPut_NguHanhAn_6},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_6},
		{szName="TiÒn Xu",tbProp={4,nXu_NguHanhAn,1,1,0,0},nCount=tbXu_NguHanhAn_6},
	},
	[7] = {
		{szName="Ên CÊp 7",tbProp={0,InPut_NguHanhAn_7},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_7},
		{szName="TiÒn Xu",tbProp={4,nXu_NguHanhAn,1,1,0,0},nCount=tbXu_NguHanhAn_7},
	},
	[8] = {
		{szName="Ên CÊp 8",tbProp={0,InPut_NguHanhAn_8},nQuality=1},
		{szName="§¹i Tinh Ngäc",tbProp={6,1,4873,1,0,0},nCount=3000},
		{szName="Kim Nguyªn B¶o",tbProp={4,1496,1,1,0,0},nCount=800},
	},
	[9] = {
		{szName="Ên CÊp 9",tbProp={0,InPut_NguHanhAn_9},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_9},
		{szName="TiÒn Xu",tbProp={4,nXu_NguHanhAn,1,1,0,0},nCount=tbXu_NguHanhAn_9},
	},
	[10] = {
		{szName="Ên CÊp 10",tbProp={0,InPut_NguHanhAn_10},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_10},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_NguHanhAn,1,1,0,0},nCount=tbXu_NguHanhAn_10},
	},
	[11] = {
		{szName="Ên Gi¸m H¹",tbProp={0,InPut_NguHanhAn_11},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_11},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_NguHanhAn,1,1,0,0},nCount=tbXu_NguHanhAn_11},
	},
	[12] = {
		{szName="Ên Gi¸m Trung",tbProp={0,InPut_NguHanhAn_12},nQuality=1},
		{szName="Ngò Hµnh Th¹ch",tbProp={6,1,nItem_NguHanhAn,1,0,0},nCount=nNL_NguHanhAn_12},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_NguHanhAn,1,1,0,0},nCount=tbXu_NguHanhAn_12},
	},
}

NangCapNguHanhAn.CommonEquip = {
	[1] = {
		{szName="Ngò Hµnh Ên CÊp 2",tbProp={0,OutPut_NguHanhAn_1},nQuality=1,nRate=nRanD_an_1,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_1) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_1,
		},
	},
	[2] = {
		{szName="Ngò Hµnh Ên CÊp 3",tbProp={0,OutPut_NguHanhAn_2},nQuality=1,nRate=nRanD_an_2,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_2) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_2,
		},
	},
	[3] = {
		{szName="Ngò Hµnh Ên CÊp 4",tbProp={0,OutPut_NguHanhAn_3},nQuality=1,nRate=nRanD_an_3,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_3) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_3,
		},
	},
	[4] = {
		{szName="Ngò Hµnh Ên CÊp 5",tbProp={0,OutPut_NguHanhAn_4},nQuality=1,nRate=nRanD_an_4,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_4) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_4,
		},
	},
	[5] = {
		{szName="Ngò Hµnh Ên CÊp 6",tbProp={0,OutPut_NguHanhAn_5},nQuality=1,nRate=nRanD_an_5,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_5) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_5,
		},
	},
	[6] = {
		{szName="Ngò Hµnh Ên CÊp 7",tbProp={0,OutPut_NguHanhAn_6},nQuality=1,nRate=nRanD_an_6,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_6) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_6,
		},
	},
	[7] = {
		{szName="Ngò Hµnh Ên CÊp 8",tbProp={0,OutPut_NguHanhAn_7},nQuality=1,nRate=nRanD_an_7,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_7) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_7,
		},
	},
	[8] = {
		{szName="Ngò Hµnh Ên CÊp 9",tbProp={0,OutPut_NguHanhAn_8},nQuality=1,nRate=nRanD_an_8},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_8) 
			end,
			nRate = 100-nRanD_an_8,
		},
	},
	[9] = {
		{szName="Ngò Hµnh Ên CÊp 10",tbProp={0,OutPut_NguHanhAn_9},nQuality=1,nRate=nRanD_an_9,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_9) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_9,
		},
	},
	[10] = {
		{szName="T©n NhËm Ên Gi¸m H¹",tbProp={0,OutPut_NguHanhAn_10},nQuality=1,nRate=nRanD_an_10,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_10) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_10,
		},
	},
	[11] = {
		{szName="T©n NhËm Ên Gi¸m Trung",tbProp={0,OutPut_NguHanhAn_11},nQuality=1,nRate=nRanD_an_11,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_11) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_11,
		},
	},
	[12] = {
		{szName="T©n NhËm Ên Gi¸m Th­îng",tbProp={0,OutPut_NguHanhAn_12},nQuality=1,nRate=nRanD_an_12,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_NguHanhAn_12) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_an_12,
		},
	},
}

-----------------------------------------------------------Liªn KÕt Npc §èi Tho¹i------------------------------------------------------------------------------
function NangCapNguHanhAn:CheTaoNguHanhAn()
	local p = NangCapNguHanhAn:new("N©ng CÊp Ngò Hµnh Ên","NangCapNguHanhAn", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H·y Chän Lo¹i Ngò Hµnh Ên Muèn N©ng CÊp"
	local tbOpt = {
		--{self.tbFormulaList[1].szName, p.ComposeGiveUI_1, {p}},
		--{self.tbFormulaList[2].szName, p.ComposeGiveUI_2, {p}},
		--{self.tbFormulaList[3].szName, p.ComposeGiveUI_3, {p}},
		--{self.tbFormulaList[4].szName, p.ComposeGiveUI_4, {p}},
		--{self.tbFormulaList[5].szName, p.ComposeGiveUI_5, {p}},
		--{self.tbFormulaList[6].szName, p.ComposeGiveUI_6, {p}},
		--{self.tbFormulaList[7].szName, p.ComposeGiveUI_7, {p}},
		{self.tbFormulaList[8].szName, p.ComposeGiveUI_8, {p}},
		--{self.tbFormulaList[9].szName, p.ComposeGiveUI_9, {p}},
		--{self.tbFormulaList[10].szName, p.ComposeGiveUI_10, {p}},
		--{self.tbFormulaList[11].szName, p.ComposeGiveUI_11, {p}},
		--{self.tbFormulaList[12].szName, p.ComposeGiveUI_12, {p}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 1-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 2-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 3-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 4-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 5-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_5()
	local szTitle = (format("%s", self.tbFormulaList[5].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[5])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_5.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_5, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_5(nCount)
	if (self:CheckMaterial(self.CommonMaterial[5], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[5], 1)
	self:ConsumeMaterial(self.CommonMaterial[5], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 6-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_6()
	local szTitle = (format("%s", self.tbFormulaList[6].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[6])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_6.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_6, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_6(nCount)
	if (self:CheckMaterial(self.CommonMaterial[6], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[6], 1)
	self:ConsumeMaterial(self.CommonMaterial[6], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 7-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_7()
	local szTitle = (format("%s", self.tbFormulaList[7].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[7])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_7.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_7, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_7(nCount)
	if (self:CheckMaterial(self.CommonMaterial[7], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[7], 1)
	self:ConsumeMaterial(self.CommonMaterial[7], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 8-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_8()
	local szTitle = (format("%s", self.tbFormulaList[8].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[8])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_8.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_8, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_8(nCount)
	if (self:CheckMaterial(self.CommonMaterial[8], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[8], 1)
	self:ConsumeMaterial(self.CommonMaterial[8], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 9-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_9()
	local szTitle = (format("%s", self.tbFormulaList[9].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[9])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_9.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_9, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_9(nCount)
	if (self:CheckMaterial(self.CommonMaterial[9], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[9], 1)
	self:ConsumeMaterial(self.CommonMaterial[9], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 10-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_10()
	local szTitle = (format("%s", self.tbFormulaList[10].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[10])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_10.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_10, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_10(nCount)
	if (self:CheckMaterial(self.CommonMaterial[10], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[10], 1)
	self:ConsumeMaterial(self.CommonMaterial[10], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 11-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_11()
	local szTitle = (format("%s", self.tbFormulaList[11].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[11])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_11.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_11, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_11(nCount)
	if (self:CheckMaterial(self.CommonMaterial[11], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[11], 1)
	self:ConsumeMaterial(self.CommonMaterial[11], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Ngò Hµnh Ên 12-----------------------------------------------------------------
function NangCapNguHanhAn:ComposeGiveUI_12()
	local szTitle = (format("%s", self.tbFormulaList[12].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[12])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_an_12.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_12, {self}}, nil, self.bAccessBindItem)
end

function NangCapNguHanhAn:GiveUIOk_12(nCount)
	if (self:CheckMaterial(self.CommonMaterial[12], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[12], 1)
	self:ConsumeMaterial(self.CommonMaterial[12], 1, self.szLogTitle)
end
-------------------------------------------------------------------------------------------
function DialogMain_NguHanhAn() NangCapNguHanhAn:CheTaoNguHanhAn() end
pEventType:Reg("ThÇn BÝ Thî RÌn ","T¨ng CÊp Ngò Hµnh Ên", DialogMain_NguHanhAn,{tbHKMPAward})
-------------------------------------------------------------------------------------------