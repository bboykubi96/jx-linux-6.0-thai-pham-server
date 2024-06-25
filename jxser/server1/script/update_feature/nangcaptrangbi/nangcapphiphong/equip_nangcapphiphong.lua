----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
---------------------------------------------------
tbNangCapPhiPhong = {}
tbNangCapPhiPhong = tbActivityCompose:new()
tbNangCapPhiPhong.bAccessBindItem = 1
InPut_PhiPhong_1 = 9365		 OutPut_PhiPhong_1 = 9366
InPut_PhiPhong_2 = 9366		 OutPut_PhiPhong_2 = 9367
InPut_PhiPhong_3 = 9367		 OutPut_PhiPhong_3 = 9368
InPut_PhiPhong_4 = 9368		 OutPut_PhiPhong_4 = 9369
InPut_PhiPhong_5 = 9369		 OutPut_PhiPhong_5 = 9370
InPut_PhiPhong_6 = 9370		 OutPut_PhiPhong_6 = 9371
InPut_PhiPhong_7 = 9371		 OutPut_PhiPhong_7 = 9372
InPut_PhiPhong_8 = 9372		 OutPut_PhiPhong_8 = 9373
InPut_PhiPhong_9 = 9373		 OutPut_PhiPhong_9 = 9374
InPut_PhiPhong_10 = 9374		 OutPut_PhiPhong_10 = 9375
TinhNgoc_PhiPhong = 4807
DaiTinhNgoc_PhiPhong = 4873
ThienTinhNgoc_PhiPhong = 4806
nKNB_PhiPhong = 2480
nXu_PhiPhong = 417
nNL_PhiPhong_1 = 1000;	 nNL_PhiPhong_2 = 2000;	 nNL_PhiPhong_3 = 3000;	 nNL_PhiPhong_4 = 5000;	 nNL_PhiPhong_5 = 7000;	 nNL_PhiPhong_6 = 1000;	 nNL_PhiPhong_7 = 2000;	 nNL_PhiPhong_8 = 3000;	 nNL_PhiPhong_9 = 500;		 nNL_PhiPhong_10 = 700;
tbXu_PhiPhong_1 = 5000;	 tbXu_PhiPhong_2 = 10000;	 tbXu_PhiPhong_3 = 20000;	 tbXu_PhiPhong_4 = 3000;	 tbXu_PhiPhong_5 = 5000;	 tbXu_PhiPhong_6 = 10000;	 tbXu_PhiPhong_7 = 2000;	 tbXu_PhiPhong_8 = 3000;	 tbXu_PhiPhong_9 = 5000;	 tbXu_PhiPhong_10 = 10000;
nRanD_PhiPhong_1 = 20;	 nRanD_PhiPhong_2 = 30;	 nRanD_PhiPhong_3 = 40;	 nRanD_PhiPhong_4 = 50;	 nRanD_PhiPhong_5 = 70;	 nRanD_PhiPhong_6 = 80;	 nRanD_PhiPhong_7 = 100;	 nRanD_PhiPhong_8 = 100;	 nRanD_PhiPhong_9 = 100;	 nRanD_PhiPhong_10 = 100;


tbNangCapPhiPhong.tbFormulaList = {
	[1] = {szName="Ng�o Tuy�t => K�nh L�i"},
	[2] = {szName="K�nh L�i => Ng� Phong"},
	[3] = {szName="Ng� Phong => Ph� Quang"},
	[4] = {szName="Ph� Quang => Kh�p Th�n"},
	[5] = {szName="Kh�p Th�n => K�nh Thi�n"},
	[6] = {szName="K�nh Thi�n => Huy�n Kim"},
	[7] = {szName="Huy�n Kim => V� C�c"},
	[8] = {szName="V� C�c => ��i Th�nh"},
	[9] = {szName="��i Th�nh => Si�u Th�n"},
	[10] = {szName="Si�u Th�n => Truy�n Thuy�t"},
}

tbNangCapPhiPhong.CommonMaterial = {
	[1] = {
		{szName="Ng�o Tuy�t",tbProp={0,InPut_PhiPhong_1},nQuality=1},
		{szName="Tinh Ng�c",tbProp={6,1,TinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_1},
		{szName="V�n L��ng",nJxb=10000,nCount=tbXu_PhiPhong_1},
	},
	[2] = {
		{szName="K�nh L�i",tbProp={0,InPut_PhiPhong_2},nQuality=1},
		{szName="Tinh Ng�c",tbProp={6,1,TinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_2},
		{szName="V�n L��ng",nJxb=10000,nCount=tbXu_PhiPhong_2},
	},
	[3] = {
		{szName="Ng� Phong",tbProp={0,InPut_PhiPhong_3},nQuality=1},
		{szName="Tinh Ng�c",tbProp={6,1,TinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_3},
		{szName="V�n L��ng",nJxb=10000,nCount=tbXu_PhiPhong_3},
	},
	[4] = {
		{szName="Ph� Quang",tbProp={0,InPut_PhiPhong_4},nQuality=1},
		{szName="Tinh Ng�c",tbProp={6,1,TinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_4},
		{szName="Ti�n Xu",tbProp={4,nXu_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_4},
	},
	[5] = {
		{szName="Kh�p Th�n",tbProp={0,InPut_PhiPhong_5},nQuality=1},
		{szName="Tinh Ng�c",tbProp={6,1,TinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_5},
		{szName="Ti�n Xu",tbProp={4,nXu_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_5},
	},
	[6] = {
		{szName="K�nh Thi�n",tbProp={0,InPut_PhiPhong_6},nQuality=1},
		{szName="��i Tinh Ng�c",tbProp={6,1,DaiTinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_6},
		{szName="Ti�n Xu",tbProp={4,nXu_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_6},
	},
	[7] = {
		{szName="Huy�n Kim",tbProp={0,InPut_PhiPhong_7},nQuality=1},
		{szName="��i Tinh Ng�c",tbProp={6,1,DaiTinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_7},
		{szName="Kim Nguy�n B�o",tbProp={4,nKNB_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_7},
	},
	[8] = {
		{szName="V� C�c",tbProp={0,InPut_PhiPhong_8},nQuality=1},
		{szName="��i Tinh Ng�c",tbProp={6,1,DaiTinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_8},
		{szName="Kim Nguy�n B�o",tbProp={4,nKNB_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_8},
	},
	[9] = {
		{szName="��i Th�nh",tbProp={0,InPut_PhiPhong_9},nQuality=1},
		{szName="Thi�n Tinh Ng�c",tbProp={6,1,ThienTinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_9},
		{szName="Kim Nguy�n B�o",tbProp={4,nKNB_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_9},
	},
	[10] = {
		{szName="Si�u Th�n",tbProp={0,InPut_PhiPhong_10},nQuality=1},
		{szName="Thi�n Tinh Ng�c",tbProp={6,1,ThienTinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_10},
		{szName="Kim Nguy�n B�o",tbProp={4,nKNB_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_10},
	},
}

tbNangCapPhiPhong.CommonEquip = {
	[1] = {
		{szName="Phi Phong Kinh L�i",tbProp={0,OutPut_PhiPhong_1},nQuality=1,nRate=nRanD_PhiPhong_1,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_1) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_1,
		},
	},
	[2] = {
		{szName="Phi Phong Ng� Phong",tbProp={0,OutPut_PhiPhong_2},nQuality=1,nRate=nRanD_PhiPhong_2,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_2) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_2,
		},
	},
	[3] = {
		{szName="Phi Phong Ph� Quang",tbProp={0,OutPut_PhiPhong_3},nQuality=1,nRate=nRanD_PhiPhong_3,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_3) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_3,
		},
	},
	[4] = {
		{szName="Phi Phong Kh�p Th�n",tbProp={0,OutPut_PhiPhong_4},nQuality=1,nRate=nRanD_PhiPhong_4,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_4) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_4,
		},
	},
	[5] = {
		{szName="Phi Phong K�nh Thi�n",tbProp={0,OutPut_PhiPhong_5},nQuality=1,nRate=nRanD_PhiPhong_5,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_5) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_5,
		},
	},
	[6] = {
		{szName="Phi Phong Huy�n Kim",tbProp={0,OutPut_PhiPhong_6},nQuality=1,nRate=nRanD_PhiPhong_6,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_6) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_6,
		},
	},
	[7] = {
		{szName="Phi Phong V� C�c",tbProp={0,OutPut_PhiPhong_7},nQuality=1,nRate=nRanD_PhiPhong_7,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_7) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_7,
		},
	},
	[8] = {
		{szName="Phi Phong ��i Th�nh",tbProp={0,OutPut_PhiPhong_8},nQuality=1,nRate=nRanD_PhiPhong_8,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_8) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_8,
		},
	},
	[9] = {
		{szName="Phi Phong Si�u Th�n",tbProp={0,OutPut_PhiPhong_9},nQuality=1,nRate=nRanD_PhiPhong_9,nBindState = -2},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_9) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_9,
		},
	},
	[10] = {
		{szName="Phi Phong Truy�n Thuy�t",tbProp={0,OutPut_PhiPhong_10},nQuality=1,nRate=nRanD_PhiPhong_10},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_10) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_10,
		},
	},
}

-----------------------------------------------------------Li�n K�t Npc ��i Tho�i------------------------------------------------------------------------------
function tbNangCapPhiPhong:NangCapPhiPhong()
	local p = tbNangCapPhiPhong:new("N�ng C�p Phi Phong","tbNangCapPhiPhong", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H�y Ch�n Lo�i Phi Phong Mu�n N�ng C�p"
	local tbOpt = {
		--{self.tbFormulaList[1].szName, p.ComposeGiveUI_1, {p}},
		--{self.tbFormulaList[2].szName, p.ComposeGiveUI_2, {p}},
		--{self.tbFormulaList[3].szName, p.ComposeGiveUI_3, {p}},
		--{self.tbFormulaList[4].szName, p.ComposeGiveUI_4, {p}},
		--{self.tbFormulaList[5].szName, p.ComposeGiveUI_5, {p}},
		--{self.tbFormulaList[6].szName, p.ComposeGiveUI_6, {p}},
		--{self.tbFormulaList[7].szName, p.ComposeGiveUI_7, {p}},
		--{self.tbFormulaList[8].szName, p.ComposeGiveUI_8, {p}},
		--{self.tbFormulaList[9].szName, p.ComposeGiveUI_9, {p}},
		--{self.tbFormulaList[10].szName, p.ComposeGiveUI_10, {p}},
		{"H�y B�"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------N�ng C�p Phi Phong 1-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_PhiPhong_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Phi Phong 2-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_PhiPhong_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Phi Phong 3-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_PhiPhong_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Phi Phong 4-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_PhiPhong_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Phi Phong 5-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_5()
	local szTitle = (format("%s", self.tbFormulaList[5].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[5])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_PhiPhong_5.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_5, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_5(nCount)
	if (self:CheckMaterial(self.CommonMaterial[5], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[5], 1)
	self:ConsumeMaterial(self.CommonMaterial[5], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Phi Phong 6-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_6()
	local szTitle = (format("%s", self.tbFormulaList[6].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[6])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_PhiPhong_6.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_6, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_6(nCount)
	if (self:CheckMaterial(self.CommonMaterial[6], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[6], 1)
	self:ConsumeMaterial(self.CommonMaterial[6], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Phi Phong 7-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_7()
	local szTitle = (format("%s", self.tbFormulaList[7].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[7])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_PhiPhong_7.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_7, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_7(nCount)
	if (self:CheckMaterial(self.CommonMaterial[7], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[7], 1)
	self:ConsumeMaterial(self.CommonMaterial[7], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Phi Phong 8-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_8()
	local szTitle = (format("%s", self.tbFormulaList[8].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[8])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_PhiPhong_8.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_8, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_8(nCount)
	if (self:CheckMaterial(self.CommonMaterial[8], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[8], 1)
	self:ConsumeMaterial(self.CommonMaterial[8], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Phi Phong 9-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_9()
	local szTitle = (format("%s", self.tbFormulaList[9].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[9])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_PhiPhong_9.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_9, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_9(nCount)
	if (self:CheckMaterial(self.CommonMaterial[9], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[9], 1)
	self:ConsumeMaterial(self.CommonMaterial[9], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Phi Phong 10-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_10()
	local szTitle = (format("%s", self.tbFormulaList[10].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[10])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_PhiPhong_10.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_10, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_10(nCount)
	if (self:CheckMaterial(self.CommonMaterial[10], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[10], 1)
	self:ConsumeMaterial(self.CommonMaterial[10], 1, self.szLogTitle)
end
-------------------------------------------------------------------------------------------
function DialogMain_PhiPhong() tbNangCapPhiPhong:NangCapPhiPhong() end
pEventType:Reg("Th�n B� Th� R�n ","N�ng C�p Phi Phong", DialogMain_PhiPhong,{tbHKMPAward})
-------------------------------------------------------------------------------------------