----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
---------------------------------------------------
NangCapThanMa = {}
NangCapThanMa = tbActivityCompose:new()
NangCapThanMa.bAccessBindItem = 1

InName_ThanMa_0 = "B«n Tiªu"
InName_ThanMa_1 = "Phiªn Vò"
InName_ThanMa_2 = "Phiªn Vò"
InName_ThanMa_3 = "S­ Tö"
InName_ThanMa_4 = "B¹ch Hæ"
InName_ThanMa_5 = "D­¬ng Sa"
InName_ThanMa_6 = "Ngù Phong"
InName_ThanMa_7 = "L¹c §µ"
InName_ThanMa_8 = "D­¬ng §µ"
InName_ThanMa_9 = "H­¬u §èm"
InName_ThanMa_10 = "H·n HuyÕt Long C©u"

InPut_ThanMa_1 = 9376		 OutPut_ThanMa_1 = 9377
InPut_ThanMa_2 = 9377		 OutPut_ThanMa_2 = 9378
InPut_ThanMa_3 = 9377		 OutPut_ThanMa_3 = 9379
InPut_ThanMa_4 = 9379		 OutPut_ThanMa_4 = 9380
InPut_ThanMa_5 = 9380		 OutPut_ThanMa_5 = 9381
InPut_ThanMa_6 = 9381		 OutPut_ThanMa_6 = 9382
InPut_ThanMa_7 = 9382		 OutPut_ThanMa_7 = 9383
InPut_ThanMa_8 = 9383		 OutPut_ThanMa_8 = 9384
InPut_ThanMa_9 = 9384		 OutPut_ThanMa_9 = 9385
InPut_ThanMa_10 = 9385		 OutPut_ThanMa_10 = 9386

nItem_ThanMa = 5204
nKNB_ThanMa = 2480
nXu_ThanMa = 417
nNL_ThanMa_1 = 500;	 nNL_ThanMa_2 = 1000;	 nNL_ThanMa_3 = 1500;	 nNL_ThanMa_4 = 2000;	 nNL_ThanMa_5 = 3000;	 nNL_ThanMa_6 = 4000;	 nNL_ThanMa_7 = 5000;	 nNL_ThanMa_8 = 7000;	 nNL_ThanMa_9 = 8000;		 nNL_ThanMa_10 = 9000;
tbXu_ThanMa_1 = 300;	 tbXu_ThanMa_2 = 500;	 tbXu_ThanMa_3 = 1000;	 tbXu_ThanMa_4 = 1500;	 tbXu_ThanMa_5 = 2000;	 tbXu_ThanMa_6 = 3000;	 tbXu_ThanMa_7 = 4000;	 tbXu_ThanMa_8 = 5000;	 tbXu_ThanMa_9 = 7000;		 tbXu_ThanMa_10 = 8000;
nRanD_ThanMa_1 = 10;	 nRanD_ThanMa_2 = 15;	 nRanD_ThanMa_3 = 70;	 nRanD_ThanMa_4 = 25;	 nRanD_ThanMa_5 = 30;	 nRanD_ThanMa_6 = 40;	 nRanD_ThanMa_7 = 60;	 nRanD_ThanMa_8 = 70;	 nRanD_ThanMa_9 = 80;		 nRanD_ThanMa_10 = 100;


NangCapThanMa.tbFormulaList = {
	[1] = {szName=InName_ThanMa_1},
	[2] = {szName=InName_ThanMa_2},
	[3] = {szName=InName_ThanMa_3},
	[4] = {szName=InName_ThanMa_4},
	[5] = {szName=InName_ThanMa_5},
	[6] = {szName=InName_ThanMa_6},
	[7] = {szName=InName_ThanMa_7},
	[8] = {szName=InName_ThanMa_8},
	[9] = {szName=InName_ThanMa_9},
	[10] = {szName=InName_ThanMa_10},
}

NangCapThanMa.CommonMaterial = {
	[1] = {
		{szName=InName_ThanMa_0,tbProp={0,InPut_ThanMa_1},nQuality=1},
		{szName="ThÇn M· §¬n",tbProp={6,1,nItem_ThanMa,1,0,0},nCount=nNL_ThanMa_1},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_ThanMa_1},
	},
	[2] = {
		{szName=InName_ThanMa_1,tbProp={0,InPut_ThanMa_2},nQuality=1},
		{szName="ThÇn M· §¬n",tbProp={6,1,nItem_ThanMa,1,0,0},nCount=nNL_ThanMa_2},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_ThanMa_2},
	},
	[3] = {
		{szName=InName_ThanMa_2,tbProp={0,InPut_ThanMa_3},nQuality=1},
		{szName="§¹i Tinh Ngäc",tbProp={6,1,4873,1,0,0},nCount=3000},
		{szName="Kim Nguyªn B¶o",tbProp={4,1496,1,1,0,0},nCount=800},
	},
	[4] = {
		{szName=InName_ThanMa_3,tbProp={0,InPut_ThanMa_4},nQuality=1},
		{szName="ThÇn M· §¬n",tbProp={6,1,nItem_ThanMa,1,0,0},nCount=nNL_ThanMa_4},
		{szName="TiÒn Xu",tbProp={4,nXu_ThanMa,1,1,0,0},nCount=tbXu_ThanMa_4},
	},
	[5] = {
		{szName=InName_ThanMa_4,tbProp={0,InPut_ThanMa_5},nQuality=1},
		{szName="ThÇn M· §¬n",tbProp={6,1,nItem_ThanMa,1,0,0},nCount=nNL_ThanMa_5},
		{szName="TiÒn Xu",tbProp={4,nXu_ThanMa,1,1,0,0},nCount=tbXu_ThanMa_5},
	},
	[6] = {
		{szName=InName_ThanMa_5,tbProp={0,InPut_ThanMa_6},nQuality=1},
		{szName="ThÇn M· §¬n",tbProp={6,1,nItem_ThanMa,1,0,0},nCount=nNL_ThanMa_6},
		{szName="TiÒn Xu",tbProp={4,nXu_ThanMa,1,1,0,0},nCount=tbXu_ThanMa_6},
	},
	[7] = {
		{szName=InName_ThanMa_6,tbProp={0,InPut_ThanMa_7},nQuality=1},
		{szName="ThÇn M· §¬n",tbProp={6,1,nItem_ThanMa,1,0,0},nCount=nNL_ThanMa_7},
		{szName="TiÒn Xu",tbProp={4,nXu_ThanMa,1,1,0,0},nCount=tbXu_ThanMa_7},
	},
	[8] = {
		{szName=InName_ThanMa_7,tbProp={0,InPut_ThanMa_8},nQuality=1},
		{szName="ThÇn M· §¬n",tbProp={6,1,nItem_ThanMa,1,0,0},nCount=nNL_ThanMa_8},
		{szName="TiÒn Xu",tbProp={4,nXu_ThanMa,1,1,0,0},nCount=tbXu_ThanMa_8},
	},
	[9] = {
		{szName=InName_ThanMa_8,tbProp={0,InPut_ThanMa_9},nQuality=1},
		{szName="ThÇn M· §¬n",tbProp={6,1,nItem_ThanMa,1,0,0},nCount=nNL_ThanMa_9},
		{szName="TiÒn Xu",tbProp={4,nXu_ThanMa,1,1,0,0},nCount=tbXu_ThanMa_9},
	},
	[10] = {
		{szName=InName_ThanMa_9,tbProp={0,InPut_ThanMa_10},nQuality=1},
		{szName="ThÇn M· §¬n",tbProp={6,1,nItem_ThanMa,1,0,0},nCount=nNL_ThanMa_10},
		{szName="TiÒn Xu",tbProp={4,nXu_ThanMa,1,1,0,0},nCount=tbXu_ThanMa_10},
	},
}

NangCapThanMa.CommonEquip = {
	[1] = {
		{szName=InName_ThanMa_1,tbProp={0,OutPut_ThanMa_1},nQuality=1,nRate=nRanD_ThanMa_1,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ThanMa_1) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ThanMa_1,
		},
	},
	[2] = {
		{szName=InName_ThanMa_2,tbProp={0,OutPut_ThanMa_2},nQuality=1,nRate=nRanD_ThanMa_2,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ThanMa_2) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ThanMa_2,
		},
	},
	[3] = {
		{szName=InName_ThanMa_3,tbProp={0,OutPut_ThanMa_3},nQuality=1,nRate=nRanD_ThanMa_3},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ThanMa_3) 
			end,
			nRate = 100-nRanD_ThanMa_3,
		},
	},
	[4] = {
		{szName=InName_ThanMa_4,tbProp={0,OutPut_ThanMa_4},nQuality=1,nRate=nRanD_ThanMa_4,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ThanMa_4) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ThanMa_4,
		},
	},
	[5] = {
		{szName=InName_ThanMa_5,tbProp={0,OutPut_ThanMa_5},nQuality=1,nRate=nRanD_ThanMa_5,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ThanMa_5) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ThanMa_5,
		},
	},
	[6] = {
		{szName=InName_ThanMa_6,tbProp={0,OutPut_ThanMa_6},nQuality=1,nRate=nRanD_ThanMa_6,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ThanMa_6) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ThanMa_6,
		},
	},
	[7] = {
		{szName=InName_ThanMa_7,tbProp={0,OutPut_ThanMa_7},nQuality=1,nRate=nRanD_ThanMa_7,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ThanMa_7) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ThanMa_7,
		},
	},
	[8] = {
		{szName=InName_ThanMa_8,tbProp={0,OutPut_ThanMa_8},nQuality=1,nRate=nRanD_ThanMa_8,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ThanMa_8) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ThanMa_8,
		},
	},
	[9] = {
		{szName=InName_ThanMa_9,tbProp={0,OutPut_ThanMa_9},nQuality=1,nRate=nRanD_ThanMa_9,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ThanMa_9) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ThanMa_9,
		},
	},
	[10] = {
		{szName=InName_ThanMa_10,tbProp={0,OutPut_ThanMa_10},nQuality=1,nRate=nRanD_ThanMa_10,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ThanMa_10) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_ThanMa_10,
		},
	},
}

-----------------------------------------------------------Liªn KÕt Npc §èi Tho¹i------------------------------------------------------------------------------
function NangCapThanMa:CheTaoThanMa()
	local p = NangCapThanMa:new("N©ng CÊp ThÇn M·","NangCapThanMa", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H·y Chän Lo¹i ThÇn M· Muèn N©ng CÊp"
	local tbOpt = {
		--{self.tbFormulaList[1].szName, p.ComposeGiveUI_1, {p}},
		--{self.tbFormulaList[2].szName, p.ComposeGiveUI_2, {p}},
		{self.tbFormulaList[3].szName, p.ComposeGiveUI_3, {p}},
		--{self.tbFormulaList[4].szName, p.ComposeGiveUI_4, {p}},
		--{self.tbFormulaList[5].szName, p.ComposeGiveUI_5, {p}},
		--{self.tbFormulaList[6].szName, p.ComposeGiveUI_6, {p}},
		--{self.tbFormulaList[7].szName, p.ComposeGiveUI_7, {p}},
		--{self.tbFormulaList[8].szName, p.ComposeGiveUI_8, {p}},
		--{self.tbFormulaList[9].szName, p.ComposeGiveUI_9, {p}},
		--{self.tbFormulaList[10].szName, p.ComposeGiveUI_10, {p}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------N©ng CÊp ThÇn M· 1-----------------------------------------------------------------
function NangCapThanMa:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ThanMa_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function NangCapThanMa:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp ThÇn M· 2-----------------------------------------------------------------
function NangCapThanMa:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ThanMa_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function NangCapThanMa:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp ThÇn M· 3-----------------------------------------------------------------
function NangCapThanMa:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ThanMa_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function NangCapThanMa:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp ThÇn M· 4-----------------------------------------------------------------
function NangCapThanMa:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ThanMa_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function NangCapThanMa:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp ThÇn M· 5-----------------------------------------------------------------
function NangCapThanMa:ComposeGiveUI_5()
	local szTitle = (format("%s", self.tbFormulaList[5].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[5])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ThanMa_5.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_5, {self}}, nil, self.bAccessBindItem)
end

function NangCapThanMa:GiveUIOk_5(nCount)
	if (self:CheckMaterial(self.CommonMaterial[5], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[5], 1)
	self:ConsumeMaterial(self.CommonMaterial[5], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp ThÇn M· 6-----------------------------------------------------------------
function NangCapThanMa:ComposeGiveUI_6()
	local szTitle = (format("%s", self.tbFormulaList[6].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[6])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ThanMa_6.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_6, {self}}, nil, self.bAccessBindItem)
end

function NangCapThanMa:GiveUIOk_6(nCount)
	if (self:CheckMaterial(self.CommonMaterial[6], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[6], 1)
	self:ConsumeMaterial(self.CommonMaterial[6], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp ThÇn M· 7-----------------------------------------------------------------
function NangCapThanMa:ComposeGiveUI_7()
	local szTitle = (format("%s", self.tbFormulaList[7].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[7])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ThanMa_7.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_7, {self}}, nil, self.bAccessBindItem)
end

function NangCapThanMa:GiveUIOk_7(nCount)
	if (self:CheckMaterial(self.CommonMaterial[7], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[7], 1)
	self:ConsumeMaterial(self.CommonMaterial[7], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp ThÇn M· 8-----------------------------------------------------------------
function NangCapThanMa:ComposeGiveUI_8()
	local szTitle = (format("%s", self.tbFormulaList[8].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[8])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ThanMa_8.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_8, {self}}, nil, self.bAccessBindItem)
end

function NangCapThanMa:GiveUIOk_8(nCount)
	if (self:CheckMaterial(self.CommonMaterial[8], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[8], 1)
	self:ConsumeMaterial(self.CommonMaterial[8], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp ThÇn M· 9-----------------------------------------------------------------
function NangCapThanMa:ComposeGiveUI_9()
	local szTitle = (format("%s", self.tbFormulaList[9].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[9])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ThanMa_9.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_9, {self}}, nil, self.bAccessBindItem)
end

function NangCapThanMa:GiveUIOk_9(nCount)
	if (self:CheckMaterial(self.CommonMaterial[9], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[9], 1)
	self:ConsumeMaterial(self.CommonMaterial[9], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp ThÇn M· 10-----------------------------------------------------------------
function NangCapThanMa:ComposeGiveUI_10()
	local szTitle = (format("%s", self.tbFormulaList[10].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[10])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ThanMa_10.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_10, {self}}, nil, self.bAccessBindItem)
end

function NangCapThanMa:GiveUIOk_10(nCount)
	if (self:CheckMaterial(self.CommonMaterial[10], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[10], 1)
	self:ConsumeMaterial(self.CommonMaterial[10], 1, self.szLogTitle)
end
-------------------------------------------------------------------------------------------
function DialogMain_ThanMa() NangCapThanMa:CheTaoThanMa() end
pEventType:Reg("ThÇn BÝ Thî RÌn ","T¨ng CÊp ThÇn M·", DialogMain_ThanMa,{tbHKMPAward})
-------------------------------------------------------------------------------------------