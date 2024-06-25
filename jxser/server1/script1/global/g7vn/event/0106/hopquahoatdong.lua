
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
			Say("TÂ¹m thÃªi chÂ­a tÃ­i thÃªi gian cÃ±a Event vui lÃŸng Â®Ã®i")
			return 1
		end
		if nDate >= NgayHetHanEventHLW then
			Say("ThÃªi gian event Â®Â· kÃ•t thÃ³c")
			return 1
		end
	local tbthuongitem = {
		
		
			{szName = "KÑo Kim B¨ng Tinh",tbProp={6,1,1628,1,0,0},nCount=1,nRate=20},
			{szName = "KÑo Méc B¨ng Tinh",tbProp={6,1,1629,1,0,0},nCount=1,nRate=20},
			{szName = "KÑo Thñy B¨ng Tinh",tbProp={6,1,1630,1,0,0},nCount=1,nRate=20},
			{szName = "KÑo Háa B¨ng Tinh",tbProp={6,1,1631,1,0,0},nCount=1,nRate=20},
			{szName = "KÑo Thæ B¨ng Tinh",tbProp={6,1,1632,1,0,0},nCount=1,nRate=20},
		
}

--if GetAccount()=="boquyx1234" then
	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	return 0
--end

end

