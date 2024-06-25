----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
---------------------------------------------------
NangCapMatNa = {}
NangCapMatNa = tbActivityCompose:new()
NangCapMatNa.bAccessBindItem = 1
InPut_MatNa_1 = 9324		 OutPut_MatNa_1 = 9325
InPut_MatNa_2 = 9325		 OutPut_MatNa_2 = 9326
InPut_MatNa_3 = 9326		 OutPut_MatNa_3 = 9327
InPut_MatNa_4 = 9327		 OutPut_MatNa_4 = 9328
InPut_MatNa_5 = 9328		 OutPut_MatNa_5 = 9329
InPut_MatNa_6 = 9329		 OutPut_MatNa_6 = 9330
InPut_MatNa_7 = 9330		 OutPut_MatNa_7 = 9331
InPut_MatNa_8 = 9331		 OutPut_MatNa_8 = 9332
InPut_MatNa_9 = 9330		 OutPut_MatNa_9 = 9333
InPut_MatNa_10 = 9333	 OutPut_MatNa_10 = 9334
InPut_MatNa_11 = 9334	 OutPut_MatNa_11 = 9335
InPut_MatNa_12 = 9335	 OutPut_MatNa_12 = 9336
InPut_MatNa_13 = 9336	 OutPut_MatNa_13 = 9337
InPut_MatNa_14 = 9337	 OutPut_MatNa_14 = 9338
nItem_MatNa = 5203
nKNB_MatNa = 2480
nXu_MatNa = 417
nNL_MatNa_1 = 100;	 nNL_MatNa_2 = 200;		 nNL_MatNa_3 = 300;		 nNL_MatNa_4 = 500;		 nNL_MatNa_5 = 700;		 nNL_MatNa_6 = 1000;		 nNL_MatNa_7 = 1500;		 nNL_MatNa_8 = 2000;		 nNL_MatNa_9 = 3000;		 nNL_MatNa_10 = 5000;	 nNL_MatNa_11 = 7000;	 nNL_MatNa_12 = 9000;	 nNL_MatNa_13 = 12000;	 nNL_MatNa_14 = 15000;
tbXu_MatNa_1 = 3000;	 tbXu_MatNa_2	 = 5000;	 tbXu_MatNa_3 = 7000;	 tbXu_MatNa_4 = 10000;	 tbXu_MatNa_5 = 1500;	 tbXu_MatNa_6 = 2000;	 tbXu_MatNa_7 = 3000;	 tbXu_MatNa_8 = 4000;	 tbXu_MatNa_9 = 5000;		 tbXu_MatNa_10 = 350;	 tbXu_MatNa_11 = 450;	 tbXu_MatNa_12 = 600;	 tbXu_MatNa_13 = 750;	 tbXu_MatNa_14 = 1000
nRanD_mn_1 = 20;	 nRanD_mn_2 = 25;		 nRanD_mn_3 = 30;		 nRanD_mn_4 = 40;		 nRanD_mn_5 = 50;		 nRanD_mn_6 = 60;		 nRanD_mn_7 = 70;		 nRanD_mn_8 = 75;		 nRanD_mn_9 = 70;		 nRanD_mn_10 = 100;		 nRanD_mn_11 = 100;		 nRanD_mn_12 = 100;		 nRanD_mn_13 = 100;		 nRanD_mn_14 = 100;

NangCapMatNa.tbFormulaList = {
	[1] = {szName="Si�u Ph�m => Kinh H�ng"},
	[2] = {szName="Kinh H�ng => L�ng Tuy�t"},
	[3] = {szName="L�ng Tuy�t => Kinh Th�"},
	[4] = {szName="Kinh Th� => Ng� Kh�ng"},
	[5] = {szName="Ng� Kh�ng => H�n Thi�n"},
	[6] = {szName="H�n Thi�n => S� Ph��ng"},
	[7] = {szName="S� Ph��ng => Ti�m Long"},
	[8] = {szName="Ti�m Long => Ch� T�n"},
	[9] = {szName="S� Ph��ng => V� Song"},
	[10] = {szName="V� Song => B� V��ng"},
	[11] = {szName="B� V��ng => Y�u Th�n"},
	[12] = {szName="Y�u Th�n => V� Th�nh"},
	[13] = {szName="V� Th�nh => Huy�n Tho�i"},
	[14] = {szName="Huy�n Tho�i => Truy�n Thuy�t"},
}

NangCapMatNa.CommonMaterial = {
	[1] = {
		{szName="Si�u Ph�m",tbProp={0,InPut_MatNa_1},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_1},
		{szName="V�n L��ng",nJxb=10000,nCount=tbXu_MatNa_1},
	},
	[2] = {
		{szName="Kinh H�ng",tbProp={0,InPut_MatNa_2},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_2},
		{szName="V�n L��ng",nJxb=10000,nCount=tbXu_MatNa_2},
	},
	[3] = {
		{szName="L�ng Tuy�t",tbProp={0,InPut_MatNa_3},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_3},
		{szName="V�n L��ng",nJxb=10000,nCount=tbXu_MatNa_3},
	},
	[4] = {
		{szName="Kinh Th�",tbProp={0,InPut_MatNa_4},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_4},
		{szName="V�n L��ng",nJxb=10000,nCount=tbXu_MatNa_4},
	},
	[5] = {
		{szName="Ng� Kh�ng",tbProp={0,InPut_MatNa_5},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_5},
		{szName="Ti�n Xu",tbProp={4,nXu_MatNa,1,1,0,0},nCount=tbXu_MatNa_5},
	},
	[6] = {
		{szName="H�n Thi�n",tbProp={0,InPut_MatNa_6},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_6},
		{szName="Ti�n Xu",tbProp={4,nXu_MatNa,1,1,0,0},nCount=tbXu_MatNa_6},
	},
	[7] = {
		{szName="S� Ph��ng",tbProp={0,InPut_MatNa_7},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_7},
		{szName="Ti�n Xu",tbProp={4,nXu_MatNa,1,1,0,0},nCount=tbXu_MatNa_7},
	},
	[8] = {
		{szName="Ti�m Long",tbProp={0,InPut_MatNa_8},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_8},
		{szName="Ti�n Xu",tbProp={4,nXu_MatNa,1,1,0,0},nCount=tbXu_MatNa_8},
	},
	[9] = {
		{szName="S� Ph��ng",tbProp={0,InPut_MatNa_9},nQuality=1},
		{szName="��i Tinh Ng�c",tbProp={6,1,4873,1,0,0},nCount=3000},
		{szName="Kim Nguy�n B�o",tbProp={4,1496,1,1,0,0},nCount=800},
	},
	[10] = {
		{szName="V� Song",tbProp={0,InPut_MatNa_10},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_10},
		{szName="Kim Nguy�n B�o",tbProp={4,nKNB_MatNa,1,1,0,0},nCount=tbXu_MatNa_10},
	},
	[11] = {
		{szName="B� V��ng",tbProp={0,InPut_MatNa_11},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_11},
		{szName="Kim Nguy�n B�o",tbProp={4,nKNB_MatNa,1,1,0,0},nCount=tbXu_MatNa_11},
	},
	[12] = {
		{szName="Y�u Th�n",tbProp={0,InPut_MatNa_12},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_12},
		{szName="Kim Nguy�n B�o",tbProp={4,nKNB_MatNa,1,1,0,0},nCount=tbXu_MatNa_12},
	},
	[13] = {
		{szName="V� Th�nh",tbProp={0,InPut_MatNa_13},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_13},
		{szName="Kim Nguy�n B�o",tbProp={4,nKNB_MatNa,1,1,0,0},nCount=tbXu_MatNa_13},
	},
	[14] = {
		{szName="Huy�n Tho�i",tbProp={0,InPut_MatNa_14},nQuality=1},
		{szName="Huy�n Thi�n Th�ch",tbProp={6,1,nItem_MatNa,1,0,0},nCount=nNL_MatNa_14},
		{szName="Kim Nguy�n B�o",tbProp={4,nKNB_MatNa,1,1,0,0},nCount=tbXu_MatNa_14},
	},
}

NangCapMatNa.CommonEquip = {
	[1] = {
		{szName="M�t N� Kinh H�ng",tbProp={0,OutPut_MatNa_1},nQuality=1,nRate=nRanD_mn_1,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_1) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_1,
		},
	},
	[2] = {
		{szName="M�t N� L�ng Tuy�t",tbProp={0,OutPut_MatNa_2},nQuality=1,nRate=nRanD_mn_2,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_2) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_2,
		},
	},
	[3] = {
		{szName="M�t N� Kinh Th�",tbProp={0,OutPut_MatNa_3},nQuality=1,nRate=nRanD_mn_3,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_3) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_3,
		},
	},
	[4] = {
		{szName="M�t N� Ng� Kh�ng",tbProp={0,OutPut_MatNa_4},nQuality=1,nRate=nRanD_mn_4,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_4) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_4,
		},
	},
	[5] = {
		{szName="M�t N� H�n Thi�n",tbProp={0,OutPut_MatNa_5},nQuality=1,nRate=nRanD_mn_5,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_5) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_5,
		},
	},
	[6] = {
		{szName="M�t N� S� Ph��ng",tbProp={0,OutPut_MatNa_6},nQuality=1,nRate=nRanD_mn_6,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_6) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_6,
		},
	},
	[7] = {
		{szName="M�t N� Ti�m Long",tbProp={0,OutPut_MatNa_7},nQuality=1,nRate=nRanD_mn_7,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_7) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_7,
		},
	},
	[8] = {
		{szName="M�t N� Ch� T�n",tbProp={0,OutPut_MatNa_8},nQuality=1,nRate=nRanD_mn_8,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_8) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_8,
		},
	},
	[9] = {
		{szName="M�t N� V� Song",tbProp={0,OutPut_MatNa_9},nQuality=1,nRate=nRanD_mn_9},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_9) 
			end,
			nRate = 100-nRanD_mn_9,
		},
	},
	[10] = {
		{szName="M�t N� B� V��ng",tbProp={0,OutPut_MatNa_10},nQuality=1,nRate=nRanD_mn_10,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_10) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_10,
		},
	},
	[11] = {
		{szName="M�t N� Y�u Th�n",tbProp={0,OutPut_MatNa_11},nQuality=1,nRate=nRanD_mn_11,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_11) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_11,
		},
	},
	[12] = {
		{szName="M�t N� V� Th�nh",tbProp={0,OutPut_MatNa_12},nQuality=1,nRate=nRanD_mn_12,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_12) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_12,
		},
	},
	[13] = {
		{szName="M�t N� Huy�n Tho�i",tbProp={0,OutPut_MatNa_13},nQuality=1,nRate=nRanD_mn_13,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_13) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_13,
		},
	},
	[14] = {
		{szName="M�t N� Truy�n Thuy�t",tbProp={0,OutPut_MatNa_14},nQuality=1,nRate=nRanD_mn_14,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_MatNa_14) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_mn_14,
		},
	},
}

-----------------------------------------------------------Li�n K�t Npc ��i Tho�i------------------------------------------------------------------------------
function NangCapMatNa:CheTaoMatNa()
	local p = NangCapMatNa:new("N�ng C�p M�t N� Ho�ng Kim","NangCapMatNa", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H�y Ch�n Lo�i M�t N� Ho�ng Kim Mu�n N�ng C�p"
	local tbOpt = {
		--{self.tbFormulaList[1].szName, p.ComposeGiveUI_1, {p}},
		--{self.tbFormulaList[2].szName, p.ComposeGiveUI_2, {p}},
		--{self.tbFormulaList[3].szName, p.ComposeGiveUI_3, {p}},
		--{self.tbFormulaList[4].szName, p.ComposeGiveUI_4, {p}},
		--{self.tbFormulaList[5].szName, p.ComposeGiveUI_5, {p}},
		--{self.tbFormulaList[6].szName, p.ComposeGiveUI_6, {p}},
		--{self.tbFormulaList[7].szName, p.ComposeGiveUI_7, {p}},
		--{self.tbFormulaList[8].szName, p.ComposeGiveUI_8, {p}},
		{self.tbFormulaList[9].szName, p.ComposeGiveUI_9, {p}},
		--{self.tbFormulaList[10].szName, p.ComposeGiveUI_10, {p}},
		--{self.tbFormulaList[11].szName, p.ComposeGiveUI_11, {p}},
		--{self.tbFormulaList[12].szName, p.ComposeGiveUI_12, {p}},
		--{self.tbFormulaList[13].szName, p.ComposeGiveUI_13, {p}},
		--{self.tbFormulaList[14].szName, p.ComposeGiveUI_14, {p}},
		{"H�y B�"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 1-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 2-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 3-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 4-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 5-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_5()
	local szTitle = (format("%s", self.tbFormulaList[5].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[5])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_5.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_5, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_5(nCount)
	if (self:CheckMaterial(self.CommonMaterial[5], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[5], 1)
	self:ConsumeMaterial(self.CommonMaterial[5], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 6-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_6()
	local szTitle = (format("%s", self.tbFormulaList[6].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[6])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_6.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_6, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_6(nCount)
	if (self:CheckMaterial(self.CommonMaterial[6], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[6], 1)
	self:ConsumeMaterial(self.CommonMaterial[6], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 7-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_7()
	local szTitle = (format("%s", self.tbFormulaList[7].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[7])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_7.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_7, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_7(nCount)
	if (self:CheckMaterial(self.CommonMaterial[7], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[7], 1)
	self:ConsumeMaterial(self.CommonMaterial[7], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 8-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_8()
	local szTitle = (format("%s", self.tbFormulaList[8].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[8])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_8.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_8, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_8(nCount)
	if (self:CheckMaterial(self.CommonMaterial[8], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[8], 1)
	self:ConsumeMaterial(self.CommonMaterial[8], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 9-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_9()
	local szTitle = (format("%s", self.tbFormulaList[9].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[9])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_9.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_9, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_9(nCount)
	if (self:CheckMaterial(self.CommonMaterial[9], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[9], 1)
	self:ConsumeMaterial(self.CommonMaterial[9], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 10-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_10()
	local szTitle = (format("%s", self.tbFormulaList[10].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[10])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_10.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_10, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_10(nCount)
	if (self:CheckMaterial(self.CommonMaterial[10], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[10], 1)
	self:ConsumeMaterial(self.CommonMaterial[10], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 11-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_11()
	local szTitle = (format("%s", self.tbFormulaList[11].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[11])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_11.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_11, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_11(nCount)
	if (self:CheckMaterial(self.CommonMaterial[11], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[11], 1)
	self:ConsumeMaterial(self.CommonMaterial[11], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 12-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_12()
	local szTitle = (format("%s", self.tbFormulaList[12].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[12])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_12.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_12, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_12(nCount)
	if (self:CheckMaterial(self.CommonMaterial[12], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[12], 1)
	self:ConsumeMaterial(self.CommonMaterial[12], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 13-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_13()
	local szTitle = (format("%s", self.tbFormulaList[13].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[13])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_13.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_13, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_13(nCount)
	if (self:CheckMaterial(self.CommonMaterial[13], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[13], 1)
	self:ConsumeMaterial(self.CommonMaterial[13], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p M�t N� Ho�ng Kim 14-----------------------------------------------------------------
function NangCapMatNa:ComposeGiveUI_14()
	local szTitle = (format("%s", self.tbFormulaList[14].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[14])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_mn_14.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_14, {self}}, nil, self.bAccessBindItem)
end

function NangCapMatNa:GiveUIOk_14(nCount)
	if (self:CheckMaterial(self.CommonMaterial[14], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[14], 1)
	self:ConsumeMaterial(self.CommonMaterial[14], 1, self.szLogTitle)
end
-------------------------------------------------------------------------------------------
function DialogMain_MatNa() NangCapMatNa:CheTaoMatNa() end
pEventType:Reg("Th�n B� Th� R�n ","T�ng C�p M�t N� Ho�ng Kim", DialogMain_MatNa,{tbHKMPAward})
-------------------------------------------------------------------------------------------