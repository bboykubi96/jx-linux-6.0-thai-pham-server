Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
nKV = {
	10000000,20000000,30000000,50000000,70000000,100000000,150000000,200000000,300000000,500000000,700000000,1000000000,1500000000,2000000000,
	1000,2000,3000,5000,7000,10000,15000,20000,30000,50000,70000,100000,150000,200000,
}
DiemHuyetChien	 = {2000,3000,5000,7000,10000,15000,20000,30000,50000,70000,100000,150000,200000,300000}
nDoPhoThanhCau	 = {5450,5459}
nDoPhoVanLoc		 = {5460,5469}
nDoPhoThuongLang	 = {5470,5479}
nDoPhoHuyenVien	 = {5480,5489}
nDoPhoTuMang		 = {5490,5499}
nDoPhoKimO		 = {5500,5509}
nDoPhoBachHo		 = {5510,5519}
nDoPhoXichLan		 = {5520,5529}
nDoPhoMinhPhuong	 = {5530,5539}
nDoPhoDangLong	 = {5540,5549}
nDoPhoTinhSuong	 = {5550,5559}
nDoPhoNguyetKhuyet	 = {5560,5569}
nDoPhoDieuDuong	 = {5570,5579}
nDoPhoAnhHao		 = {5580,5589}
-------------------------------------------------------------------------------------------------------------------
function NangCapDoPho()
	local tbOpt = {
		{"§å Phæ Thanh C©u",DoPhoThanhCau},
		{"§å Phæ V©n Léc",DoPhoVanLoc},
		{"§å Phæ Th­¬ng Lang",DoPhoThuongLang},
		{"§å Phæ HuyÒn Viªn",DoPhoHuyenVien},
		{"§å Phæ Tö M·ng",DoPhoTuMang},
		{"§å Phæ Kim ¤",DoPhoKimO},
		{"§å Phæ B¹ch Hæ",DoPhoBachHo},
		{"§å Phæ XÝch L©n",DoPhoXichLan},
		{"§å Phæ Minh Ph­îng",DoPhoMinhPhuong},
		{"§å Phæ §»ng Long",DoPhoDangLong},
		{"§å Phæ Tinh S­¬ng",DoPhoTinhSuong},
		{"§å Phæ NguyÖt KhuyÕt",DoPhoNguyetKhuyet},
		{"§å Phæ DiÖu D­¬ng",DoPhoDieuDuong},
		{"§å Phæ Anh Hµo",DoPhoAnhHao},
		{"Hñy Bá"},
	}
	CreateNewSayEx("<color=green>Ng­¬i H·y Chän Lo¹i §å Phæ Muèn N©ng CÊp<color>\n<color=yellow>HuyÕt ChiÕn HiÖn T¹i: <color=red>"..GetArenaCredits().."<color> §iÓm HuyÕt ChiÕn<color>", tbOpt)
end	
------------------------------------------------------------------------------------Thanh C©u------------------------------------------------------------------------------------------------------------
function DoPhoThanhCau()
	GiveItemUI("§å Phæ Thanh C©u","+ 1 §å Phæ Thanh C©u\n+ "..DiemHuyetChien[1].." §iÓm HuyÕt ChiÕn\n+ "..nKV[15].." V¹n L­îng","EpDoPhoThanhCau","No",0)
end

function EpDoPhoThanhCau(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1,"","<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoThanhCau[1] > P or P > nDoPhoThanhCau[2] then
			Talk(1,"","<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[1]) then
			if (GetCash() >= nKV[1]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[1]) ReduceArenaCredits(DiemHuyetChien[1])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[15].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[1].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
-------------------------------------------------------------------------------------V©n Léc-------------------------------------------------------------------------------------------------------------
function DoPhoVanLoc()
	GiveItemUI("§å Phæ V©n Léc","+ 1 §å Phæ V©n Léc\n+ "..DiemHuyetChien[2].." §iÓm HuyÕt ChiÕn\n+ "..nKV[16].." V¹n L­îng","EpDoPhoVanLoc","No",0)
end

function EpDoPhoVanLoc(nCount)

	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoVanLoc[1] > P or P > nDoPhoVanLoc[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[2]) then
			if (GetCash() >= nKV[2]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[2]) ReduceArenaCredits(DiemHuyetChien[2])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[16].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[2].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Th­¬ng Lang---------------------------------------------------------------------------------------------------------
function DoPhoThuongLang()
	GiveItemUI("§å Phæ Th­¬ng Lang","+ 1 §å Phæ Th­¬ng Lang\n+ "..DiemHuyetChien[3].." §iÓm HuyÕt ChiÕn\n+ "..nKV[17].." V¹n L­îng","EpDoPhoThuongLang","No",0)
end

function EpDoPhoThuongLang(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoThuongLang[1] > P or P > nDoPhoThuongLang[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[3]) then
			if (GetCash() >= nKV[3]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[3]) ReduceArenaCredits(DiemHuyetChien[3])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[17].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[3].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------HuyÒn Viªn---------------------------------------------------------------------------------------------------------
function DoPhoHuyenVien()
	GiveItemUI("§å Phæ HuyÒn Viªn","+ 1 §å Phæ HuyÒn Viªn\n+ "..DiemHuyetChien[4].." §iÓm HuyÕt ChiÕn\n+ "..nKV[18].." V¹n L­îng","EpDoPhoHuyenVien","No",0)
end

function EpDoPhoHuyenVien(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoHuyenVien[1] > P or P > nDoPhoHuyenVien[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[4]) then
			if (GetCash() >= nKV[4]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[4]) ReduceArenaCredits(DiemHuyetChien[4])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[18].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[4].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Tö M·ng---------------------------------------------------------------------------------------------------------
function DoPhoTuMang()
	GiveItemUI("§å Phæ Tö M·ng","+ 1 §å Phæ Tö M·ng\n+ "..DiemHuyetChien[5].." §iÓm HuyÕt ChiÕn\n+ "..nKV[19].." V¹n L­îng","EpDoPhoTuMang","No",0)
end

function EpDoPhoTuMang(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoTuMang[1] > P or P > nDoPhoTuMang[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[5]) then
			if (GetCash() >= nKV[5]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[5]) ReduceArenaCredits(DiemHuyetChien[5])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[19].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[5].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Kim ¤---------------------------------------------------------------------------------------------------------
function DoPhoKimO()
	GiveItemUI("§å Phæ Kim ¤","+ 1 §å Phæ Kim ¤\n+ "..DiemHuyetChien[6].." §iÓm HuyÕt ChiÕn\n+ "..nKV[20].." V¹n L­îng","EpDoPhoKimO","No",0)
end

function EpDoPhoKimO(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoKimO[1] > P or P > nDoPhoKimO[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[6]) then
			if (GetCash() >= nKV[6]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[6]) ReduceArenaCredits(DiemHuyetChien[6])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[20].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[6].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------B¹ch Hæ---------------------------------------------------------------------------------------------------------
function DoPhoBachHo()
	GiveItemUI("§å Phæ B¹ch Hæ","+ 1 §å Phæ B¹ch Hæ\n+ "..DiemHuyetChien[7].." §iÓm HuyÕt ChiÕn\n+ "..nKV[21].." V¹n L­îng","EpDoPhoBachHo","No",0)
end

function EpDoPhoBachHo(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoBachHo[1] > P or P > nDoPhoBachHo[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[7]) then
			if (GetCash() >= nKV[7]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[7]) ReduceArenaCredits(DiemHuyetChien[7])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[21].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[7].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------XÝch L©n---------------------------------------------------------------------------------------------------------
function DoPhoXichLan()
	GiveItemUI("§å Phæ XÝch L©n","+ 1 §å Phæ XÝch L©n\n+ "..DiemHuyetChien[8].." §iÓm HuyÕt ChiÕn\n+ "..nKV[22].." V¹n L­îng","EpDoPhoXichLan","No",0)
end

function EpDoPhoXichLan(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoXichLan[1] > P or P > nDoPhoXichLan[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[8]) then
			if (GetCash() >= nKV[8]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[8]) ReduceArenaCredits(DiemHuyetChien[8])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[22].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[8].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Minh Ph­îng---------------------------------------------------------------------------------------------------------
function DoPhoMinhPhuong()
	GiveItemUI("§å Phæ Minh Ph­îng","+ 1 §å Phæ Minh Ph­îng\n+ "..DiemHuyetChien[9].." §iÓm HuyÕt ChiÕn\n+ "..nKV[23].." V¹n L­îng","EpDoPhoMinhPhuong","No",0)
end

function EpDoPhoMinhPhuong(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoMinhPhuong[1] > P or P > nDoPhoMinhPhuong[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[9]) then
			if (GetCash() >= nKV[9]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[9]) ReduceArenaCredits(DiemHuyetChien[9])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[23].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[9].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------§»ng Long---------------------------------------------------------------------------------------------------------
function DoPhoDangLong()
	GiveItemUI("§å Phæ §»ng Long","+ 1 §å Phæ §»ng Long\n+ "..DiemHuyetChien[10].." §iÓm HuyÕt ChiÕn\n+ "..nKV[24].." V¹n L­îng","EpDoPhoDangLong","No",0)
end

function EpDoPhoDangLong(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoDangLong[1] > P or P > nDoPhoDangLong[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[10]) then
			if (GetCash() >= nKV[10]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[10]) ReduceArenaCredits(DiemHuyetChien[10])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[24].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[10].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Tinh S­¬ng---------------------------------------------------------------------------------------------------------
function DoPhoTinhSuong()
	GiveItemUI("§å Phæ Tinh S­¬ng","+ 1 §å Phæ Tinh S­¬ng\n+ "..DiemHuyetChien[11].." §iÓm HuyÕt ChiÕn\n+ "..nKV[25].." V¹n L­îng","EpDoPhoTinhSuong","No",0)
end

function EpDoPhoTinhSuong(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoTinhSuong[1] > P or P > nDoPhoTinhSuong[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[11]) then
			if (GetCash() >= nKV[11]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[11]) ReduceArenaCredits(DiemHuyetChien[11])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[25].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[11].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------NguyÖt KhuyÕt---------------------------------------------------------------------------------------------------------
function DoPhoNguyetKhuyet()
	GiveItemUI("§å Phæ NguyÖt KhuyÕt","+ 1 §å Phæ NguyÖt KhuyÕt\n+ "..DiemHuyetChien[12].." §iÓm HuyÕt ChiÕn\n+ "..nKV[26].." V¹n L­îng","EpDoPhoNguyetKhuyet","No",0)
end

function EpDoPhoNguyetKhuyet(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoNguyetKhuyet[1] > P or P > nDoPhoNguyetKhuyet[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[12]) then
			if (GetCash() >= nKV[12]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[12]) ReduceArenaCredits(DiemHuyetChien[12])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[26].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[12].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
--------------------------------------------------------------------------------------DiÖu D­¬ng---------------------------------------------------------------------------------------------------------
function DoPhoDieuDuong()
	GiveItemUI("§å Phæ DiÖu D­¬ng","+ 1 §å Phæ DiÖu D­¬ng\n+ "..DiemHuyetChien[13].." §iÓm HuyÕt ChiÕn\n+ "..nKV[27].." V¹n L­îng","EpDoPhoDieuDuong","No",0)
end

function EpDoPhoDieuDuong(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoDieuDuong[1] > P or P > nDoPhoDieuDuong[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[13]) then
			if (GetCash() >= nKV[13]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[13]) ReduceArenaCredits(DiemHuyetChien[13])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[27].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[13].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end
----------------------------------------------------------------------------------------Anh Hµo------------------------------------------------------------------------------------------------------
function DoPhoAnhHao()
	GiveItemUI("§å Phæ Anh Hµo","+ 1 §å Phæ Anh Hµo\n+ "..DiemHuyetChien[14].." §iÓm HuyÕt ChiÕn\n+ "..nKV[28].." V¹n L­îng","EpDoPhoAnhHao","No",0)
end

function EpDoPhoAnhHao(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nNameItem = GetItemName(nItemIndex)
		local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
		local G,D,P,nLevel = GetItemProp(nItemIndex)

		if (G ~= 6) then
			return 1
		end

		if (nCount ~= 1)  then
			Talk(1,"","<color=green>Ng­¬i Bá Vµo Sè L­îng Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>VËt PhÈm Cã H¹n Sö Dông Kh«ng ThÓ N©ng CÊp<color>")
			return
		end

		if nDoPhoAnhHao[1] > P or P > nDoPhoAnhHao[2] then
			Talk(1, "", "<color=yellow>§å Phæ Bá Vµo Kh«ng §óng Yªu CÇu Xin KiÓm Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[14]) then
			if (GetCash() >= nKV[14]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[14]) ReduceArenaCredits(DiemHuyetChien[14])
				Msg2Player("Chóc Mõng "..GetName().." §· N©ng CÊp "..nNameItem.." Thµnh C«ng")
			else
				Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..nKV[28].." V¹n L­îng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Muèn N©ng CÊp §å Phæ CÇn Tèi ThiÓu "..DiemHuyetChien[14].." §iÓm HuyÕt ChiÕn!<color>")
		end
	end
end

function main()
dofile("script/update_feature/nangcaptrangbi/chetaohkmp/nguyenlieu.lua")
	local tbOpt = {
		{"N©ng CÊp §å Phæ",NangCapDoPho},
		{"Hñy Bá"},
	}
	CreateNewSayEx("Ng­¬i H·y Chän Lo¹i Nguyªn LiÖu Muèn N©ng CÊp", tbOpt)
end
---------------------------------------------------------------------------------End-----------------------------------------------------------------------------------------------------------------------