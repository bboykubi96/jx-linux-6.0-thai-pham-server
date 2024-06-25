----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
---------------------------------------------------
tbDotPhaPhiPhong = {}
tbDotPhaPhiPhong = tbActivityCompose:new()
tbDotPhaPhiPhong.bAccessBindItem = 1
InPut_ff_1 = 9397		 OutPut_ff_1 = 9398
InPut_ff_2 = 9408		 OutPut_ff_2 = 9409
InPut_ff_3 = 9419		 OutPut_ff_3 = 9420
InPut_ff_4 = 9430		 OutPut_ff_4 = 9431
InPut_ff_5 = 9441		 OutPut_ff_5 = 9442
InPut_ff_6 = 9452		 OutPut_ff_6 = 9453
InPut_ff_7 = 9463		 OutPut_ff_7 = 9464
InPut_ff_8 = 9474		 OutPut_ff_8 = 9475
InPut_ff_9 = 9485		 OutPut_ff_9 = 9486
InPut_ff_10 = 9496		 OutPut_ff_10 = 9497
TinhNgoc_ff = 4807
DaiTinhNgoc_ff = 4873
ThienTinhNgoc_ff = 4806
nKNB_ff = 2480
nXu_ff = 417
nNL_ff_1 = 1000;	 nNL_ff_2 = 2000;	 nNL_ff_3 = 3000;	 nNL_ff_4 = 5000;	 nNL_ff_5 = 7000;	 nNL_ff_6 = 1000;	 nNL_ff_7 = 2000;	 nNL_ff_8 = 3000;	 nNL_ff_9 = 500;	 nNL_ff_10 = 700;
tbXu_ff_1 = 5000;	 tbXu_ff_2 = 10000;	 tbXu_ff_3 = 20000;	 tbXu_ff_4 = 3000;	 tbXu_ff_5 = 5000;	 tbXu_ff_6 = 10000;	 tbXu_ff_7 = 2000;	 tbXu_ff_8 = 3000;	 tbXu_ff_9 = 5000;	 tbXu_ff_10 = 10000;
nRanD_ff_1 = 15;	 nRanD_ff_2 = 30;	 nRanD_ff_3 = 50;	 nRanD_ff_4 = 50;	 nRanD_ff_5 = 0;	 nRanD_ff_6 = 50;	 nRanD_ff_7 = 5;	 nRanD_ff_8 = 1;	 nRanD_ff_9 = 100;	 nRanD_ff_10 = 100;


tbDotPhaPhiPhong.tbFormulaList = {
	[1] = {szName="Kinh L«i => Ngù Phong"},
	[2] = {szName="Ngù Phong => PhÖ Quang"},
	[3] = {szName="PhÖ Quang => KhÊp ThÇn"},
	[4] = {szName="KhÊp ThÇn => K×nh Thiªn"},
	[5] = {szName="K×nh Thiªn => HuyÒn Kim"},
	[6] = {szName="HuyÒn Kim => V« Cùc"},
	[7] = {szName="V« Cùc => L¨ng TuyÖt"},
	[8] = {szName="L¨ng TuyÖt => Tö V©n"},
	[9] = {szName="Tö V©n => V« Song"},
	[10] = {szName="V« Song => TruyÒn ThuyÕt"},
}

tbDotPhaPhiPhong.CommonMaterial = {
	[1] = {
		{szName="Ng¹o TuyÕt 10 Sao",tbProp={0,InPut_ff_1},nQuality=1},
		{szName="Tinh Ngäc",tbProp={6,1,TinhNgoc_ff,1,0,0},nCount=nNL_ff_1},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_ff_1},
	},
	[2] = {
		{szName="K×nh L«i 10 Sao",tbProp={0,InPut_ff_2},nQuality=1},
		{szName="Tinh Ngäc",tbProp={6,1,TinhNgoc_ff,1,0,0},nCount=nNL_ff_2},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_ff_2},
	},
	[3] = {
		{szName="Ngù Phong 10 Sao",tbProp={0,InPut_ff_3},nQuality=1},
		{szName="Tinh Ngäc",tbProp={6,1,TinhNgoc_ff,1,0,0},nCount=nNL_ff_3},
		{szName="V¹n L­îng",nJxb=10000,nCount=tbXu_ff_3},
	},
	[4] = {
		{szName="PhÖ Quang 10 Sao",tbProp={0,InPut_ff_4},nQuality=1},
		{szName="Tinh Ngäc",tbProp={6,1,TinhNgoc_ff,1,0,0},nCount=nNL_ff_4},
		{szName="TiÒn Xu",tbProp={4,nXu_ff,1,1,0,0},nCount=tbXu_ff_4},
	},
	[5] = {
		{szName="KhÊp ThÇn 10 Sao",tbProp={0,InPut_ff_5},nQuality=1},
		{szName="Tinh Ngäc",tbProp={6,1,TinhNgoc_ff,1,0,0},nCount=nNL_ff_5},
		{szName="TiÒn Xu",tbProp={4,nXu_ff,1,1,0,0},nCount=tbXu_ff_5},
	},
	[6] = {
		{szName="HuyÒn Kim 10 Sao",tbProp={0,InPut_ff_6},nQuality=1},
               {szName = "Tinh Ngoc", tbProp = {6,1,4807,1,0,0},nCount = 500},
		{szName="TiÒn Xu",tbProp={4,417,1,1,0,0},nCount=500},
	},
	[7] = {
		{szName="V« Cùc 10 Sao",tbProp={0,9463},nQuality=1},
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0},nCount = 700},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 700},
		{szName="TiÒn Xu",tbProp={4,417,1,1,0,0},nCount=1000},
	},
	[8] = {
		{szName="V« Cùc 10 Sao",tbProp={0,InPut_ff_8},nQuality=1},
		{szName="§¹i Tinh Ngäc",tbProp={6,1,DaiTinhNgoc_ff,1,0,0},nCount=nNL_ff_8},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_ff,1,1,0,0},nCount=tbXu_ff_8},
	},
	[9] = {
		{szName="§¹i Th¸nh 10 Sao",tbProp={0,InPut_ff_9},nQuality=1},
		{szName="Thiªn Tinh Ngäc",tbProp={6,1,ThienTinhNgoc_ff,1,0,0},nCount=nNL_ff_9},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_ff,1,1,0,0},nCount=tbXu_ff_9},
	},
	[10] = {
		{szName="Siªu ThÇn 10 Sao",tbProp={0,InPut_ff_10},nQuality=1},
		{szName="Thiªn Tinh Ngäc",tbProp={6,1,ThienTinhNgoc_ff,1,0,0},nCount=nNL_ff_10},
		{szName="Kim Nguyªn B¶o",tbProp={4,nKNB_ff,1,1,0,0},nCount=tbXu_ff_10},
	},
}

tbDotPhaPhiPhong.CommonEquip = {
	[1] = {
		{szName="Phi Phong Kinh L«i",tbProp={0,OutPut_ff_1},nQuality=1,nRate=nRanD_ff_1,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ff_1)
			end,
			nRate = 100-nRanD_ff_1,
		},
	},
	[2] = {
		{szName="Phi Phong Ngù Phong",tbProp={0,OutPut_ff_2},nQuality=1,nRate=nRanD_ff_2,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ff_2)
			end,
			nRate = 100-nRanD_ff_2,
		},
	},
	[3] = {
		{szName="Phi Phong PhÖ Quang",tbProp={0,OutPut_ff_3},nQuality=1,nRate=nRanD_ff_3,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ff_3)
			end,
			nRate = 100-nRanD_ff_3,
		},
	},
	[4] = {
		{szName="Phi Phong KhÊp ThÇn",tbProp={0,OutPut_ff_4},nQuality=1,nRate=nRanD_ff_4,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ff_4)
			end,
			nRate = 100-nRanD_ff_4,
		},
	},
	[5] = {
		{szName="Phi Phong K×nh Thiªn",tbProp={0,OutPut_ff_5},nQuality=1,nRate=nRanD_ff_5,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ff_5)
			end,
			nRate = 100-nRanD_ff_5,
		},
	},
	[6] = {
		{szName="Phi Phong V« Cùc",tbProp={0,OutPut_ff_6},nQuality=1,nRate=nRanD_ff_6},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ff_6)
			end,
			nRate = 100-nRanD_ff_6,
		},
	},
	[7] = {
		{szName="Phi Phong V« Cùc",tbProp={0,9464},nQuality=1,nRate=nRanD_ff_7},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,9463)
			end,
			nRate = 100-nRanD_ff_7,
		},
	},
	[8] = {
		{szName="Phi Phong §¹i Th¸nh",tbProp={0,OutPut_ff_8},nQuality=1,nRate=nRanD_ff_8,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ff_8)
			end,
			nRate = 100-nRanD_ff_8,
		},
	},
	[9] = {
		{szName="Phi Phong Siªu ThÇn",tbProp={0,OutPut_ff_9},nQuality=1,nRate=nRanD_ff_9,nBindState = -2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ff_9)
			end,
			nRate = 100-nRanD_ff_9,
		},
	},
	[10] = {
		{szName="Phi Phong TruyÒn ThuyÕt",tbProp={0,OutPut_ff_10},nQuality=1,nRate=nRanD_ff_10},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,InPut_ff_10)
			end,
			nRate = 100-nRanD_ff_10,
		},
	},
}

-----------------------------------------------------------Liªn KÕt Npc §èi Tho¹i------------------------------------------------------------------------------
function tbDotPhaPhiPhong:DotPhaPhiPhong()
	local p = tbDotPhaPhiPhong:new("Phi Phong §ét Ph¸","tbDotPhaPhiPhong", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H·y Chän Lo¹i Phi Phong Muèn §ét Ph¸"
	local tbOpt = {
		--{self.tbFormulaList[1].szName, p.ComposeGiveUI_1, {p}},
		--{self.tbFormulaList[2].szName, p.ComposeGiveUI_2, {p}},
		--{self.tbFormulaList[3].szName, p.ComposeGiveUI_3, {p}},
		--{self.tbFormulaList[4].szName, p.ComposeGiveUI_4, {p}},
		--{self.tbFormulaList[5].szName, p.ComposeGiveUI_5, {p}},
		{self.tbFormulaList[6].szName, p.ComposeGiveUI_6, {p}},
		--{self.tbFormulaList[7].szName, p.ComposeGiveUI_7, {p}},
		--{self.tbFormulaList[8].szName, p.ComposeGiveUI_8, {p}},
		--{self.tbFormulaList[9].szName, p.ComposeGiveUI_9, {p}},
		--{self.tbFormulaList[10].szName, p.ComposeGiveUI_10, {p}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------Phi Phong §ét Ph¸ 1-----------------------------------------------------------------
function tbDotPhaPhiPhong:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ff_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function tbDotPhaPhiPhong:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------Phi Phong §ét Ph¸ 2-----------------------------------------------------------------
function tbDotPhaPhiPhong:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ff_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function tbDotPhaPhiPhong:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------Phi Phong §ét Ph¸ 3-----------------------------------------------------------------
function tbDotPhaPhiPhong:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ff_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function tbDotPhaPhiPhong:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------Phi Phong §ét Ph¸ 4-----------------------------------------------------------------
function tbDotPhaPhiPhong:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ff_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function tbDotPhaPhiPhong:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end
---------------------------------------------------------Phi Phong §ét Ph¸ 5-----------------------------------------------------------------
function tbDotPhaPhiPhong:ComposeGiveUI_5()
	local szTitle = (format("%s", self.tbFormulaList[5].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[5])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ff_5.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_5, {self}}, nil, self.bAccessBindItem)
end

function tbDotPhaPhiPhong:GiveUIOk_5(nCount)
	if (self:CheckMaterial(self.CommonMaterial[5], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[5], 1)
	self:ConsumeMaterial(self.CommonMaterial[5], 1, self.szLogTitle)
end
---------------------------------------------------------Phi Phong §ét Ph¸ 6-----------------------------------------------------------------
function tbDotPhaPhiPhong:ComposeGiveUI_6()
	local szTitle = (format("%s", self.tbFormulaList[6].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[6])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ff_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_6, {self}}, nil, self.bAccessBindItem)
end

function tbDotPhaPhiPhong:GiveUIOk_6(nCount)
	if (self:CheckMaterial(self.CommonMaterial[6], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[6], 1)
	self:ConsumeMaterial(self.CommonMaterial[6], 1, self.szLogTitle)
end
---------------------------------------------------------Phi Phong §ét Ph¸ 7-----------------------------------------------------------------
function tbDotPhaPhiPhong:ComposeGiveUI_7()
	local szTitle = (format("%s", self.tbFormulaList[7].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[7])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ff_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_7, {self}}, nil, self.bAccessBindItem)
end

function tbDotPhaPhiPhong:GiveUIOk_7(nCount)
	if (self:CheckMaterial(self.CommonMaterial[7], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[7], 1)
	self:ConsumeMaterial(self.CommonMaterial[7], 1, self.szLogTitle)
end
---------------------------------------------------------Phi Phong §ét Ph¸ 8-----------------------------------------------------------------
function tbDotPhaPhiPhong:ComposeGiveUI_8()
	local szTitle = (format("%s", self.tbFormulaList[8].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[8])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ff_8.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_8, {self}}, nil, self.bAccessBindItem)
end

function tbDotPhaPhiPhong:GiveUIOk_8(nCount)
	if (self:CheckMaterial(self.CommonMaterial[8], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[8], 1)
	self:ConsumeMaterial(self.CommonMaterial[8], 1, self.szLogTitle)
end
---------------------------------------------------------Phi Phong §ét Ph¸ 9-----------------------------------------------------------------
function tbDotPhaPhiPhong:ComposeGiveUI_9()
	local szTitle = (format("%s", self.tbFormulaList[9].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[9])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ff_9.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_9, {self}}, nil, self.bAccessBindItem)
end

function tbDotPhaPhiPhong:GiveUIOk_9(nCount)
	if (self:CheckMaterial(self.CommonMaterial[9], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[9], 1)
	self:ConsumeMaterial(self.CommonMaterial[9], 1, self.szLogTitle)
end
---------------------------------------------------------Phi Phong §ét Ph¸ 10-----------------------------------------------------------------
function tbDotPhaPhiPhong:ComposeGiveUI_10()
	local szTitle = (format("%s", self.tbFormulaList[10].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[10])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_ff_10.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_10, {self}}, nil, self.bAccessBindItem)
end

function tbDotPhaPhiPhong:GiveUIOk_10(nCount)
	if (self:CheckMaterial(self.CommonMaterial[10], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[10], 1)
	self:ConsumeMaterial(self.CommonMaterial[10], 1, self.szLogTitle)
end
------------------------------------------------------------------------------------------------------------------------------------------------