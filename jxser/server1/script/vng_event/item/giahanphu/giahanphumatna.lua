IncludeLib("ITEM")
Include("\\script\\lib\\log.lua")
Include("\\script\\battles\\battlehead.lua")
tbVnGiaHanPhu = {}


function main()
dofile("script/vng_event/item/giahanphu/giahanphumatna.lua")
szDescription = format("C�n D��i 2 Ng�y SD \nKh�ng Ph�i L� �� HK")
GiveItemUI("Gia H�n Ph� Th��ng", szDescription, "Run_Extend_Item", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
return 1;
end

function Run_Extend_Item(nCount)
	local nCurTime = GetCurServerTime() --gio he thong
	if nCount == 0 or nCount >1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.")
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
				Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
				return
			end
			if nGoldEquipIdx >0 then --Khong Cho Vat Pham Hoang Kim Gia Han
				Talk(1, "", "V�t Ph�m Ho�ng Kim Kh�ng Th� Gia H�n.")
					return 1;
			end	
			
			if (nItemTime - nCurTime < 0) then ---Kiem Tra Het Han
				Talk(1, "", "Trang s�c �� h�t h�n s� d�ng, kh�ng th� gia h�n.\n")
					return 1;
				end
			if (nItemTime <= 0) or (nItemTime - nCurTime > 20 *24*60*60) then -- Tren 20 ngay ko dc gia han
				Talk(1, "", "Ch� c� th� gia h�n trang s�c c� h�n s� d�ng d��i 20 ng�y.")
				return 1;		
			end
			
			if nG==0 and nP==839 then
				if ConsumeEquiproomItem(1,6,1,4907,-1)>0 then
				RemoveItemByIndex(nItemIndex)
				tbAwardTemplet:GiveAwardByList({{szName="M�t N� Chi�n Tr��ng Th�n Gi�",tbProp={0,11,839,1,0,0},nCount=1,nExpiredTime= (nTimeLeftCount+30)*24*60},}, "test", 1);
				Msg2Player("Ch�c M�ng B�n �� Gia H�n Th�m ���c 30 Ng�y S� D�ng")
			--	ConsumeEquiproomItem(1,6,1,4907,-1)
			end
			end

		
	end		
		--return 1;
end