IncludeLib("ITEM")
Include("\\script\\lib\\log.lua")
Include("\\script\\battles\\battlehead.lua")
tbVnGiaHanPhu = {}
tbVnGiaHanPhu.tbItem = {
["3953"]="Ngò Hµnh Ên",
["3991"]="Xuyªn Y Ph¸ Gi¸p",
}


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
		Talk(1, "", "Trang bÞ ng­¬i ®Æt vµo kh«ng ph¶i lµ trang bÞ hoµng kim")
		return
	end
	local nGoldEquipIdx = GetGlodEqIndex(nIDX)
	if not tbVnGiaHanPhu.tbItem[tostring(nGoldEquipIdx)] then
		Talk(1, "", "Trang bÞ ng­¬i ®Æt vµo kh«ng ph¶i lµ trang søc, xin h·y kiÓm tra l¹i!")
		return
	end
	local nCurItemExpiredTime = ITEM_GetExpiredTime(nIDX)
	local nCurTime = GetCurServerTime()
	local nTimeLeftCount=(nCurItemExpiredTime - nCurTime)/(60*60*24)
	if (nCurItemExpiredTime - nCurTime < 0) then
		Talk(1, "", "Trang søc ®· hÕt h¹n sö dông, kh«ng thÓ gia h¹n.")
		return
	end

	if ConsumeEquiproomItem(1, 6,1,4907,1) ~= 1 then
		Talk(1, "", "Kh«ng t×m thÊy vËt phÈm Gia H¹n Phï, gia h¹n thÊt b¹i.")
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

	Msg2Player(format("Gia h¹n vËt phÈm <color=yellow>%s<color> thµnh c«ng, vËt phÈm cã h¹n sö dông <color=yellow>30<color> ngµy tÝnh tõ thêi ®iÓm hiÖn t¹i.", strItemName))
	tbLog:PlayerActionLog("SuDungVatPhamGiaHanPhu", "Gia h¹n vËt phÈm "..strItemName, "H¹n sö dông cò cßn "..(nCurItemExpiredTime - nCurTime).." gi©y")
end

function main(nItemIDX)
dofile("script/vng_event/item/giahanphu/giahanphu4.lua")
	local nCheckMap = DynamicExecuteByPlayer(PlayerIndex, "\\script\\vng_feature\\checkinmap.lua", "PlayerFunLib:VnCheckInCity")
	if not nCheckMap then
		return 1
	end
	GiveItemUI("Gia H¹n Phï", "Xin h·y bá 11 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
	return 1
end