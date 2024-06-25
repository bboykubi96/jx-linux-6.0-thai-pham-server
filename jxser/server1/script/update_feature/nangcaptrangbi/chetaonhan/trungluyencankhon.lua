Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------------------
IDX_CanKhonTinhXao = 9126		--ID ��u Ra
IDX_ITEM = 1496			--ID V�t Ph�m Ti�u Hao
IDX_ITEMNAME = "Kim Nguy�n B�o"	--T�n V�t Ph�m Ti�u Hao
IDX_ITEMCOUNT = 50			--S� L��ng V�t Ti�u Hao
-----------------------------------------------------------------------------------------ID ��u V�o-----------------------------------------------------------------------------------------------------------------------------------------
nIDA1 = 9126; 	nIDA2 = 9141; 	nIDA3 = 9156; 	nIDA4 = 9171; 	nIDA5 = 9186; 	nIDA6 = 9201; 	nIDA7 = 9216; 	nIDA8 = 9231; 	nIDA9 = 9246; 	nIDA10 = 9261;	 nIDA11 = 9276;
nIDB1 = 9140; 	nIDB2 = 9155; 	nIDB3 = 9170; 	nIDB4 = 9185; 	nIDB5 = 9200; 	nIDB6 = 9215; 	nIDB7 = 9230; 	nIDB8 = 9245; 	nIDB9 = 9260; 	nIDB10 = 9275;	 nIDB11 = 9290;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
tbEquip2Item = tbActivityCompose:new()
--------------------------------------
function tbEquip2Item:CheckItem(tbItem ,nItemIndex)
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
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TrungLuyenCanKhon()
local szTitle = "H�y L�a Ch�n ��ng Thu�c T�nh Tr��c Khi B� � Nguy�n Li�u"
	local tbOpt = {
		--{"Tr�ng Luy�n: C�n Kh�n C�p 1",NhanCap1},
		--{"Tr�ng Luy�n: C�n Kh�n C�p 2",NhanCap2},
		--{"Tr�ng Luy�n: C�n Kh�n C�p 3",NhanCap3},
		{"Tr�ng Luy�n: C�n Kh�n C�p 4",NhanCap4},
		{"Tr�ng Luy�n: C�n Kh�n C�p 5",NhanCap5},
		{"Tr�ng Luy�n: C�n Kh�n C�p 6",NhanCap6},
		--{"Tr�ng Luy�n: C�n Kh�n C�p 7",NhanCap7},
		--{"Tr�ng Luy�n: C�n Kh�n C�p 8",NhanCap8},
		--{"Tr�ng Luy�n: C�n Kh�n C�p 9",NhanCap9},
		--{"Tr�ng Luy�n: C�n Kh�n C�p 10",NhanCap10},
		--{"Tr�ng Luy�n: C�n Kh�n Truy�n Thuy�t",NhanCap11},
		{"Th�i Ta Ch� Gh� Th�m Th�i",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 1----------------------------------------------------------------------------------------------------------------=
function NhanCap1()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_1",
	"Kh�ng L�i/Loi_1",
	"Kh�ng H�a/Hoa_1",
	"Ph�ng Th� V�t L�/Pho_1",
	"Kh�ng B�ng/Bang_1",
	"H�y/No")
end

function Doc_1()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_1",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_1",
	"Th�i Gian Cho�ng/DocChoang_1",
	"H�y B�/No")
end

function Loi_1()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_1",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_1",
	"Th�i Gian Cho�ng/LoiChoang_1",
	"H�y B�/No")
end

function Hoa_1()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_1",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_1",
	"Th�i Gian Cho�ng/HoaChoang_1",
	"H�y B�/No")
end

function Pho_1()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_1",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_1",
	"Th�i Gian Cho�ng/PhoChoang_1",
	"H�y B�/No")
end

function Bang_1()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_1",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_1",
	"Th�i Gian Cho�ng/BangChoang_1",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 1},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 2},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 3},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 4},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 5},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 6},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 7},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 8},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 9},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + IDX_ITEMCOUNT},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 11},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 12},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 13},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_1()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 1",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,{nIDA1,nIDB1}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},

                               {szName = "B�ch Ngh� Thi�n Th�ch", tbProp = {6,1,49004,1,0,0},nCount = 500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 1",tbProp={0,IDX_CanKhonTinhXao + 14},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 2----------------------------------------------------------------------------------------------------------------=
function NhanCap2()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_2",
	"Kh�ng L�i/Loi_2",
	"Kh�ng H�a/Hoa_2",
	"Ph�ng Th� V�t L�/Pho_2",
	"Kh�ng B�ng/Bang_2",
	"H�y/No")
end

function Doc_2()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_2",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_2",
	"Th�i Gian Cho�ng/DocChoang_2",
	"H�y B�/No")
end

function Loi_2()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_2",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_2",
	"Th�i Gian Cho�ng/LoiChoang_2",
	"H�y B�/No")
end

function Hoa_2()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_2",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_2",
	"Th�i Gian Cho�ng/HoaChoang_2",
	"H�y B�/No")
end

function Pho_2()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_2",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_2",
	"Th�i Gian Cho�ng/PhoChoang_2",
	"H�y B�/No")
end

function Bang_2()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_2",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_2",
	"Th�i Gian Cho�ng/BangChoang_2",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 15},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 16},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 17},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 18},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 19},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 20},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 21},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 22},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 23},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 24},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 25},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 26},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 27},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 28},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 2",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,{nIDA2,nIDB2}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 2",tbProp={0,IDX_CanKhonTinhXao + 29},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 3----------------------------------------------------------------------------------------------------------------=
function NhanCap3()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_3",
	"Kh�ng L�i/Loi_3",
	"Kh�ng H�a/Hoa_3",
	"Ph�ng Th� V�t L�/Pho_3",
	"Kh�ng B�ng/Bang_3",
	"H�y/No")
end

function Doc_3()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_3",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_3",
	"Th�i Gian Cho�ng/DocChoang_3",
	"H�y B�/No")
end

function Loi_3()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_3",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_3",
	"Th�i Gian Cho�ng/LoiChoang_3",
	"H�y B�/No")
end

function Hoa_3()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_3",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_3",
	"Th�i Gian Cho�ng/HoaChoang_3",
	"H�y B�/No")
end

function Pho_3()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_3",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_3",
	"Th�i Gian Cho�ng/PhoChoang_3",
	"H�y B�/No")
end

function Bang_3()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_3",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_3",
	"Th�i Gian Cho�ng/BangChoang_3",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 30},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 31},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 32},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 33},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 34},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 35},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 36},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 37},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 38},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 39},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 40},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_2()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 41},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 42},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 43},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_3()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 3",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,{nIDA3,nIDB3}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 3",tbProp={0,IDX_CanKhonTinhXao + 44},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 4----------------------------------------------------------------------------------------------------------------=
function NhanCap4()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_4",
	"Kh�ng L�i/Loi_4",
	"Kh�ng H�a/Hoa_4",
	"Ph�ng Th� V�t L�/Pho_4",
	"Kh�ng B�ng/Bang_4",
	"H�y/No")
end

function Doc_4()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_4",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_4",
	"Th�i Gian Cho�ng/DocChoang_4",
	"H�y B�/No")
end

function Loi_4()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_4",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_4",
	"Th�i Gian Cho�ng/LoiChoang_4",
	"H�y B�/No")
end

function Hoa_4()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_4",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_4",
	"Th�i Gian Cho�ng/HoaChoang_4",
	"H�y B�/No")
end

function Pho_4()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_4",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_4",
	"Th�i Gian Cho�ng/PhoChoang_4",
	"H�y B�/No")
end

function Bang_4()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_4",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_4",
	"Th�i Gian Cho�ng/BangChoang_4",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
                               {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 45},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 46},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 47},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 48},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 49},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 50},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 51},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 52},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 53},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 54},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 55},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 56},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 57},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 58},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_4()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 4",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,{nIDA4,nIDB4}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=2000},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 4",tbProp={0,IDX_CanKhonTinhXao + 59},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 5----------------------------------------------------------------------------------------------------------------=
function NhanCap5()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_5",
	"Kh�ng L�i/Loi_5",
	"Kh�ng H�a/Hoa_5",
	"Ph�ng Th� V�t L�/Pho_5",
	"Kh�ng B�ng/Bang_5",
	"H�y/No")
end

function Doc_5()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_5",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_5",
	"Th�i Gian Cho�ng/DocChoang_5",
	"H�y B�/No")
end

function Loi_5()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_5",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_5",
	"Th�i Gian Cho�ng/LoiChoang_5",
	"H�y B�/No")
end

function Hoa_5()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_5",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_5",
	"Th�i Gian Cho�ng/HoaChoang_5",
	"H�y B�/No")
end

function Pho_5()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_5",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_5",
	"Th�i Gian Cho�ng/PhoChoang_5",
	"H�y B�/No")
end

function Bang_5()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_5",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_5",
	"Th�i Gian Cho�ng/BangChoang_5",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
                                 {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 60},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 61},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 62},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 63},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 64},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 65},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 66},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 67},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 68},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 69},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 70},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 71},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 72},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 73},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_5()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 5",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,{nIDA5,nIDB5}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
    {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=300},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 5",tbProp={0,IDX_CanKhonTinhXao + 74},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 6----------------------------------------------------------------------------------------------------------------=
function NhanCap6()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_6",
	"Kh�ng L�i/Loi_6",
	"Kh�ng H�a/Hoa_6",
	"Ph�ng Th� V�t L�/Pho_6",
	"Kh�ng B�ng/Bang_6",
	"H�y/No")
end

function Doc_6()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_6",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_6",
	"Th�i Gian Cho�ng/DocChoang_6",
	"H�y B�/No")
end

function Loi_6()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_6",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_6",
	"Th�i Gian Cho�ng/LoiChoang_6",
	"H�y B�/No")
end

function Hoa_6()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_6",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_6",
	"Th�i Gian Cho�ng/HoaChoang_6",
	"H�y B�/No")
end

function Pho_6()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_6",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_6",
	"Th�i Gian Cho�ng/PhoChoang_6",
	"H�y B�/No")
end

function Bang_6()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_6",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_6",
	"Th�i Gian Cho�ng/BangChoang_6",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
                                {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 75},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 76},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 77},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 78},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 79},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 80},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 81},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 82},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 83},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 84},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 85},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 86},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 87},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 88},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_6()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 6",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,{nIDA6,nIDB6}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
       {szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=500},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 6",tbProp={0,IDX_CanKhonTinhXao + 89},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 7----------------------------------------------------------------------------------------------------------------=
function NhanCap7()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_7",
	"Kh�ng L�i/Loi_7",
	"Kh�ng H�a/Hoa_7",
	"Ph�ng Th� V�t L�/Pho_7",
	"Kh�ng B�ng/Bang_7",
	"H�y/No")
end

function Doc_7()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_7",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_7",
	"Th�i Gian Cho�ng/DocChoang_7",
	"H�y B�/No")
end

function Loi_7()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_7",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_7",
	"Th�i Gian Cho�ng/LoiChoang_7",
	"H�y B�/No")
end

function Hoa_7()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_7",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_7",
	"Th�i Gian Cho�ng/HoaChoang_7",
	"H�y B�/No")
end

function Pho_7()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_7",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_7",
	"Th�i Gian Cho�ng/PhoChoang_7",
	"H�y B�/No")
end

function Bang_7()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_7",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_7",
	"Th�i Gian Cho�ng/BangChoang_7",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 90},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 91},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 92},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 93},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 94},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 95},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 96},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 97},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 98},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 99},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 100},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 101},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 102},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 103},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_7()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 7",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,{nIDA7,nIDB7}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 7",tbProp={0,IDX_CanKhonTinhXao + 104},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 8----------------------------------------------------------------------------------------------------------------=
function NhanCap8()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_8",
	"Kh�ng L�i/Loi_8",
	"Kh�ng H�a/Hoa_8",
	"Ph�ng Th� V�t L�/Pho_8",
	"Kh�ng B�ng/Bang_8",
	"H�y/No")
end

function Doc_8()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_8",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_8",
	"Th�i Gian Cho�ng/DocChoang_8",
	"H�y B�/No")
end

function Loi_8()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_8",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_8",
	"Th�i Gian Cho�ng/LoiChoang_8",
	"H�y B�/No")
end

function Hoa_8()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_8",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_8",
	"Th�i Gian Cho�ng/HoaChoang_8",
	"H�y B�/No")
end

function Pho_8()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_8",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_8",
	"Th�i Gian Cho�ng/PhoChoang_8",
	"H�y B�/No")
end

function Bang_8()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_8",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_8",
	"Th�i Gian Cho�ng/BangChoang_8",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 105},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 106},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 107},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 108},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 109},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 110},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 111},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 112},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 113},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 114},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 115},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 116},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 117},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 118},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_8()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 8",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,{nIDA8,nIDB8}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 8",tbProp={0,IDX_CanKhonTinhXao + 119},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 9----------------------------------------------------------------------------------------------------------------=
function NhanCap9()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_9",
	"Kh�ng L�i/Loi_9",
	"Kh�ng H�a/Hoa_9",
	"Ph�ng Th� V�t L�/Pho_9",
	"Kh�ng B�ng/Bang_9",
	"H�y/No")
end

function Doc_9()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_9",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_9",
	"Th�i Gian Cho�ng/DocChoang_9",
	"H�y B�/No")
end

function Loi_9()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_9",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_9",
	"Th�i Gian Cho�ng/LoiChoang_9",
	"H�y B�/No")
end

function Hoa_9()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_9",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_9",
	"Th�i Gian Cho�ng/HoaChoang_9",
	"H�y B�/No")
end

function Pho_9()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_9",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_9",
	"Th�i Gian Cho�ng/PhoChoang_9",
	"H�y B�/No")
end

function Bang_9()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_9",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_9",
	"Th�i Gian Cho�ng/BangChoang_9",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 120},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 121},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 122},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 123},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 124},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 125},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 126},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 127},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 128},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 129},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 130},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 131},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 132},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 133},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_9()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 9",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,{nIDA9,nIDB9}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 9",tbProp={0,IDX_CanKhonTinhXao + 134},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 10----------------------------------------------------------------------------------------------------------------=
function NhanCap10()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_10",
	"Kh�ng L�i/Loi_10",
	"Kh�ng H�a/Hoa_10",
	"Ph�ng Th� V�t L�/Pho_10",
	"Kh�ng B�ng/Bang_10",
	"H�y/No")
end

function Doc_10()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_10",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_10",
	"Th�i Gian Cho�ng/DocChoang_10",
	"H�y B�/No")
end

function Loi_10()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_10",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_10",
	"Th�i Gian Cho�ng/LoiChoang_10",
	"H�y B�/No")
end

function Hoa_10()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_10",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_10",
	"Th�i Gian Cho�ng/HoaChoang_10",
	"H�y B�/No")
end

function Pho_10()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_10",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_10",
	"Th�i Gian Cho�ng/PhoChoang_10",
	"H�y B�/No")
end

function Bang_10()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_10",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_10",
	"Th�i Gian Cho�ng/BangChoang_10",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 135},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 136},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 137},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 138},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 139},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 140},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 141},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 142},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 143},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 144},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 145},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 146},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 147},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 148},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_10()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� C�p 10",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� C�p 10",tbProp={0,{nIDA10,nIDB10}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� C�p 10",tbProp={0,IDX_CanKhonTinhXao + 149},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---------------------------------------------------------------------------------Nh�n C�n Kh�n C�p 11----------------------------------------------------------------------------------------------------------------=
function NhanCap11()
Say("H�y L�a Ch�n Kh�ng T�nh",6,
	"Kh�ng ��c/Doc_11",
	"Kh�ng L�i/Loi_11",
	"Kh�ng H�a/Hoa_11",
	"Ph�ng Th� V�t L�/Pho_11",
	"Kh�ng B�ng/Bang_11",
	"H�y/No")
end

function Doc_11()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/DocLamCham_11",
	"Th�i Gian Tr�ng ��c/DocTrungDoc_11",
	"Th�i Gian Cho�ng/DocChoang_11",
	"H�y B�/No")
end

function Loi_11()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/LoiLamCham_11",
	"Th�i Gian Tr�ng ��c/LoiTrungDoc_11",
	"Th�i Gian Cho�ng/LoiChoang_11",
	"H�y B�/No")
end

function Hoa_11()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/HoaLamCham_11",
	"Th�i Gian Tr�ng ��c/HoaTrungDoc_11",
	"Th�i Gian Cho�ng/HoaChoang_11",
	"H�y B�/No")
end

function Pho_11()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/PhoLamCham_11",
	"Th�i Gian Tr�ng ��c/PhoTrungDoc_11",
	"Th�i Gian Cho�ng/PhoChoang_11",
	"H�y B�/No")
end

function Bang_11()
Say("H�y L�a Ch�n Hi�u Xu�t",4,
	"Th�i Gian L�m Ch�m/BangLamCham_11",
	"Th�i Gian Tr�ng ��c/BangTrungDoc_11",
	"Th�i Gian Cho�ng/BangChoang_11",
	"H�y B�/No")
end
-------------------------------------------------------------------------------
function DocLamCham_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 150},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiLamCham_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 151},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaLamCham_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 152},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoLamCham_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 153},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangLamCham_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 154},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocTrungDoc_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 155},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiTrungDoc_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 156},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaTrungDoc_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 157},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoTrungDoc_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 158},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangTrungDoc_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 159},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function DocChoang_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 160},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function LoiChoang_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 161},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function HoaChoang_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 162},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function PhoChoang_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 163},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BangChoang_11()
	local tbFormula = {
		[1] = {
			szComposeTitle = "C�n Kh�n Gi�i Ch� Truy�n Thuy�t",
			nFreeItemCellLimit = 0,
			tbMaterial = {
				{szName="Gi�i Ch� Truy�n Thuy�t",tbProp={0,{nIDA11,nIDB11}},nQuality = 1,nCount = 1},
				{szName=IDX_ITEMNAME,tbProp={4,IDX_ITEM,1,1,0,0},nCount = IDX_ITEMCOUNT},
			},
			tbProduct = {szName="C�n Kh�n Gi�i Ch� Truy�n Thuy�t",tbProp={0,IDX_CanKhonTinhXao + 164},nQuality=1,nCount=1},
		}
	}
	local p = tbEquip2Item:new(tbFormula[1], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------