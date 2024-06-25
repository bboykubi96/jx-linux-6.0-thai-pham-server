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
	[1] = {szName="Ng¹o TuyÕt => K×nh L«i"},
	[2] = {szName="K×nh L«i => Ngù Phong"},
	[3] = {szName="Ngù Phong => PhÖ Quang"},
	[4] = {szName="PhÖ Quang => KhÊp ThÇn"},
	[5] = {szName="KhÊp ThÇn => K×nh Thiªn"},
	[6] = {szName="K×nh Thiªn => HuyÒn Kim"},
	[7] = {szName="HuyÒn Kim => V« Cùc"},
	[8] = {szName="V« Cùc => §¹i Th¸nh"},
	[9] = {szName="§¹i Th¸nh => Siªu ThÇn"},
	[10] = {szName="Siªu ThÇn => TruyÒn ThuyÕt"},
}

tbNangCapPhiPhong.CommonMaterial = {
	[1] = {
		{szName="Ng¹o TuyÕt",tbProp={0,InPut_PhiPhong_1},nQuality=1},
		{szName="Tinh Ngäc",tbProp={6,1,TinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_1},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_PhiPhong_1},
	},
	[2] = {
		{szName="K×nh L«i",tbProp={0,InPut_PhiPhong_2},nQuality=1},
		{szName="Tinh Ngäc",tbProp={6,1,TinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_2},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_PhiPhong_2},
	},
	[3] = {
		{szName="Ngù Phong",tbProp={0,InPut_PhiPhong_3},nQuality=1},
		{szName="Tinh Ngäc",tbProp={6,1,TinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_3},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_PhiPhong_3},
	},
	[4] = {
		{szName="PhÖ Quang",tbProp={0,InPut_PhiPhong_4},nQuality=1},
		{szName="Tinh Ngäc",tbProp={6,1,TinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_4},
		{szName="TiÒn Xu",tbProp={4,nXu_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_4},
	},
	[5] = {
		{szName="KhÊp ThÇn",tbProp={0,InPut_PhiPhong_5},nQuality=1},
		{szName="Tinh Ngäc",tbProp={6,1,TinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_5},
		{szName="TiÒn Xu",tbProp={4,nXu_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_5},
	},
	[6] = {
		{szName="K×nh Thiªn",tbProp={0,InPut_PhiPhong_6},nQuality=1},
		{szName="§¹i Tinh Ngäc",tbProp={6,1,DaiTinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_6},
		{szName="TiÒn Xu",tbProp={4,nXu_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_6},
	},
	[7] = {
		{szName="HuyÒn Kim",tbProp={0,InPut_PhiPhong_7},nQuality=1},
		{szName="§¹i Tinh Ngäc",tbProp={6,1,DaiTinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_7},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_7},
	},
	[8] = {
		{szName="V« Cùc",tbProp={0,InPut_PhiPhong_8},nQuality=1},
		{szName="§¹i Tinh Ngäc",tbProp={6,1,DaiTinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_8},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_8},
	},
	[9] = {
		{szName="§¹i Th¸nh",tbProp={0,InPut_PhiPhong_9},nQuality=1},
		{szName="Thiªn Tinh Ngäc",tbProp={6,1,ThienTinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_9},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_9},
	},
	[10] = {
		{szName="Siªu ThÇn",tbProp={0,InPut_PhiPhong_10},nQuality=1},
		{szName="Thiªn Tinh Ngäc",tbProp={6,1,ThienTinhNgoc_PhiPhong,1,0,0},nCount=nNL_PhiPhong_10},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_PhiPhong,1,1,0,0},nCount=tbXu_PhiPhong_10},
	},
}

tbNangCapPhiPhong.CommonEquip = {
	[1] = {
		{szName="Phi Phong Kinh L«i",tbProp={0,OutPut_PhiPhong_1},nQuality=1,nRate=nRanD_PhiPhong_1,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_1) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_1,
		},
	},
	[2] = {
		{szName="Phi Phong Ngù Phong",tbProp={0,OutPut_PhiPhong_2},nQuality=1,nRate=nRanD_PhiPhong_2,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_2) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_2,
		},
	},
	[3] = {
		{szName="Phi Phong PhÖ Quang",tbProp={0,OutPut_PhiPhong_3},nQuality=1,nRate=nRanD_PhiPhong_3,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_3) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_3,
		},
	},
	[4] = {
		{szName="Phi Phong KhÊp ThÇn",tbProp={0,OutPut_PhiPhong_4},nQuality=1,nRate=nRanD_PhiPhong_4,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_4) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_4,
		},
	},
	[5] = {
		{szName="Phi Phong K×nh Thiªn",tbProp={0,OutPut_PhiPhong_5},nQuality=1,nRate=nRanD_PhiPhong_5,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_5) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_5,
		},
	},
	[6] = {
		{szName="Phi Phong HuyÒn Kim",tbProp={0,OutPut_PhiPhong_6},nQuality=1,nRate=nRanD_PhiPhong_6,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_6) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_6,
		},
	},
	[7] = {
		{szName="Phi Phong V« Cùc",tbProp={0,OutPut_PhiPhong_7},nQuality=1,nRate=nRanD_PhiPhong_7,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_7) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_7,
		},
	},
	[8] = {
		{szName="Phi Phong §¹i Th¸nh",tbProp={0,OutPut_PhiPhong_8},nQuality=1,nRate=nRanD_PhiPhong_8,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_8) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_8,
		},
	},
	[9] = {
		{szName="Phi Phong Siªu ThÇn",tbProp={0,OutPut_PhiPhong_9},nQuality=1,nRate=nRanD_PhiPhong_9,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_9) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_9,
		},
	},
	[10] = {
		{szName="Phi Phong TruyÒn ThuyÕt",tbProp={0,OutPut_PhiPhong_10},nQuality=1,nRate=nRanD_PhiPhong_10},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_PhiPhong_10) SetItemBindState(nItemIndex, -2)
			end,
			nRate = 100-nRanD_PhiPhong_10,
		},
	},
}

-----------------------------------------------------------Liªn KÕt Npc §èi Tho¹i------------------------------------------------------------------------------
function tbNangCapPhiPhong:NangCapPhiPhong()
	local p = tbNangCapPhiPhong:new("N©ng CÊp Phi Phong","tbNangCapPhiPhong", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H·y Chän Lo¹i Phi Phong Muèn N©ng CÊp"
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
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------N©ng CÊp Phi Phong 1-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_PhiPhong_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Phi Phong 2-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_PhiPhong_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Phi Phong 3-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_PhiPhong_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Phi Phong 4-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_PhiPhong_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Phi Phong 5-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_5()
	local szTitle = (format("%s", self.tbFormulaList[5].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[5])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_PhiPhong_5.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_5, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_5(nCount)
	if (self:CheckMaterial(self.CommonMaterial[5], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[5], 1)
	self:ConsumeMaterial(self.CommonMaterial[5], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Phi Phong 6-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_6()
	local szTitle = (format("%s", self.tbFormulaList[6].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[6])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_PhiPhong_6.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_6, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_6(nCount)
	if (self:CheckMaterial(self.CommonMaterial[6], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[6], 1)
	self:ConsumeMaterial(self.CommonMaterial[6], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Phi Phong 7-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_7()
	local szTitle = (format("%s", self.tbFormulaList[7].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[7])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_PhiPhong_7.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_7, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_7(nCount)
	if (self:CheckMaterial(self.CommonMaterial[7], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[7], 1)
	self:ConsumeMaterial(self.CommonMaterial[7], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Phi Phong 8-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_8()
	local szTitle = (format("%s", self.tbFormulaList[8].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[8])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_PhiPhong_8.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_8, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_8(nCount)
	if (self:CheckMaterial(self.CommonMaterial[8], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[8], 1)
	self:ConsumeMaterial(self.CommonMaterial[8], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Phi Phong 9-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_9()
	local szTitle = (format("%s", self.tbFormulaList[9].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[9])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_PhiPhong_9.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_9, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_9(nCount)
	if (self:CheckMaterial(self.CommonMaterial[9], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[9], 1)
	self:ConsumeMaterial(self.CommonMaterial[9], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Phi Phong 10-----------------------------------------------------------------
function tbNangCapPhiPhong:ComposeGiveUI_10()
	local szTitle = (format("%s", self.tbFormulaList[10].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[10])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_PhiPhong_10.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_10, {self}}, nil, self.bAccessBindItem)
end

function tbNangCapPhiPhong:GiveUIOk_10(nCount)
	if (self:CheckMaterial(self.CommonMaterial[10], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[10], 1)
	self:ConsumeMaterial(self.CommonMaterial[10], 1, self.szLogTitle)
end
-------------------------------------------------------------------------------------------
function DialogMain_PhiPhong() tbNangCapPhiPhong:NangCapPhiPhong() end
pEventType:Reg("ThÇn BÝ Thî RÌn ","N©ng CÊp Phi Phong", DialogMain_PhiPhong,{tbHKMPAward})
-------------------------------------------------------------------------------------------