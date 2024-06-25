IncludeLib("ITEM")
Include("\\script\\lib\\log.lua")
tbVnGiaHanPhu = {}
tbVnGiaHanPhu.tbItem = {
	["3960"]="T�n Nh�m �n Gi�m (H�)",
	["3961"]="T�n Nh�m �n Gi�m (Trung)",
	["3962"]="T�n Nh�m �n Gi�m (Th��ng)",
}

tbVnGiaHanPhu.nExpiredTime = 10080

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
		Talk(1,"","<bclr=violet>Trang B� M� Ng��i ��t V�o Kh�ng Ph�i Trang B� Ho�ng Kim<bclr>")
		return
	end
	local nGoldEquipIdx = GetGlodEqIndex(nIDX)
	if not tbVnGiaHanPhu.tbItem[tostring(nGoldEquipIdx)] then
		Talk(1,"","<bclr=violet>Trang B� M� Ng��i ��t V�o Kh�ng �� �i�u Ki�n Gia H�n<bclr>")
		return
	end
	local nCurItemExpiredTime = ITEM_GetExpiredTime(nIDX)
	local nCurTime = GetCurServerTime()
	if (nCurItemExpiredTime - nCurTime < 0) then
		Talk(1,"","Trang s�c �� h�t h�n s� d�ng, kh�ng th� gia h�n.")
		return
	end
	if (nCurItemExpiredTime <= 0) or (nCurItemExpiredTime - nCurTime > tbVnGiaHanPhu.nExpiredTime*60) then
		Talk(1,"","<bclr=violet>Ch� C� Th� Gia H�n Trang C� Th�i H�n D��i 7 Ng�y")
		return
	end
	if ConsumeEquiproomItem(1, 6,1,30225,1) ~= 1 then
		Talk(1,"","<bclr=violet>Kh�ng t�m th�y v�t ph�m Gia H�n Ph�, gia h�n th�t b�i")
		return
	end
	local strItemName = GetItemName(nIDX)
	ITEM_SetExpiredTime(nIDX, tbVnGiaHanPhu.nExpiredTime)
	SyncItem(nIDX)
	Msg2Player(format("Gia h�n v�t ph�m <color=yellow>%s<color> th�nh c�ng, v�t ph�m c� h�n s� d�ng <color=yellow>7<color> ng�y t�nh t� th�i �i�m hi�n t�i.", strItemName))
	tbLog:PlayerActionLog("SuDungVatPhamGiaHanPhu","Gia h�n v�t ph�m "..strItemName, "H�n s� d�ng c� c�n "..(nCurItemExpiredTime - nCurTime).." gi�y")
end

function main(nItemIDX)
	local nCheckMap = DynamicExecuteByPlayer(PlayerIndex,"\\script\\vng_feature\\checkinmap.lua","PlayerFunLib:VnCheckInCity")
	if not nCheckMap then
		return 1
	end
	GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
	return 1
end