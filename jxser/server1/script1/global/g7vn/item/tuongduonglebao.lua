Include("\\script\\lib\\awardtemplet.lua")

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/tuongduonglebao.lua")
	--do Say("T­¬ng d­¬ng lÔ bao T¹m thêi ch­a sö ®ông d­îc") return end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tbAward = 
	{	
			--{szName = "Vi Minh Chi B¶o",tbProp={6,1,4319,1,0,0},nCount=1,nRate=10},
			--{szName = "Cµn Kh«n Chi B¶o",tbProp={6,1,4324,1,0,0},nCount=1,nRate=50},
			--{szName="ThÊt tinh th¹ch",tbProp={6,1,4334,1,0,0},nCount=1,nRate=10},

			{szName = "Hång ¶nh viªn uyÓn", tbProp={0,204},nCount=1,nRate=1,nQuality = 1,nExpiredTime=7 * 24 * 60,},
			{szName = "Hång ¶nh kiÕm bµi", tbProp={0,205},nCount=1,nRate=1,nQuality = 1,nExpiredTime=7 * 24 * 60,},
			{szName = "Hång ¶nh môc tóc", tbProp={0,206},nCount=1,nRate=1,nQuality = 1,nExpiredTime=7 * 24 * 60,},
			{szName = "Hång ¶nh tô chiªu", tbProp={0,207},nCount=1,nRate=1,nQuality = 1,nExpiredTime=7 * 24 * 60,},
			{szName = "ThÇn m· Phiªn Vò",	tbProp = {0, 10, 7, 1, 0, 0}, nRate = 0.01, nExpiredTime = 7 * 24 * 60},

			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=1,nRate=40},
			{szName = "§iÓm Kinh NghiÖm", nExp=5000000,nRate=40},
			{szName = "§iÓm Kinh NghiÖm", nExp=10000000,nRate=10},
			{szName = "§iÓm Kinh NghiÖm", nExp=15000000,nRate=3},

			{szName = "§iÓm Kinh NghiÖm", nExp=20000000,nRate=1},
			{szName = "§iÓm Kinh NghiÖm", nExp=25000000,nRate=1},
	}
	tbAwardTemplet:Give(tbAward, 1, {"MoTDLeBao", "MoTDLeBao"})

end
