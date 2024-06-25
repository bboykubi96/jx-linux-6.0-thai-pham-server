Include("\\script\\lib\\awardtemplet.lua")

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/volamg7lebao.lua")

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tbAward = 
	{	
			{szName = "Cµn Kh«n Giíi ChØ", tbProp={0,428}, nQuality = 1, nCount=1,nRate=10, nExpiredTime = 20160},
			{szName = "ThÇn m· XÝch Long C©u", tbProp={0,10,9,10,0,0,0}, nCount=1,nRate=10, nExpiredTime = 20160},

			{szName = "[Cùc phÈm] §éng S¸t B¹ch Kim §iªu Long Giíi", tbProp={0,494}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[Cùc phÈm] §éng S¸t B¹ch Ngäc Cµn Kh«n Béi", tbProp={0,495}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[Cùc phÈm] §éng S¸t B¹ch Kim Tó Phông Giíi", tbProp={0,496}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[Cùc phÈm] §éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn", tbProp={0,497}, nQuality = 1, nCount=1,nRate=10},

			{szName = "[Cùc phÈm] §Þnh Quèc Thanh Sa Tr­êng Sam", tbProp={0,403}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[Cùc phÈm] §Þnh Quèc Thanh Sa Ph¸t Qu¸n", tbProp={0,404}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[Cùc phÈm] §Þnh Quèc XÝch Quyªn NhuyÔn Ngoa", tbProp={0,405}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[Cùc phÈm] §Þnh Quèc Tö §»ng Hé UyÓn", tbProp={0,406}, nQuality = 1, nCount=1,nRate=10},
			{szName = "[Cùc phÈm] §Þnh Quèc Ng©n Tµm Yªu §¸i	", tbProp={0,407}, nQuality = 1, nCount=1,nRate=10},

			--{szName = "ThÇn m· XÝch Long C©u", tbProp={0,10,11,10,0,0,0}, nCount=1,nRate=11, nExpiredTime = 20160},
			--{szName = "ThÇn m· XÝch Long C©u", tbProp={0,10,12,10,0,0,0}, nCount=1,nRate=11, nExpiredTime = 20160},
			--{szName = "ThÇn m· XÝch Long C©u", tbProp={0,10,13,10,0,0,0}, nCount=1,nRate=11, nExpiredTime = 20160},
			--{szName = "ThÇn m· XÝch Long C©u", tbProp={0,10,14,10,0,0,0}, nCount=1,nRate=11, nExpiredTime = 20160},
			--{szName = "ThÇn m· XÝch Long C©u", tbProp={0,10,15,10,0,0,0}, nCount=1,nRate=11, nExpiredTime = 20160},
			
	}
	tbAwardTemplet:Give(tbAward, 1, {"MoLeBaoG7", "MoLeBaoG7"})

end
