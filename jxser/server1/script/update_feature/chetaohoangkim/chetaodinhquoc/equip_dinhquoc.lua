----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
---------------------------------------------------
NangCapDinhQuoc = {}
NangCapDinhQuoc = tbActivityCompose:new()
NangCapDinhQuoc.bAccessBindItem = 1
nRanD_dq_1 = 70; nRanD_dq_2 = 1; nRanD_dq_3 = 25; nRanD_dq_4 = 40; nRanD_dq_5 = 1;nRanD_dq_6 = 20

function NangCapDinhQuoc:CheckItem(tbItem ,nItemIndex)
	if IsMyItem(nItemIndex) ~= 1 then
		return
	end
	
	local tbRecItem = self:MakeItem(nItemIndex)
	local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
	local nLeftUsageTime = ITEM_GetLeftUsageTime(nItemIndex)
	if nExpiredTime ~= 0 or nLeftUsageTime ~= 4294967295 then
		return 
	end
	
	for k,v in tbItem do
		if k ~= "szName" and type(v) ~= "table" and v ~= -1 and tbRecItem[k] and v~= tbRecItem[k] then
			return
		elseif  k == "tbProp" and type(v) == "table" then
			local tbProp = tbRecItem[k]
			for k1,v1 in v do
				if type(v1) ~= "table" then
					if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and v1~= tbProp[k1] then
						return 
					end
				else
					if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and ( v1[1] > tbProp[k1] or tbProp[k1] > v1[2] )  then
						return 
					end
				end
			end
		end
	end		
	for key, value in tbItem do 
		if strfind(key, "Limit") and  type(value) == "function" then
			if value(tbItem, nItemIndex) ~= 1 then
				return
			end
		end
	end			
	return 1
end

NangCapDinhQuoc.tbFormulaList = {
	[1] = {szName="Xuyªn y ph¸ gi¸p cÊp 8 "},
	[2] = {szName="Xuyªn y ph¸ gi¸p cÊp 8  trïng luyÖn"},
	[3] = {szName="Xuyªn y ph¸ gi¸p cÊp 9"},
	[4] = {szName="Xuyªn y ph¸ gi¸p cÊp 9  trïng luyÖn"},
	[5] = {szName="§Þnh Quèc Ng©n Tµm Yªu §¸i"},
}

NangCapDinhQuoc.CommonMaterial = {
	[1] = {
		{szName="Xuyªn Y Ph¸ Gi¸p 7(DTL)",tbProp={0,{4969,4973}},nQuality=1,nCount=1},
	        {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 1000},
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0,0},nCount = 1000},
                {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1000},
                {szName="Kim Nguyªn B¶o",tbProp={4,1496,1,1,0,0},nCount=250},
	},
	[2] = {
	        {szName="Xuyªn Y Ph¸ Gi¸p 8",tbProp={0,4923},nQuality=1,nCount=1},
	       {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 500},
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
                {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 500},
		{szName="Kim Nguyªn B¶o",tbProp={4,1496,1,1,0,0},nCount=100},
	},
	[3] = {
		{szName="Xuyªn Y Ph¸ Gi¸p 8(DTL)",tbProp={0,{4974,4978}},nQuality=1,nCount=1},
		{szName = "Tói §¹i Tinh Ngäc", tbProp = {6,1,5331,1,0,0},nCount = 20},
                {szName = " Tói B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,30160,1,0,0},nCount = 20},
                {szName = "Tói B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30161,1,0,0},nCount = 20},
                {szName = " TruyÒn Nh©n-TÝn VËt", tbProp = {6,1,30187,1,0,0},nCount = 10},
                {szName = "B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh", tbProp = {6,1,30189,1,0,0},nCount = 500},
		{szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=250},
	},
	[4] = {
		{szName="Xuyªn Y Ph¸ Gi¸p 9",tbProp={0,4924},nQuality=1,nCount=1},
		{szName = "Tói §¹i Tinh Ngäc", tbProp = {6,1,5331,1,0,0},nCount = 20},
                {szName = " Tói B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,30160,1,0,0},nCount = 20},
                {szName = "Tói B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30161,1,0,0},nCount = 20},
                {szName = " TruyÒn Nh©n-TÝn VËt", tbProp = {6,1,30187,1,0,0},nCount = 10},
                {szName = "B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh", tbProp = {6,1,30189,1,0,0},nCount = 500},
		{szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=250},
	},
	[5] = {
		{szName="§å Phæ §Þnh Quèc (Yªu §¸i)",tbProp={6,1,1790,1,0,0},nCount=100},
		{szName="Thñy Tinh",tbProp={4,{238,240},1,1,0,0},nCount=5},
		{szName="L­îng",nJxb=1,nCount=10000000},
	},
}

NangCapDinhQuoc.CommonEquip = {
	[1] = {
		{szName="Xuyªn Y CÊp 8",tbProp={0, 4923},nQuality=1,nCount=1,nRate=nRanD_dq_1},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,random(4969,4973)) 
			end,
			nRate = 100-nRanD_dq_1,
		},
	},
	[2] = {
		{szName="Xuyªn Y CÊp 8",tbProp={0, random(4974,4978)},nQuality=1,nCount=1,nRate=nRanD_dq_2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
				pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,4923) 
			end,
			nRate = 100-nRanD_dq_2,
		},
	},
	[3] = {
		{szName="Xuyªn Y CÊp 9",tbProp={0, 4924},nQuality=1,nCount=1,nRate=nRanD_dq_4},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,random(4974,4978)) 
			end,
			nRate = 100-nRanD_dq_4,
		},
	},
	[4] = {
		{szName="Xuyªn Y CÊp 9",tbProp={0, random(4979,4983)},nQuality=1,nCount=1,nRate=nRanD_dq_5},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
				pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,4924) 
			end,
			nRate = 100-nRanD_dq_5,
		},
	},
	[5] = {
		{szName="§Þnh Quèc Ng©n Tµm Yªu §¸i",tbProp={0,163},nQuality=1,nCount=1,nRate=nRanD_dq_5},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				for i = 1,100 do
					AddItem(6,1,1790,1,0,0)
				end
			end,
			nRate = 100-nRanD_dq_5,
		},
	},
}

-----------------------------------------------------------Liªn KÕt Npc §èi Tho¹i------------------------------------------------------------------------------
function NangCapDinhQuoc:CheTaoDinhQuoc()
	local p = NangCapDinhQuoc:new("N©ng CÊp §Þnh Quèc","NangCapDinhQuoc", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H·y Chän Lo¹i Trang BÞ Muèn N©ng CÊp"
	local tbOpt = {
		{self.tbFormulaList[1].szName, p.ComposeGiveUI_1, {p}},
		{self.tbFormulaList[2].szName, p.ComposeGiveUI_2, {p}},
		--{self.tbFormulaList[3].szName, p.ComposeGiveUI_3, {p}},
		--{self.tbFormulaList[4].szName, p.ComposeGiveUI_4, {p}},
		--{self.tbFormulaList[5].szName, p.ComposeGiveUI_5, {p}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------N©ng CÊp §Þnh Quèc Thanh Sa Tr­êng Sam-----------------------------------------------------------------
function NangCapDinhQuoc:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_dq_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function NangCapDinhQuoc:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp §Þnh Quèc ¤ Sa Ph¸t Qu¸n-----------------------------------------------------------------
function NangCapDinhQuoc:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_dq_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function NangCapDinhQuoc:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp §Þnh Quèc XÝch Quyªn NhuyÔn Ngoa-----------------------------------------------------------------
function NangCapDinhQuoc:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_dq_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function NangCapDinhQuoc:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp §Þnh Quèc Tö §»ng Hé UyÓn-----------------------------------------------------------------
function NangCapDinhQuoc:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_dq_6.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function NangCapDinhQuoc:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp §Þnh Quèc Ng©n Tµm Yªu §¸i-----------------------------------------------------------------
function NangCapDinhQuoc:ComposeGiveUI_5()
	local szTitle = (format("%s", self.tbFormulaList[5].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[5])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_dq_5.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_5, {self}}, nil, self.bAccessBindItem)
end

function NangCapDinhQuoc:GiveUIOk_5(nCount)
	if (self:CheckMaterial(self.CommonMaterial[5], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[5], 1)
	self:ConsumeMaterial(self.CommonMaterial[5], 1, self.szLogTitle)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------