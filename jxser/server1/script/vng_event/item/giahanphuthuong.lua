IncludeLib("ITEM")
Include("\\script\\lib\\log.lua")
tbVnGiaHanPhu = {}


function main()
--dofile("script/vng_event/item/giahanphu/giahanphuthuong.lua")
szDescription = format("Cßn D­íi 2 Ngµy SD \nKh«ng Ph¶i Lµ §å HK")
GiveItemUI("Gia H¹n Phï Th­êng", szDescription, "Run_Extend_Item", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
return 1;
end

function Run_Extend_Item(nCount)
	local nCurTime = GetCurServerTime() --gio he thong
	if nCount == 0 or nCount >1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.")
		return 1;
	end

	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS ,kk = GetItemProp(nItemIndex)
		local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex) --gio cua item
		local nTimeLeftCount=(nItemTime - nCurTime)/(60*60*24)
			if nGoldEquipIdx >0 then --Khong Cho Vat Pham Hoang Kim Gia Han
				Talk(1, "", "VËt PhÈm Hoµng Kim Kh«ng ThÓ Gia H¹n.")
					return 1;
			end	
			
			if (nItemTime - nCurTime < 0) then ---Kiem Tra Het Han
				Talk(1, "", "Trang søc ®· hÕt h¹n sö dông, kh«ng thÓ gia h¹n.\n")
					return 1;
				end
			if (nItemTime <= 0) or (nItemTime - nCurTime > 4*24*60*60) then -- Tren 4 ngay ko dc gia han
				Talk(1, "", "ChØ cã thÓ gia h¹n trang søc cã h¹n sö dông d­íi 4 ngµy.")
					return 1;		
			end
		
		ITEM_SetExpiredTime(nItemIndex, (nTimeLeftCount+30)*24*60) -- gia han + 30 ngay so voi hien tai
		SyncItem(nItemIndex)
		ConsumeEquiproomItem(1,6,1,30225,-1)
		Msg2Player("Chóc Mõng B¹n §· Gia H¹n Thªm §­îc 30 Ngµy Sö Dông")
	end		
		--return 1;
end