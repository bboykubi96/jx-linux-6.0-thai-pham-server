----------------------------------------***Create*By*Heart*Doldly***----------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\composeex.lua")
---------------------------------------------------
NangCapHoangKim = {}
NangCapHoangKim = tbActivityCompose:new()
NangCapHoangKim.bAccessBindItem = 1
nRanD_hkmp_1 = 1 ; nRanD_hkmp_2 = 20

function NangCapHoangKim:CheckItem(tbItem ,nItemIndex)
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

NangCapHoangKim.tbFormulaList = {
	[1] = {szName="MÆt N¹ Hoµng Kim VÜnh ViÔn 3 Skill"},
	[2] = {szName="KiÓm §Þnh Trang BÞ Hoµng Kim M«n Ph¸i"},
}

NangCapHoangKim.CommonMaterial = {
	[1] = {
		{szName="Ngäc Oan Hån",tbProp={6,1,6691,1,0,0},nCount=200},
                {szName="§¹i Kim Bµi",tbProp={4,1506,1,1,0,0},nCount=300},
		
	},
	[2] = {
		{szName="Trang BÞ Hoµng Kim",tbProp={0,{1,140}},nQuality=1,nCount=1},
		{szName="TiÒn Xu",tbProp={4,417,1,1,0,0},nCount=100},
	},
}

NangCapHoangKim.CommonEquip = {
	[1] = {
		{szName="MÆt N¹ 3 Skill",tbProp={0,11,839,1,0,0},nCount=1,nRate=nRanD_hkmp_1},
		{szName="LÇn N©ng CÊp Nµy §· ThÊt B¹i",
			pFun = function (nItemCount, szLogTitle)	
			end,
			nRate = 100-nRanD_hkmp_1,
		},
	},
	[2] = {
		{szName="B¶o R­¬ng Hoµng Kim",tbProp={6,1,5285,1,0,0},nCount=1},
	},
}

-----------------------------------------------------------Liªn KÕt Npc §èi Tho¹i------------------------------------------------------------------------------
function NangCapHoangKim:CheTaoHoangKim()
	local p = NangCapHoangKim:new("N©ng CÊp Hoµng Kim M«n Ph¸i","NangCapHoangKim", INVENTORY_ROOM.room_giveitem)
	local szTitle = "H·y Chän Lo¹i Trang BÞ Muèn N©ng CÊp"
	local tbOpt = {
		{self.tbFormulaList[1].szName, p.ComposeGiveUI_1, {p}},
		--{self.tbFormulaList[2].szName, p.ComposeGiveUI_2, {p}},
		{"Hñy Bá"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------N©ng CÊp Hoµng Kim M«n Ph¸i-----------------------------------------------------------------
function NangCapHoangKim:ComposeGiveUI_1()
	local szTitle = (format("%s", self.tbFormulaList[1].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[1])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("\n\n\t\t\t\t\t%-17s %s", "TØ LÖ Thµnh C«ng",""..nRanD_hkmp_2.."%"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_1, {self}}, nil, self.bAccessBindItem)
end

function NangCapHoangKim:GiveUIOk_1(nCount)
	if (self:CheckMaterial(self.CommonMaterial[1], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[1], 1)
	self:ConsumeMaterial(self.CommonMaterial[1], 1, self.szLogTitle)
end
----------------------------------------------------------------------------------------------------------------------------
function NangCapHoangKim:ComposeGiveUI_2()
	local szTitle = (format("%s", self.tbFormulaList[2].szName))
	local szContent = self:GetMaterialList(self.CommonMaterial[2])
	szContent = gsub(szContent, "<color=%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk_2, {self}}, nil, self.bAccessBindItem)
end

function NangCapHoangKim:GiveUIOk_2(nCount)
	if (self:CheckMaterial(self.CommonMaterial[2], 1) ~= 1) then
		Talk(1,"","<color=red>C¸c H¹ Mang Nguyªn LiÖu Kh«ng §ñ Råi...!<color>")
		return 0
	end
	tbAwardTemplet:GiveAwardByList(self.CommonEquip[2], 1)
	self:ConsumeMaterial(self.CommonMaterial[2], 1, self.szLogTitle)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------