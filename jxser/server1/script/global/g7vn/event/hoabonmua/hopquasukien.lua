
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")


NgayBatDauEventHLW = 20181114
NgayHetHanEventHLW = 20191105
function main()
	dofile("script/global/g7vn/event/hoabonmua/hopquasukien.lua")

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
		

			{szName = "Hoa Mai",tbProp={6,1,30325,1,0,0},nCount=1, nRate=25,nExpiredTime=10080},
			{szName = "Hoa Ph­îng",tbProp={6,1,30326,1,0,0},nCount=1,nRate=25,nExpiredTime=10080},
			{szName = "Hoa G¹o",tbProp={6,1,30327,1,0,0},nCount=1,nRate=25,nExpiredTime=10080},
			{szName = "Hoa Th«ng",tbProp={6,1,30328,1,0,0},nCount=1,nRate=25,nExpiredTime=10080},
		
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	return 0
end

