----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
---------------------------------------------------
NangCapNhuTinh = {}
NangCapNhuTinh = tbActivityCompose:new()
NangCapNhuTinh.bAccessBindItem = 1
nRanD_nt_1 = 60; nRanD_nt_2 = 30; nRanD_nt_3 = 40; nRanD_nt_4 = 20; nRanD_nt_5 = 1

function NangCapNhuTinh:CheckItem(tbItem ,nItemIndex)
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

NangCapNhuTinh.tbFormulaList = {
	[1] = {szName="Nh�n C�ng Kh�n C�p 9"},
	[2] = {szName="Nh�n C�ng Kh�n C�p 10"},
	[3] = {szName="Nhu T�nh Ph�ng Nghi Gi�i Ch�"},
	[4] = {szName="Nhu T�nh Tu� T�m Ng�c B�i"},
}

NangCapNhuTinh.CommonMaterial = {
	[1] = {
		{szName="C�n Kh�n Tinh X�o 7",tbProp={0,{4730,4744}},nQuality=1,nCount=1},
		{szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=100},
		{szName = "��i Tinh Ng�c", tbProp = {6,1,4873,1,0,0},nCount = 1500},
                {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 1000},
                {szName = "B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30355,1,0,0},nCount = 1000},
		{szName="��i Kim B�i",tbProp={4,1506,1,1,0,0},nCount=250},
	},
	[2] = {
		{szName="C�n Kh�n Tinh X�o 9",tbProp={0,{4760,4774}},nQuality=1,nCount=1},
		{szName = "T�i ��i Tinh Ng�c", tbProp = {6,1,5331,1,0,0},nCount = 30},
                {szName = " T�i B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,30160,1,0,0},nCount = 30},
                {szName = "T�i B�ch Ngh� Tinh Ng�c", tbProp = {6,1,30161,1,0,0},nCount = 30},
                {szName = " Truy�n Nh�n-T�n V�t", tbProp = {6,1,30187,1,0,0},nCount = 20},
                {szName = "B�ch Khoa To�n Th� - B�n Ho�n Ch�nh", tbProp = {6,1,30189,1,0,0},nCount = 700},
		{szName="��i Kim B�i",tbProp={4,1506,1,1,0,0},nCount=999},
	},
	[3] = {
		{szName="�� Ph� Nhu T�nh (Gi�i Ch�)",tbProp={6,1,1409,1,0,0},nCount=100},
		{szName="Th�y Tinh",tbProp={4,{238,240},1,1,0,0},nCount=5},
		{szName="L��ng",nJxb=1,nCount=10000000},
	},
	[4] = {
		{szName="�� Ph� Nhu T�nh (Ng�c B�i)",tbProp={6,1,1410,1,0,0},nCount=100},
		{szName="Th�y Tinh",tbProp={4,{238,240},1,1,0,0},nCount=5},
		{szName="L��ng",nJxb=1,nCount=10000000},
	},
}

NangCapNhuTinh.CommonEquip = {
	[1] = {
		{szName="Nh�n C�ng Kh�n 9",tbProp={0,random(4760,4774)},nQuality=1,nCount=1,nRate=nRanD_nt_1},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,random(4730,4744)) 
			end,
			nRate = 100-nRanD_nt_1,
		},
	},
	[2] = {
		{szName="Nh�n C�ng Kh�n 10",tbProp={0,random(4775,4789)},nQuality=1,nCount=1,nRate=nRanD_nt_5},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				local nItemIndex = AddGoldItem(0,random(4760,4774)) 
			end,
			nRate = 100-nRanD_nt_5,
		},
	},
	[3] = {
		{szName="Nhu T�nh Ph�ng Nghi Gi�i Ch�",tbProp={0,192},nQuality=1,nCount=1,nRate=nRanD_nt_3},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				for i = 1,100 do
					AddItem(6,1,1409,1,0,0)
				end
			end,
			nRate = 100-nRanD_nt_3,
		},
	},
	[4] = {
		{szName="Nhu T�nh Tu� T�m Ng�c B�i",tbProp={0,193},nQuality=1,nCount=1,nRate=nRanD_nt_4},
		{szName="L�n N�ng C�p N�y �� Th�t B�i",
			pFun = function (nItemCount, szLogTitle)
				for i = 1,100 do
					AddItem(6,1,1410,1,0,0)
				end
			end,
			nRate = 100-nRanD_nt_4,
		},
	},
}

-----------------------------------------------------------Li�n K�t Npc ��i Tho�i------------------------------------------------------------------------------
function NangCapNhuTinh:CheTaoNhuTinh()
	local p = NangCapNhuTinh:new("N�ng C�p Nhu T�nh","NangCapNhuTinh", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H�y Ch�n Lo�i Trang B� Mu�n N�ng C�p"
	local tbOpt = {
		{self.tbFormulaList[1].szName, p.ComposeGiveUI_1, {p}},
		{self.tbFormulaList[2].szName, p.ComposeGiveUI_2, {p}},
		--{self.tbFormulaList[3].szName, p.ComposeGiveUI_3, {p}},
		--{self.tbFormulaList[4].szName, p.ComposeGiveUI_4, {p}},
		{"H�y B�"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------N�ng C�p Nhu T�nh C�n Qu�c Ngh� Th��ng-----------------------------------------------------------------
function NangCapNhuTinh:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_nt_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function NangCapNhuTinh:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Nhu T�nh Th�c N� H�ng Li�n-----------------------------------------------------------------
function NangCapNhuTinh:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_nt_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function NangCapNhuTinh:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Nhu T�nh Ph�ng Nghi Gi�i Ch�-----------------------------------------------------------------
function NangCapNhuTinh:ComposeGiveUI_3()
	local szTitle = (format("%s", self.tbFormulaList[3].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[3])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_nt_3.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_3, {self}}, nil, self.bAccessBindItem)
end

function NangCapNhuTinh:GiveUIOk_3(nCount)
	if (self:CheckMaterial(self.CommonMaterial[3], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[3], 1)
	self:ConsumeMaterial(self.CommonMaterial[3], 1, self.szLogTitle)
end
---------------------------------------------------------N�ng C�p Nhu T�nh Tu� T�m Ng�c B�i----------------------------------------------------------------
function NangCapNhuTinh:ComposeGiveUI_4()
	local szTitle = (format("%s", self.tbFormulaList[4].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[4])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "T� L� Th�nh C�ng",""..nRanD_nt_4.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_4, {self}}, nil, self.bAccessBindItem)
end

function NangCapNhuTinh:GiveUIOk_4(nCount)
	if (self:CheckMaterial(self.CommonMaterial[4], 1) ~= 1) then
		Talk(1,"","<color=red>C�c H� Mang Nguy�n Li�u Kh�ng �� R�i...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[4], 1)
	self:ConsumeMaterial(self.CommonMaterial[4], 1, self.szLogTitle)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------