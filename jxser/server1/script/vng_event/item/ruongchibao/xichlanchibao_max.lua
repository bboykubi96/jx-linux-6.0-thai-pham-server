Include("\\script\\vng_feature\\getgoldequip.lua")
function main(nItemIdx)
	local tb = {nSpecificItem = tbVnItemPos.WHOLE_SET, nItem2Consume = nItemIdx, nExpredTime = nLeftTime}
	local nFaction = GetLastFactionNumber()
	tbVNGetGoldEquip:ShowEquipTypeDialog(23, tb)
	return 1
end