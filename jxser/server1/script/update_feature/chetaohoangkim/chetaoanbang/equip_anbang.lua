
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
---------------------------------------------------
NangCapDoQuy = {}
NangCapDoQuy = tbActivityCompose:new()
NangCapDoQuy.bAccessBindItem = 1
nRanD_AB_1 = 30; nRanD_AB_2 = 80; nRanD_AB_3 = 30; nRanD_AB_4 = 45 ; nRanD_AB_5 = 25 ; nRanD_AB_6 = 1

function NangCapDoQuy:CheckItem(tbItem ,nItemIndex)
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

NangCapDoQuy.tbFormulaList = {
	[1] = {szName="D©y ChuyÒn Cè S¬n ph¸ thiªn"},
	[2] = {szName="Bao Tay Cè S¬n ph¸ thiªn"},
	[3] = {szName="D©y ChuyÒn Cè S¬n TruyÒn Nh©n"},
        [4] = {szName="Bao Tay Cè S¬n TruyÒn Nh©n"},
	}

NangCapDoQuy.CommonMaterial = {
	[1] = {
		
		{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=200},
	        {szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=200},
	        {szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=200},
		{szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=200},
		{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=200},
               {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,6778,1,0,0},nCount=1000},
	      {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=200},
	},
	[2] = {	
		{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=200},
	        {szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=200},
	        {szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=200},
		{szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=200},
		{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=200},
               {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,6778,1,0,0},nCount=1000},
	      {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=200},
	},
	[3] = {
		{szName="D©y ChuyÒn Ph¸ Thiªn",tbProp={0,{5984,5988}},nQuality=1,nCount=1},
		{szName = "Tói §¹i Tinh Ngäc", tbProp = {6,1,5331,1,0,0},nCount = 30},
                {szName = " Tói B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,30160,1,0,0},nCount = 30},
               {szName = "Tói B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30161,1,0,0},nCount = 30},
                {szName = " TruyÒn Nh©n-TÝn VËt", tbProp = {6,1,30187,1,0,0},nCount = 20},
               {szName = "B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh", tbProp = {6,1,30189,1,0,0},nCount = 700},
		{szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=999},
	},
	[4] = {
		{szName="Bao Tay Ph¸ Thiªn",tbProp={0,{5978,5982}},nQuality=1,nCount=1},
		{szName = "Tói §¹i Tinh Ngäc", tbProp = {6,1,5331,1,0,0},nCount = 30},
                {szName = " Tói B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,30160,1,0,0},nCount = 30},
               {szName = "Tói B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30161,1,0,0},nCount = 30},
               {szName = " TruyÒn Nh©n-TÝn VËt", tbProp = {6,1,30187,1,0,0},nCount = 20},
                {szName = "B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh", tbProp = {6,1,30189,1,0,0},nCount = 700},
		{szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=999},
	},
}

NangCapDoQuy.CommonEquip = {
	[1] = {
		{szName="D©y ChuyÒn Cè S¬n",tbProp={0,random(5984,5988)},nQuality=1,nCount=1,nRate=nRanD_AB_2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
                      for i = 50,100 do
				AddItem(6,1,1332,1,0,0)
				end
			end,
			nRate = 100-nRanD_AB_2,
		},
	},
	[2] = {
		{szName=" Bao Tay Cè S¬n",tbProp={0,random(5978,5982)},nQuality=1,nCount=1,nRate=nRanD_AB_2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
                         for i = 100,200 do
				AddItem(6,1,1332,1,0,0)
				end
			end,
			nRate = 100-nRanD_AB_2,
		},
	},
	[3] = {
		{szName="D©y ChuyÒn Cè S¬n",tbProp={0,random(5996,6000)},nQuality=1,nCount=1,nRate=nRanD_AB_6},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
                      local nItemIndex = AddGoldItem(0,random(5984,5988)) 

			end,
			nRate = 100-nRanD_AB_6,
		},
	},
	
     [4] = {
		{szName="bao tay  Cè S¬n",tbProp={0,random(5990,5994)},nQuality=1,nCount=1,nRate=nRanD_AB_6},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,random(5978,5982)) 
			end,
			nRate = 100-nRanD_AB_6,
		},
	},
}
-----------------------------------------------------------Liªn KÕt Npc §èi Tho¹i------------------------------------------------------------------------------
function NangCapDoQuy:CheTaoDoQuy()
	local p = NangCapDoQuy:new("N©ng CÊp §å HiÕm","NangCapDoQuy", INVENTORY_ROOM.room_giveitem)
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
---------------------------------------------------------N©ng CÊp-----------------------------------------------------------------
function NangCapDoQuy:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_AB_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function NangCapDoQuy:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp -----------------------------------------------------------------
function NangCapDoQuy:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_AB_1.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function NangCapDoQuy:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp -----------------------------------------------------------------
function NangCapDoQuy:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_AB_5.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function NangCapDoQuy:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Kª HuyÕt Th¹ch Giíi ChØ-----------------------------------------------------------------
function NangCapDoQuy:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_AB_5.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function NangCapDoQuy:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end