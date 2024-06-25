----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
---------------------------------------------------
NangCapHiepCot = {}
NangCapHiepCot = tbActivityCompose:new()
NangCapHiepCot.bAccessBindItem = 1
nRanD_hc_1 = 60; nRanD_hc_2 = 40; nRanD_hc_3 = 30; nRanD_hc_4 = 20 ; nRanD_hc_5 = 1 ; nRanD_hc_6 = 10

function NangCapHiepCot:CheckItem(tbItem ,nItemIndex)
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

NangCapHiepCot.tbFormulaList = {
	[1] = {szName="Ngò Hµnh Ên H¹"},
	[2] = {szName="Dung LuyÖn Ên H¹ ThÑo HÖ"},
	[3] = {szName="Ngò Hµnh Ên Trung"},
	[4] = {szName="Dung LuyÖn Ên Trung ThÑo HÖ"},
}

NangCapHiepCot.CommonMaterial = {
	[1] = {
		{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=500},
	        {szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=500},
	        {szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=500},
		{szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=500},
		{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=500},
               {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,6778,1,0,0},nCount=2000},
	      {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=400},
	},
	[2] = {
		{szName="T©n NhËm Ên H¹",tbProp={0,4907},nQuality=1,nCount=1},
		{szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0,0},nCount = 1500},
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0,0},nCount = 5000},
                {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 5000},
		{szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=250},
	},
	[3] = {
		{szName="T©n NhËm Ên H¹(DDL)",tbProp={0,{4993,4997}},nQuality=1,nCount=1},
		{szName = "Tói §¹i Tinh Ngäc", tbProp = {6,1,5331,1,0,0},nCount = 30},
                {szName = " Tói B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,30160,1,0,0},nCount = 30},
                {szName = "Tói B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30161,1,0,0},nCount = 30},
                {szName = " TruyÒn Nh©n-TÝn VËt", tbProp = {6,1,30187,1,0,0},nCount = 20},
                {szName = "B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh", tbProp = {6,1,30189,1,0,0},nCount = 700},
		{szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=999},
	},
	[4] = {
		{szName="T©n NhËm Ên Trung",tbProp={0,4908},nQuality=1,nCount=1},
		{szName = "Tói §¹i Tinh Ngäc", tbProp = {6,1,5331,1,0,0},nCount = 30},
                {szName = " Tói B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,30160,1,0,0},nCount = 30},
                {szName = "Tói B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30161,1,0,0},nCount = 30},
                {szName = " TruyÒn Nh©n-TÝn VËt", tbProp = {6,1,30187,1,0,0},nCount = 20},
                {szName = "B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh", tbProp = {6,1,30189,1,0,0},nCount = 700},
		{szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=999},
	},
}

NangCapHiepCot.CommonEquip = {
	[1] = {
		{szName="Ên H¹",tbProp={0,4907},nQuality=1,nCount=1,nRate=nRanD_hc_1},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)	
			end,
			nRate = 100-nRanD_hc_1,
		},
	},
	[2] = {
		{szName="Ên H¹ §· Dung LuyÖn",tbProp={0,random(4993,4997)},nQuality=1,nCount=1,nRate=nRanD_hc_1},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
				pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,4907) 
			end,
			nRate = 100-nRanD_hc_1,
		},
	},
	[3] = {
		{szName="Ên ",tbProp={0,4908},nQuality=1,nCount=1,nRate=nRanD_hc_6},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
                        local nItemIndex = AddGoldItem(0,random(4993,4997)) 	
			end,
			nRate = 100-nRanD_hc_6,
		},
	},
	[4] = {
		{szName="Ên  §· Dung LuyÖn",tbProp={0,random(4998,5002)},nQuality=1,nCount=1,nRate=nRanD_hc_5},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
				pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,4908) 
			end,
			nRate = 100-nRanD_hc_5,
		},
	},
}

-----------------------------------------------------------Liªn KÕt Npc §èi Tho¹i------------------------------------------------------------------------------
function NangCapHiepCot:CheTaoHiepCot()
	local p = NangCapHiepCot:new("N©ng CÊp HiÖp Cèt","NangCapHiepCot", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H·y Chän Lo¹i Trang BÞ Muèn N©ng CÊp"
	local tbOpt = {
		{self.tbFormulaList[1].szName, p.ComposeGiveUI_1, {p}},
		{self.tbFormulaList[2].szName, p.ComposeGiveUI_2, {p}},
		{self.tbFormulaList[3].szName, p.ComposeGiveUI_3, {p}},
		{self.tbFormulaList[4].szName, p.ComposeGiveUI_4, {p}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------N©ng CÊp HiÖp Cèt ThiÕt HuyÕt Sam-----------------------------------------------------------------
function NangCapHiepCot:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_hc_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function NangCapHiepCot:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp HiÖp Cèt §a T×nh Hoµn-----------------------------------------------------------------
function NangCapHiepCot:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_hc_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function NangCapHiepCot:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp HiÖp Cèt §an T©m Giíi-----------------------------------------------------------------
function NangCapHiepCot:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_hc_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function NangCapHiepCot:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp HiÖp Cèt T×nh ý KÕt-----------------------------------------------------------------
function NangCapHiepCot:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_hc_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function NangCapHiepCot:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------