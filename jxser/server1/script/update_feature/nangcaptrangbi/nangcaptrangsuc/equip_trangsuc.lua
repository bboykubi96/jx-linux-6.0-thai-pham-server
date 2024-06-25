----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
---------------------------------------------------
NangCapTrangSuc = {}
NangCapTrangSuc = tbActivityCompose:new()
NangCapTrangSuc.bAccessBindItem = 1
InPut_TrangSuc_1 = 9352		 OutPut_TrangSuc_1 = 9353
InPut_TrangSuc_2 = 9353		 OutPut_TrangSuc_2 = 9354
InPut_TrangSuc_3 = 9354		 OutPut_TrangSuc_3 = 9355
InPut_TrangSuc_4 = 9355		 OutPut_TrangSuc_4 = 9356
InPut_TrangSuc_5 = 9356		 OutPut_TrangSuc_5 = 9357
InPut_TrangSuc_6 = 9357		 OutPut_TrangSuc_6 = 9358
InPut_TrangSuc_7 = 9358		 OutPut_TrangSuc_7 = 9359
InPut_TrangSuc_8 = 9359		 OutPut_TrangSuc_8 = 9360
InPut_TrangSuc_9 = 9360		 OutPut_TrangSuc_9 = 9361
InPut_TrangSuc_10 = 9361		 OutPut_TrangSuc_10 = 9362
InPut_TrangSuc_11 = 9362		 OutPut_TrangSuc_11 = 9363
InPut_TrangSuc_12 = 9363		 OutPut_TrangSuc_12 = 9364
nItem_TrangSuc = 5187
nKNB_TrangSuc = 2480
nXu_TrangSuc = 417
nNL_TrangSuc_1 = 100;	 nNL_TrangSuc_2 = 200;	 nNL_TrangSuc_3 = 300;	 nNL_TrangSuc_4 = 500;	 nNL_TrangSuc_5 = 700;	 nNL_TrangSuc_6 = 1000;	 nNL_TrangSuc_7 = 1500;	 nNL_TrangSuc_8 = 2000;	 nNL_TrangSuc_9 = 3000;	 nNL_TrangSuc_10 = 5000;	 nNL_TrangSuc_11 = 7000;	 nNL_TrangSuc_12 = 9000;
tbXu_TrangSuc_1 = 3000;	 tbXu_TrangSuc_2 = 5000;	 tbXu_TrangSuc_3 = 7000;	 tbXu_TrangSuc_4 = 10000;	 tbXu_TrangSuc_5 = 1500;	 tbXu_TrangSuc_6 = 2000;	 tbXu_TrangSuc_7 = 3000;	 tbXu_TrangSuc_8 = 4000;	 tbXu_TrangSuc_9 = 5000;	 tbXu_TrangSuc_10 = 350;	 tbXu_TrangSuc_11 = 450;	 tbXu_TrangSuc_12 = 600;
nRanD_ts_1 = 20;		 nRanD_ts_2 = 25;		 nRanD_ts_3 = 30;		 nRanD_ts_4 = 40;		 nRanD_ts_5 = 50;		 nRanD_ts_6 = 60;		 nRanD_ts_7 = 70;		 nRanD_ts_8 = 70;		 nRanD_ts_9 = 80;		 nRanD_ts_10 = 100;		 nRanD_ts_11 = 100;		 nRanD_ts_12 = 100;

NangCapTrangSuc.tbFormulaList = {
	[1] = {szName="Long ChiÕn Vu D· CÊp 2"},
	[2] = {szName="Long ChiÕn Vu D· CÊp 3"},
	[3] = {szName="Long ChiÕn Vu D· CÊp 4"},
	[4] = {szName="Long ChiÕn Vu D· CÊp 5"},
	[5] = {szName="Long ChiÕn Vu D· CÊp 6"},
	[6] = {szName="Long ChiÕn Vu D· CÊp 7"},
	[7] = {szName="Long ChiÕn Vu D· CÊp 8"},
	[8] = {szName="Long ChiÕn Vu D· CÊp 9"},
	[9] = {szName="Long ChiÕn Vu D· CÊp 10"},
	[10] = {szName="T©n NhËm Ên Gi¸m H¹"},
	[11] = {szName="T©n NhËm Ên Gi¸m Trung"},
	[12] = {szName="T©n NhËm Ên Gi¸m Th­îng"},
}

NangCapTrangSuc.CommonMaterial = {
	[1] = {
		{szName="Trang Søc 1",tbProp={0,InPut_TrangSuc_1},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_1},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_TrangSuc_1},
	},
	[2] = {
		{szName="Trang Søc 2",tbProp={0,InPut_TrangSuc_2},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_2},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_TrangSuc_2},
	},
	[3] = {
		{szName="Trang Søc 3",tbProp={0,InPut_TrangSuc_3},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_3},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_TrangSuc_3},
	},
	[4] = {
		{szName="Trang Søc 4",tbProp={0,InPut_TrangSuc_4},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_4},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_TrangSuc_4},
	},
	[5] = {
		{szName="Trang Søc 5",tbProp={0,InPut_TrangSuc_5},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_5},
		{szName="TiÒn Xu",tbProp={4,nXu_TrangSuc,1,1,0,0},nCount=tbXu_TrangSuc_5},
	},
	[6] = {
		{szName="Trang Søc 6",tbProp={0,InPut_TrangSuc_6},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_6},
		{szName="TiÒn Xu",tbProp={4,nXu_TrangSuc,1,1,0,0},nCount=tbXu_TrangSuc_6},
	},
	[7] = {
		{szName="Trang Søc 7",tbProp={0,InPut_TrangSuc_7},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_7},
		{szName="TiÒn Xu",tbProp={4,nXu_TrangSuc,1,1,0,0},nCount=tbXu_TrangSuc_7},
	},
	[8] = {
		{szName="Trang Søc 8",tbProp={0,InPut_TrangSuc_8},nQuality=1},
		{szName="§¹i Tinh Ngäc",tbProp={6,1,4873,1,0,0},nCount=3000},
		{szName="Kim Nguyªn B¶o",tbProp={4,1496,1,1,0,0},nCount=800},
	},
	[9] = {
		{szName="Trang Søc 9",tbProp={0,InPut_TrangSuc_9},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_9},
		{szName="TiÒn Xu",tbProp={4,nXu_TrangSuc,1,1,0,0},nCount=tbXu_TrangSuc_9},
	},
	[10] = {
		{szName="Trang Søc 10",tbProp={0,InPut_TrangSuc_10},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_10},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_TrangSuc,1,1,0,0},nCount=tbXu_TrangSuc_10},
	},
	[11] = {
		{szName="Ên Gi¸m H¹",tbProp={0,InPut_TrangSuc_11},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_11},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_TrangSuc,1,1,0,0},nCount=tbXu_TrangSuc_11},
	},
	[12] = {
		{szName="Ên Gi¸m Trung",tbProp={0,InPut_TrangSuc_12},nQuality=1},
		{szName="Vò Hoa Th¹ch",tbProp={6,1,nItem_TrangSuc,1,0,0},nCount=nNL_TrangSuc_12},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_TrangSuc,1,1,0,0},nCount=tbXu_TrangSuc_12},
	},
}

NangCapTrangSuc.CommonEquip = {
	[1] = {
		{szName="Trang Søc CÊp 2",tbProp={0,OutPut_TrangSuc_1},nQuality=1,nRate=nRanD_ts_1,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_1) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_1,
		},
	},
	[2] = {
		{szName="Trang Søc CÊp 3",tbProp={0,OutPut_TrangSuc_2},nQuality=1,nRate=nRanD_ts_2,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_2) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_2,
		},
	},
	[3] = {
		{szName="Trang Søc CÊp 4",tbProp={0,OutPut_TrangSuc_3},nQuality=1,nRate=nRanD_ts_3,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_3) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_3,
		},
	},
	[4] = {
		{szName="Trang Søc CÊp 5",tbProp={0,OutPut_TrangSuc_4},nQuality=1,nRate=nRanD_ts_4,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_4) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_4,
		},
	},
	[5] = {
		{szName="Trang Søc CÊp 6",tbProp={0,OutPut_TrangSuc_5},nQuality=1,nRate=nRanD_ts_5,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_5) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_5,
		},
	},
	[6] = {
		{szName="Trang Søc CÊp 7",tbProp={0,OutPut_TrangSuc_6},nQuality=1,nRate=nRanD_ts_6,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_6) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_6,
		},
	},
	[7] = {
		{szName="Trang Søc CÊp 8",tbProp={0,OutPut_TrangSuc_7},nQuality=1,nRate=nRanD_ts_7,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_7) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_7,
		},
	},
	[8] = {
		{szName="Trang Søc CÊp 9",tbProp={0,OutPut_TrangSuc_8},nQuality=1,nRate=nRanD_ts_8},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_8) 
			end,
			nRate = 100-nRanD_ts_8,
		},
	},
	[9] = {
		{szName="Trang Søc CÊp 10",tbProp={0,OutPut_TrangSuc_9},nQuality=1,nRate=nRanD_ts_9,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_9) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_9,
		},
	},
	[10] = {
		{szName="T©n NhËm Ên Gi¸m H¹",tbProp={0,OutPut_TrangSuc_10},nQuality=1,nRate=nRanD_ts_10,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_10) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_10,
		},
	},
	[11] = {
		{szName="T©n NhËm Ên Gi¸m Trung",tbProp={0,OutPut_TrangSuc_11},nQuality=1,nRate=nRanD_ts_11,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_11) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_11,
		},
	},
	[12] = {
		{szName="T©n NhËm Ên Gi¸m Th­îng",tbProp={0,OutPut_TrangSuc_12},nQuality=1,nRate=nRanD_ts_12,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_TrangSuc_12) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ts_12,
		},
	},
}

-----------------------------------------------------------Liªn KÕt Npc §èi Tho¹i------------------------------------------------------------------------------
function NangCapTrangSuc:CheTaoTrangSuc()
	local p = NangCapTrangSuc:new("N©ng CÊp Trang Søc","NangCapTrangSuc", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H·y Chän Lo¹i Trang Søc Muèn N©ng CÊp"
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
---------------------------------------------------------N©ng CÊp Trang Søc 1-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 2-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 3-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 4-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 5-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_5()
	local szTitle = (format("%s", self.tbFormulaList[5].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[5])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_5.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_5, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_5(nCount)
	if (self:CheckMaterial(self.CommonMaterial[5], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[5], 1)
	self:ConsumeMaterial(self.CommonMaterial[5], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 6-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_6()
	local szTitle = (format("%s", self.tbFormulaList[6].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[6])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_6.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_6, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_6(nCount)
	if (self:CheckMaterial(self.CommonMaterial[6], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[6], 1)
	self:ConsumeMaterial(self.CommonMaterial[6], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 7-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_7()
	local szTitle = (format("%s", self.tbFormulaList[7].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[7])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_7.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_7, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_7(nCount)
	if (self:CheckMaterial(self.CommonMaterial[7], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[7], 1)
	self:ConsumeMaterial(self.CommonMaterial[7], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 8-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_8()
	local szTitle = (format("%s", self.tbFormulaList[8].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[8])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_8.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_8, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_8(nCount)
	if (self:CheckMaterial(self.CommonMaterial[8], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[8], 1)
	self:ConsumeMaterial(self.CommonMaterial[8], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 9-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_9()
	local szTitle = (format("%s", self.tbFormulaList[9].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[9])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_9.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_9, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_9(nCount)
	if (self:CheckMaterial(self.CommonMaterial[9], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[9], 1)
	self:ConsumeMaterial(self.CommonMaterial[9], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 10-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_10()
	local szTitle = (format("%s", self.tbFormulaList[10].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[10])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_10.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_10, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_10(nCount)
	if (self:CheckMaterial(self.CommonMaterial[10], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[10], 1)
	self:ConsumeMaterial(self.CommonMaterial[10], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 11-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_11()
	local szTitle = (format("%s", self.tbFormulaList[11].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[11])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_11.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_11, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_11(nCount)
	if (self:CheckMaterial(self.CommonMaterial[11], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[11], 1)
	self:ConsumeMaterial(self.CommonMaterial[11], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Trang Søc 12-----------------------------------------------------------------
function NangCapTrangSuc:ComposeGiveUI_12()
	local szTitle = (format("%s", self.tbFormulaList[12].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[12])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ts_12.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_12, {self}}, nil, self.bAccessBindItem)
end

function NangCapTrangSuc:GiveUIOk_12(nCount)
	if (self:CheckMaterial(self.CommonMaterial[12], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[12], 1)
	self:ConsumeMaterial(self.CommonMaterial[12], 1, self.szLogTitle)
end
-------------------------------------------------------------------------------------------
function DialogMain_TrangSuc() NangCapTrangSuc:CheTaoTrangSuc() end
pEventType:Reg("ThÇn BÝ Thî RÌn ","T¨ng CÊp Trang Søc", DialogMain_TrangSuc,{tbHKMPAward})
-------------------------------------------------------------------------------------------