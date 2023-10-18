IncludeLib("ITEM")
Include("\\script\\lib\\log.lua")
Include("\\script\\battles\\battlehead.lua")
tbVnGiaHanPhu = {}


function main()
dofile("script/global/g7vn/item/giahanphu/giahanphungua.lua")
szDescription = format("Cßn D­íi 4 Ngµy SD \nKh«ng Ph¶i Lµ §å HK")
GiveItemUI("ChØ §­îc Bá Ngùa Th­êng Vµo", szDescription, "Run_Extend_Item", "no", 1)
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
		local bindState = GetItemBindState(nItemIndex)
			if (bindState ~=0) then
				Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
				return
			end
			
			if (nItemTime - nCurTime < 0) then ---Kiem Tra Het Han
				Talk(1, "", "Ngùa ®· hÕt h¹n sö dông, kh«ng thÓ gia h¹n.\n")
					return 1;
				end
			if (nItemTime <= 0) or (nItemTime - nCurTime > 4*24*60*60) then -- Tren 4 ngay ko dc gia han
				Talk(1, "", "ChØ cã thÓ gia h¹n trang søc cã h¹n sö dông d­íi 4 ngµy.")
					return 1;		
			end
			if nGoldEquipIdx==5214 then
				if 	ConsumeEquiproomItem(1,6,1,4382,-1) >0 then
			RemoveItemByIndex(nItemIndex)
			tbAwardTemplet:GiveAwardByList({{szName="H·n HuyÕt",tbProp={0,5214},nCount=1,nQuality=1,nExpiredTime= (nTimeLeftCount+30)*24*60},}, "test", 1);
			Msg2Player("Chóc Mõng B¹n §· Gia H¹n Thªm §­îc 30 Ngµy Sö Dông")
			end
			end
			if nG==0 and nD==10 and nP==13 then
			if 	ConsumeEquiproomItem(1,6,1,4382,-1) >0 then
			RemoveItemByIndex(nItemIndex)
			tbAwardTemplet:GiveAwardByList({{szName="Siªu Quang",tbProp={0,10,13,1,0,0},nCount=1,nExpiredTime= (nTimeLeftCount+30)*24*60},}, "test", 1);
			Msg2Player("Chóc Mõng B¹n §· Gia H¹n Thªm §­îc 30 Ngµy Sö Dông")
			end
			end

			if nG==0 and nD==10 and nP==7 then
			if 	ConsumeEquiproomItem(1,6,1,4382,-1) >0 then
			RemoveItemByIndex(nItemIndex)
			tbAwardTemplet:GiveAwardByList({{szName="Phiªn Vò",tbProp={0,10,7,1,0,0},nCount=1,nExpiredTime= (nTimeLeftCount+30)*24*60},}, "test", 1);
			Msg2Player("Chóc Mõng B¹n §· Gia H¹n Thªm §­îc 30 Ngµy Sö Dông")
			end
			end
			
			if nG==0 and nD==10 and nP==6 then
			if 			ConsumeEquiproomItem(1,6,1,4382,-1) >0 then
			RemoveItemByIndex(nItemIndex)
			tbAwardTemplet:GiveAwardByList({{szName="B«n Tiªu",tbProp={0,10,6,1,0,0},nCount=1,nExpiredTime= (nTimeLeftCount+30)*24*60},}, "test", 1);
			Msg2Player("Chóc Mõng B¹n §· Gia H¹n Thªm §­îc 30 Ngµy Sö Dông")
			end
			end
			
			if nG==0 and nD==10 and nP==9 then
				if ConsumeEquiproomItem(1,6,1,4382,-1) >0 then
			RemoveItemByIndex(nItemIndex)
			tbAwardTemplet:GiveAwardByList({{szName="XÝch Long C©u",tbProp={0,10,9,1,0,0},nCount=1,nExpiredTime= (nTimeLeftCount+30)*24*60},}, "test", 1);
			Msg2Player("Chóc Mõng B¹n §· Gia H¹n Thªm §­îc 30 Ngµy Sö Dông")
			end
			end
		
	end		
		--return 1;
end