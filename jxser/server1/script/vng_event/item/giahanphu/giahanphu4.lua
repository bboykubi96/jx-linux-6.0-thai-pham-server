IncludeLib("ITEM")
Include("\\script\\lib\\log.lua")
Include("\\script\\battles\\battlehead.lua")
tbVnGiaHanPhu = {}
tbVnGiaHanPhu.tbItem = {
["3953"]="Ng� H�nh �n",
["3991"]="Xuy�n Y Ph� Gi�p",
}


function tbVnGiaHanPhuGiveUIConfirm(nCount)
	local nCheckMap = DynamicExecuteByPlayer(PlayerIndex, "\\script\\vng_feature\\checkinmap.lua", "PlayerFunLib:VnCheckInCity")	

	
	if not nCheckMap then
		return
	end
	if nCount ~= 1 then
		Talk(1, "", "V�t ph�m b� v�o kh�ng ��ng, xin h�y ki�m tra l�i!")
		return
	end
	local nIDX = GetGiveItemUnit(1)
	local nQuality = GetItemQuality(nIDX)
	if nQuality ~= 1 then
		Talk(1, "", "Trang b� ng��i ��t v�o kh�ng ph�i l� trang b� ho�ng kim")
		return
	end
	local nGoldEquipIdx = GetGlodEqIndex(nIDX)
	if not tbVnGiaHanPhu.tbItem[tostring(nGoldEquipIdx)] then
		Talk(1, "", "Trang b� ng��i ��t v�o kh�ng ph�i l� trang s�c, xin h�y ki�m tra l�i!")
		return
	end
	local nCurItemExpiredTime = ITEM_GetExpiredTime(nIDX)
	local nCurTime = GetCurServerTime()
	local nTimeLeftCount=(nCurItemExpiredTime - nCurTime)/(60*60*24)
	if (nCurItemExpiredTime - nCurTime < 0) then
		Talk(1, "", "Trang s�c �� h�t h�n s� d�ng, kh�ng th� gia h�n.")
		return
	end

	if ConsumeEquiproomItem(1, 6,1,4907,1) ~= 1 then
		Talk(1, "", "Kh�ng t�m th�y v�t ph�m Gia H�n Ph�, gia h�n th�t b�i.")
		return
	end
		local strItemName = GetItemName(nIDX)
		RemoveItemByIndex(nIDX)
		if nGoldEquipIdx== 3953 then
	tbAwardTemplet:GiveAwardByList({{szName = strItemName,tbProp={0,6058},nQuality=1,nCount=1,nExpiredTime=(nTimeLeftCount+30)*24*60},}, "test", 1);
	else 
	tbAwardTemplet:GiveAwardByList({{szName = strItemName,tbProp={0,6065},nQuality=1,nCount=1,nExpiredTime=(nTimeLeftCount+30)*24*60},}, "test", 1);
	end

	--ITEM_SetExpiredTime(nIDX, (nTimeLeftCount+30)*24*60)
--	SyncItem(nIDX)

	Msg2Player(format("Gia h�n v�t ph�m <color=yellow>%s<color> th�nh c�ng, v�t ph�m c� h�n s� d�ng <color=yellow>30<color> ng�y t�nh t� th�i �i�m hi�n t�i.", strItemName))
	tbLog:PlayerActionLog("SuDungVatPhamGiaHanPhu", "Gia h�n v�t ph�m "..strItemName, "H�n s� d�ng c� c�n "..(nCurItemExpiredTime - nCurTime).." gi�y")
end

function main(nItemIDX)
dofile("script/vng_event/item/giahanphu/giahanphu4.lua")
	local nCheckMap = DynamicExecuteByPlayer(PlayerIndex, "\\script\\vng_feature\\checkinmap.lua", "PlayerFunLib:VnCheckInCity")
	if not nCheckMap then
		return 1
	end
	GiveItemUI("Gia H�n Ph�", "Xin h�y b� 11 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
	return 1
end