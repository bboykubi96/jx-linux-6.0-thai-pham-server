----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
---------------------------------------------------
NangCapChienMa = {}
NangCapChienMa = tbActivityCompose:new()
NangCapChienMa.bAccessBindItem = 1
nRanD_cm_1 = 50; nRanD_cm_2 = 1; nRanD_cm_3 = 15

function NangCapChienMa:CheckItem(tbItem ,nItemIndex)
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

NangCapChienMa.tbFormulaList = {
	[1] = {szName="ChÕ T¹o Phi Phong Tö V©n 1 Sao"},
	[2] = {szName="ChÕ T¹o Phi Phong Vo Song 1 Sao"},
	[3] = {szName="N©ng CÊp H·n HuyÕt Long C©u"},
}

NangCapChienMa.CommonMaterial = {
	[1] = {
		{szName = "Tói FF L¨ng TuyÖt 10 Sao",tbProp={6,1,30054,1,0,0},nCount=1},
		{szName = "Thiªn Tinh Ngäc", tbProp = {6,1,4806,1,0,0},nCount = 5000},
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,49004,1,0,0},nCount = 3000},
                {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 3000},
                {szName = "B¸ch LuyÖn Thµnh C­¬ng", tbProp = {6,1,49006,1,0,0},nCount = 3000},
		{szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=300},
	},
	[2] = {

		{szName = "Tói FF Tö V©n 9 Sao",tbProp={6,1,50013,1,0,0},nCount=1},
		{szName = "Tói §¹i Tinh Ngäc", tbProp = {6,1,5331,1,0,0},nCount = 30},
                {szName = " Tói B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,30160,1,0,0},nCount = 30},
                {szName = "Tói B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30161,1,0,0},nCount = 30},
                {szName = " TruyÒn Nh©n-TÝn VËt", tbProp = {6,1,30187,1,0,0},nCount = 20},
                {szName = "B¸ch Khoa Toµn Th­ - B¶n Hoµn ChØnh", tbProp = {6,1,30189,1,0,0},nCount = 700},
		{szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=999},
	},
	[3] = {
		{szName="ChiÕn M· Siªu Quang",tbProp={0,10,32},nCount=1},
		{szName="Thñy Tinh",tbProp={4,{238,240},1,1,0,0},nCount=5},
		{szName="L­îng",nJxb=1,nCount=10000000},
	},
}

NangCapChienMa.CommonEquip = {
	[1] = {
		{szName="Tói Phi Phong Tö V©n VÜnh ViÔn",tbProp={6,1,50005,1,0,0},nCount=1,nRate=nRanD_cm_1},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nIndex = AddItem(6,1,30054,1,0,0) 
			end,
			nRate = 100-nRanD_cm_1,
		},
	},
	[2] = {
		{szName="Tói Phi Phong Tö V©n VÜnh ViÔn",tbProp={6,1,30166,1,0,0},nCount=1,nRate=nRanD_cm_2},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				local nIndex = AddItem(6,1,50013,1,0,0) 
			end,
			nRate = 100-nRanD_cm_2,
		},
	},
	[3] = {
		{szName="ChiÕn M· H·n HuyÕt Long C©u",tbProp={0,10,18,10,0,0},nCount=1,nRate=nRanD_cm_3},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)
				AddItem(0,10,32,10,0,0)
			end,
			nRate = 100-nRanD_cm_3,
		},
	},
}

-----------------------------------------------------------Liªn KÕt Npc §èi Tho¹i------------------------------------------------------------------------------
function NangCapChienMa:CheTaoChienMa()
	local p = NangCapChienMa:new("N©ng CÊp ChiÕn M·","NangCapChienMa", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H·y Chän Lo¹i ChiÕn M· Muèn N©ng CÊp"
	local tbOpt = {
		{self.tbFormulaList[1].szName, p.ComposeGiveUI_1, {p}},
		{self.tbFormulaList[2].szName, p.ComposeGiveUI_2, {p}},
		--{self.tbFormulaList[3].szName, p.ComposeGiveUI_3, {p}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------N©ng CÊp Phiªn Vò-----------------------------------------------------------------
function NangCapChienMa:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_cm_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function NangCapChienMa:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp Siªu Quang-----------------------------------------------------------------
function NangCapChienMa:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_cm_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function NangCapChienMa:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N©ng CÊp H·n HuyÕt Long C©u-----------------------------------------------------------------
function NangCapChienMa:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_cm_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function NangCapChienMa:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------