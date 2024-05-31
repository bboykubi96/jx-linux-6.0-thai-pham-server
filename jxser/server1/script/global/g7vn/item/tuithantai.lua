Include("\\script\\lib\\awardtemplet.lua")

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/tuithantai.lua")
	do Say("Tói thÇn tµi T¹m thêi ch­a sö ®ông d­îc") return end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tbAward = 
	{	
			{szName="An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={0,164},nCount=1,nRate=2,nQuality = 1},
			{szName="An Bang Cóc Hoa Th¹ch ChØ hoµn	",tbProp={0,165},nCount=1,nRate=7,nQuality = 1},
			{szName="An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={0,166},nCount=1,nRate=7,nQuality = 1},
			{szName="An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={0,167},nCount=1,nRate=7,nQuality = 1},

			{szName = "Ngùa ChiÕu D¹ Ngäc S­ Tö", tbProp={0,10,5,5,0,0,0}, nCount=1,nRate=7},
			{szName = "Ngùa Phi V©n", tbProp={0,10,8,1,5,0,0}, nCount=1,nRate=7},
			{szName = "Ngùa B«n Tiªu", tbProp={0,10,6,1,5,0,0}, nCount=1,nRate=7},
			{szName = "Ngùa Phiªn Vò", tbProp={0,10,7,1,5,0,0}, nCount=1,nRate=2},

			{szName= "Hång ¶nh ThÈm viªn uyÓn", tbProp={0,204},nCount=1,nRate=2,nQuality = 1,},
			{szName= "Hång ¶nh kiÕm bµi", tbProp={0,205},nCount=1,nRate=7,nQuality = 1,},
			{szName= "Hång ¶nh môc tóc", tbProp={0,206},nCount=1,nRate=7,nQuality = 1,},
			{szName= "Hång ¶nh tô chiªu", tbProp={0,207},nCount=1,nRate=7,nQuality = 1,},

			{szName = "§éng s¸t B¹ch Kim §iªu Long Giíi", tbProp={0,143}, nQuality = 1, nCount=1,nRate=7},
			{szName = "§éng s¸t B¹ch Ngäc Cµn Kh«n Béi", tbProp={0,144}, nQuality = 1, nCount=1,nRate=2},
			{szName = "§éng s¸t B¹ch Kim Tó Phông Giíi", tbProp={0,145}, nQuality = 1, nCount=1,nRate=7},
			{szName = "§éng s¸t PhØ Thóy Ngäc H¹ng Liªn", tbProp={0,146}, nQuality = 1, nCount=1,nRate=7},

			{szName = "§iÓm Kinh NghiÖm", nExp=200000000,nRate=10},
	}
	tbAwardTemplet:Give(tbAward, 1, {"MoTuiThanTai", "MoTuiThanTai"})

end
