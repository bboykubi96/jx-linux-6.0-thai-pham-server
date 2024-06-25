IncludeLib("ITEM")
Include("\\script\\lib\\log.lua")
tbVnGiaHanPhu = {}
tbVnGiaHanPhu.tbItem = {
	["214"]="Vinh DiÖu Chi Y",
	["215"]="Tinh ChuÈn Chi Ngoa",
	["5941"]="Long §¶m",
	["5942"]="Long §¶m",
	["5943"]="Long §¶m",
	["5944"]="Long §¶m",
}

tbVnGiaHanPhu.nExpiredTime = 30*24*26

function tbVnGiaHanPhuGiveUIConfirm(nCount)
	local nCheckMap = DynamicExecuteByPlayer(PlayerIndex, "\\script\\vng_feature\\checkinmap.lua", "PlayerFunLib:VnCheckInCity")	
	if not nCheckMap then
		return
	end
	if nCount ~= 1 then
		Talk(1, "", "VËt phÈm bá vµo kh«ng ®óng, xin h·y kiÓm tra l¹i!")
		return
	end
	local nIDX = GetGiveItemUnit(1)
	local nQuality = GetItemQuality(nIDX)
	if nQuality ~= 1 then
		Talk(1,"","<bclr=violet>Trang BÞ Mµ Ng­¬i §Æt Vµo Kh«ng Ph¶i Trang BÞ Hoµng Kim<bclr>")
		return
	end
	local nGoldEquipIdx = GetGlodEqIndex(nIDX)
	if not tbVnGiaHanPhu.tbItem[tostring(nGoldEquipIdx)] then
		Talk(1,"","<bclr=violet>Trang BÞ Mµ Ng­¬i §Æt Vµo Kh«ng §ñ §iÒu KiÖn Gia H¹n<bclr>")
		return
	end
	local nCurItemExpiredTime = ITEM_GetExpiredTime(nIDX)
	local nCurTime = GetCurServerTime()
	if (nCurItemExpiredTime - nCurTime < 0) then
		Talk(1,"","Trang søc ®· hÕt h¹n sö dông, kh«ng thÓ gia h¹n.")
		return
	end
	if (nCurItemExpiredTime <= 0) or (nCurItemExpiredTime - nCurTime > tbVnGiaHanPhu.nExpiredTime*60) then
		Talk(1,"","<bclr=violet>ChØ Cã ThÓ Gia H¹n Trang Cã Thêi H¹n D­íi 7 Ngµy")
		return
	end
	if ConsumeEquiproomItem(1, 6,1,4383,1) ~= 1 then
		Talk(1,"","<bclr=violet>Kh«ng t×m thÊy vËt phÈm Gia H¹n Phï, gia h¹n thÊt b¹i")
		return
	end
	local strItemName = GetItemName(nIDX)
	ITEM_SetExpiredTime(nIDX, tbVnGiaHanPhu.nExpiredTime)
	SyncItem(nIDX)
	Msg2Player(format("Gia h¹n vËt phÈm <color=yellow>%s<color> thµnh c«ng, vËt phÈm cã h¹n sö dông <color=yellow>7<color> ngµy tÝnh tõ thêi ®iÓm hiÖn t¹i.", strItemName))
	tbLog:PlayerActionLog("SuDungVatPhamGiaHanPhu","Gia h¹n vËt phÈm "..strItemName, "H¹n sö dông cò cßn "..(nCurItemExpiredTime - nCurTime).." gi©y")
end

function main(nItemIDX)
dofile("script/global/g7vn/item/giahanphu/giahanphuhoangkim.lua")
	local nCheckMap = DynamicExecuteByPlayer(PlayerIndex,"\\script\\vng_feature\\checkinmap.lua","PlayerFunLib:VnCheckInCity")
	if not nCheckMap then
		return 1
	end
	GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
	return 1
end