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
		{"�� Ph� Thanh C�u",DoPhoThanhCau},
		{"�� Ph� V�n L�c",DoPhoVanLoc},
		{"�� Ph� Th��ng Lang",DoPhoThuongLang},
		{"�� Ph� Huy�n Vi�n",DoPhoHuyenVien},
		{"�� Ph� T� M�ng",DoPhoTuMang},
		{"�� Ph� Kim �",DoPhoKimO},
		{"�� Ph� B�ch H�",DoPhoBachHo},
		{"�� Ph� X�ch L�n",DoPhoXichLan},
		{"�� Ph� Minh Ph��ng",DoPhoMinhPhuong},
		{"�� Ph� ��ng Long",DoPhoDangLong},
		{"�� Ph� Tinh S��ng",DoPhoTinhSuong},
		{"�� Ph� Nguy�t Khuy�t",DoPhoNguyetKhuyet},
		{"�� Ph� Di�u D��ng",DoPhoDieuDuong},
		{"�� Ph� Anh H�o",DoPhoAnhHao},
		{"H�y B�"},
	}
	CreateNewSayEx("<color=green>Ng��i H�y Ch�n Lo�i �� Ph� Mu�n N�ng C�p<color>\n<color=yellow>Huy�t Chi�n Hi�n T�i: <color=red>"..GetArenaCredits().."<color> �i�m Huy�t Chi�n<color>", tbOpt)
end	
------------------------------------------------------------------------------------Thanh C�u------------------------------------------------------------------------------------------------------------
function DoPhoThanhCau()
	GiveItemUI("�� Ph� Thanh C�u","+ 1 �� Ph� Thanh C�u\n+ "..DiemHuyetChien[1].." �i�m Huy�t Chi�n\n+ "..nKV[15].." V�n L��ng","EpDoPhoThanhCau","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1,"","<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoThanhCau[1] > P or P > nDoPhoThanhCau[2] then
			Talk(1,"","<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[1]) then
			if (GetCash() >= nKV[1]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[1]) ReduceArenaCredits(DiemHuyetChien[1])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[15].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[1].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
-------------------------------------------------------------------------------------V�n L�c-------------------------------------------------------------------------------------------------------------
function DoPhoVanLoc()
	GiveItemUI("�� Ph� V�n L�c","+ 1 �� Ph� V�n L�c\n+ "..DiemHuyetChien[2].." �i�m Huy�t Chi�n\n+ "..nKV[16].." V�n L��ng","EpDoPhoVanLoc","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoVanLoc[1] > P or P > nDoPhoVanLoc[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[2]) then
			if (GetCash() >= nKV[2]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[2]) ReduceArenaCredits(DiemHuyetChien[2])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[16].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[2].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Th��ng Lang---------------------------------------------------------------------------------------------------------
function DoPhoThuongLang()
	GiveItemUI("�� Ph� Th��ng Lang","+ 1 �� Ph� Th��ng Lang\n+ "..DiemHuyetChien[3].." �i�m Huy�t Chi�n\n+ "..nKV[17].." V�n L��ng","EpDoPhoThuongLang","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoThuongLang[1] > P or P > nDoPhoThuongLang[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[3]) then
			if (GetCash() >= nKV[3]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[3]) ReduceArenaCredits(DiemHuyetChien[3])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[17].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[3].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Huy�n Vi�n---------------------------------------------------------------------------------------------------------
function DoPhoHuyenVien()
	GiveItemUI("�� Ph� Huy�n Vi�n","+ 1 �� Ph� Huy�n Vi�n\n+ "..DiemHuyetChien[4].." �i�m Huy�t Chi�n\n+ "..nKV[18].." V�n L��ng","EpDoPhoHuyenVien","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoHuyenVien[1] > P or P > nDoPhoHuyenVien[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[4]) then
			if (GetCash() >= nKV[4]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[4]) ReduceArenaCredits(DiemHuyetChien[4])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[18].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[4].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------T� M�ng---------------------------------------------------------------------------------------------------------
function DoPhoTuMang()
	GiveItemUI("�� Ph� T� M�ng","+ 1 �� Ph� T� M�ng\n+ "..DiemHuyetChien[5].." �i�m Huy�t Chi�n\n+ "..nKV[19].." V�n L��ng","EpDoPhoTuMang","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoTuMang[1] > P or P > nDoPhoTuMang[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[5]) then
			if (GetCash() >= nKV[5]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[5]) ReduceArenaCredits(DiemHuyetChien[5])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[19].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[5].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Kim �---------------------------------------------------------------------------------------------------------
function DoPhoKimO()
	GiveItemUI("�� Ph� Kim �","+ 1 �� Ph� Kim �\n+ "..DiemHuyetChien[6].." �i�m Huy�t Chi�n\n+ "..nKV[20].." V�n L��ng","EpDoPhoKimO","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoKimO[1] > P or P > nDoPhoKimO[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[6]) then
			if (GetCash() >= nKV[6]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[6]) ReduceArenaCredits(DiemHuyetChien[6])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[20].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[6].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------B�ch H�---------------------------------------------------------------------------------------------------------
function DoPhoBachHo()
	GiveItemUI("�� Ph� B�ch H�","+ 1 �� Ph� B�ch H�\n+ "..DiemHuyetChien[7].." �i�m Huy�t Chi�n\n+ "..nKV[21].." V�n L��ng","EpDoPhoBachHo","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoBachHo[1] > P or P > nDoPhoBachHo[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[7]) then
			if (GetCash() >= nKV[7]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[7]) ReduceArenaCredits(DiemHuyetChien[7])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[21].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[7].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------X�ch L�n---------------------------------------------------------------------------------------------------------
function DoPhoXichLan()
	GiveItemUI("�� Ph� X�ch L�n","+ 1 �� Ph� X�ch L�n\n+ "..DiemHuyetChien[8].." �i�m Huy�t Chi�n\n+ "..nKV[22].." V�n L��ng","EpDoPhoXichLan","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoXichLan[1] > P or P > nDoPhoXichLan[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[8]) then
			if (GetCash() >= nKV[8]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[8]) ReduceArenaCredits(DiemHuyetChien[8])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[22].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[8].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Minh Ph��ng---------------------------------------------------------------------------------------------------------
function DoPhoMinhPhuong()
	GiveItemUI("�� Ph� Minh Ph��ng","+ 1 �� Ph� Minh Ph��ng\n+ "..DiemHuyetChien[9].." �i�m Huy�t Chi�n\n+ "..nKV[23].." V�n L��ng","EpDoPhoMinhPhuong","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoMinhPhuong[1] > P or P > nDoPhoMinhPhuong[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[9]) then
			if (GetCash() >= nKV[9]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[9]) ReduceArenaCredits(DiemHuyetChien[9])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[23].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[9].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------��ng Long---------------------------------------------------------------------------------------------------------
function DoPhoDangLong()
	GiveItemUI("�� Ph� ��ng Long","+ 1 �� Ph� ��ng Long\n+ "..DiemHuyetChien[10].." �i�m Huy�t Chi�n\n+ "..nKV[24].." V�n L��ng","EpDoPhoDangLong","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoDangLong[1] > P or P > nDoPhoDangLong[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[10]) then
			if (GetCash() >= nKV[10]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[10]) ReduceArenaCredits(DiemHuyetChien[10])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[24].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[10].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Tinh S��ng---------------------------------------------------------------------------------------------------------
function DoPhoTinhSuong()
	GiveItemUI("�� Ph� Tinh S��ng","+ 1 �� Ph� Tinh S��ng\n+ "..DiemHuyetChien[11].." �i�m Huy�t Chi�n\n+ "..nKV[25].." V�n L��ng","EpDoPhoTinhSuong","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoTinhSuong[1] > P or P > nDoPhoTinhSuong[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[11]) then
			if (GetCash() >= nKV[11]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[11]) ReduceArenaCredits(DiemHuyetChien[11])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[25].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[11].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Nguy�t Khuy�t---------------------------------------------------------------------------------------------------------
function DoPhoNguyetKhuyet()
	GiveItemUI("�� Ph� Nguy�t Khuy�t","+ 1 �� Ph� Nguy�t Khuy�t\n+ "..DiemHuyetChien[12].." �i�m Huy�t Chi�n\n+ "..nKV[26].." V�n L��ng","EpDoPhoNguyetKhuyet","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoNguyetKhuyet[1] > P or P > nDoPhoNguyetKhuyet[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[12]) then
			if (GetCash() >= nKV[12]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[12]) ReduceArenaCredits(DiemHuyetChien[12])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[26].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[12].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
--------------------------------------------------------------------------------------Di�u D��ng---------------------------------------------------------------------------------------------------------
function DoPhoDieuDuong()
	GiveItemUI("�� Ph� Di�u D��ng","+ 1 �� Ph� Di�u D��ng\n+ "..DiemHuyetChien[13].." �i�m Huy�t Chi�n\n+ "..nKV[27].." V�n L��ng","EpDoPhoDieuDuong","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoDieuDuong[1] > P or P > nDoPhoDieuDuong[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[13]) then
			if (GetCash() >= nKV[13]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[13]) ReduceArenaCredits(DiemHuyetChien[13])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[27].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[13].." �i�m Huy�t Chi�n!<color>")
		end
	end
end
----------------------------------------------------------------------------------------Anh H�o------------------------------------------------------------------------------------------------------
function DoPhoAnhHao()
	GiveItemUI("�� Ph� Anh H�o","+ 1 �� Ph� Anh H�o\n+ "..DiemHuyetChien[14].." �i�m Huy�t Chi�n\n+ "..nKV[28].." V�n L��ng","EpDoPhoAnhHao","No",0)
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
			Talk(1,"","<color=green>Ng��i B� V�o S� L��ng Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai.<color>");
			return
		end

		if nExpiredTime ~= 0 then
			Talk(1, "", "<color=green>V�t Ph�m C� H�n S� D�ng Kh�ng Th� N�ng C�p<color>")
			return
		end

		if nDoPhoAnhHao[1] > P or P > nDoPhoAnhHao[2] then
			Talk(1, "", "<color=yellow>�� Ph� B� V�o Kh�ng ��ng Y�u C�u Xin Ki�m Tra Lai!<color>")
			return
		end

		if (GetArenaCredits() >= DiemHuyetChien[14]) then
			if (GetCash() >= nKV[14]) then
				AddItem(6,1,P+10,1,0,0)
				RemoveItemByIndex(nItemIndex) Pay(nKV[14]) ReduceArenaCredits(DiemHuyetChien[14])
				Msg2Player("Ch�c M�ng "..GetName().." �� N�ng C�p "..nNameItem.." Th�nh C�ng")
			else
				Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..nKV[28].." V�n L��ng!<color>")
			end
		else
			Talk(1,"","<color=yellow>Mu�n N�ng C�p �� Ph� C�n T�i Thi�u "..DiemHuyetChien[14].." �i�m Huy�t Chi�n!<color>")
		end
	end
end

function main()
dofile("script/update_feature/nangcaptrangbi/chetaohkmp/nguyenlieu.lua")
	local tbOpt = {
		{"N�ng C�p �� Ph�",NangCapDoPho},
		{"H�y B�"},
	}
	CreateNewSayEx("Ng��i H�y Ch�n Lo�i Nguy�n Li�u Mu�n N�ng C�p", tbOpt)
end
---------------------------------------------------------------------------------End-----------------------------------------------------------------------------------------------------------------------