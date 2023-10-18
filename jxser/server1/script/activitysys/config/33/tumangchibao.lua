Include("\\script\\vng_feature\\getgoldequip.lua")
local tbRandomGoldEquip = {
	--{szName="Tö M·ng V« T­¬ng Ch©u Liªn",tbProp={0,1825},nCount=1,nRate=0.5,nQuality = 1,},
}
function main(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx, 1 ))
	if n_param == 10 then
		if CountFreeRoomByWH(2, 4, 1) < 1 then
			Talk(1, "", format("Xin h·y chõa <color=red>%d x %d <color>« trèng hµnh trang råi h·y nhËn th­ëng.", 2, 4))
			return 1
		end
		tbAwardTemplet:Give(%tbRandomGoldEquip, 1, {"Event_QuocKhanhVN", "SuDungTuMangChiBao"})
		return 0
	elseif n_param >= 0 and n_param <= 9 then		
		local tb = {nSpecificItem = n_param, nItem2Consume = nItemIdx}
		tb.tbLog={"Event_QuocKhanhVN","SuDungTuMangChiBao"}
		tb.tbTransLog = {strFolder = "201109_QuocKhanh/", nID = 9, strAction = "SuDungTuMangChiBao"}
		tbVNGetGoldEquip:ShowEquipBranchDialog(5,tb)
	end
	return 1
end

function GetDesc(nItem)	
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItem, 1 ))
	local tbItemName = 
	{
		--[0] = "Tö M·ng H¹ng Liªn",
	}
	szDesc = szDesc..format("<color=yellow>%s<color>", tbItemName[n_param]);
	return szDesc;
end