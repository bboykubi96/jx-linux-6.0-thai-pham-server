
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")


NgayBatDauEventHLW = 20101114
NgayHetHanEventHLW = 20251105
function main()
	dofile("script/global/g7vn/event/0106/hopquahoatdong.lua")

		local nDate = tonumber(date("%Y%m%d"))
		if nDate <= NgayBatDauEventHLW then
			Say("T¹m thêi ch­a tíi thêi gian cña Event vui lßng ®îi")
			return 1
		end
		if nDate >= NgayHetHanEventHLW then
			Say("Thêi gian event ®· kÕt thóc")
			return 1
		end
	local tbthuongitem = {
		
		
			{szName = "K�o Kim B�ng Tinh",tbProp={6,1,1628,1,0,0},nCount=1,nRate=20},
			{szName = "K�o M�c B�ng Tinh",tbProp={6,1,1629,1,0,0},nCount=1,nRate=20},
			{szName = "K�o Th�y B�ng Tinh",tbProp={6,1,1630,1,0,0},nCount=1,nRate=20},
			{szName = "K�o H�a B�ng Tinh",tbProp={6,1,1631,1,0,0},nCount=1,nRate=20},
			{szName = "K�o Th� B�ng Tinh",tbProp={6,1,1632,1,0,0},nCount=1,nRate=20},
		
}

--if GetAccount()=="boquyx1234" then
	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	return 0
--end

end

