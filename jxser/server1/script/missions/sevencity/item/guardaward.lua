-- ve tru le bao that thanh dai chien
Include("\\script\\lib\\awardtemplet.lua")

--Giíi h¹n ®iÓm kinh nghiÖm mçi ngµy lµ 50triÖu khi sö dông c¸c lo¹i b¶o r­¬ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbAward = {

--	{szName = "§å Phæ Tö M·ng Hµi", 		tbProp = {6, 1, 2716, 1, 0, 0}, 	nRate = 0.12},
--	{szName = "§å Phæ Tö M·ng Yªu §¸i", 		tbProp = {6, 1, 2717, 1, 0, 0}, 	nRate = 0.12},
--	{szName = "§å Phæ Tö M·ng Hé UyÓn", 		tbProp = {6, 1, 2718, 1, 0, 0}, 	nRate = 0.12},
--	{szName = "Tö Tinh Kho¸ng Th¹ch", 			tbProp = {6, 1, 30040, 1, 0, 0}, 	nRate = 44},
--	{szName = "Tinh LuyÖn Th¹ch", 			tbProp = {6, 1, 2280, 1, 0, 0}, 	nRate = 27.34},
--	{szName = "ThÇn Quy Bæ HuyÕt §¬n (tiÓu)", 	tbProp = {6, 1, 2583, 1, 0, 0}, 	nRate = 18.3,	nCount = 10},
--	{szName = "ThÇn Quy Bæ HuyÕt §¬n (trung)",	tbProp = {6, 1, 2582, 1, 0, 0},		nRate = 10,		nCount = 10},
--Giíi h¹n ®iÓm kinh nghiÖm mçi ngµy lµ 50triÖu khi sö dông c¸c lo¹i b¶o r­¬ng - Modified by DinhHQ - 20110428	
--	{szName="§iÓm kinh nghiÖm", nExp=5000000, nRate=30},
--	{szName="§iÓm kinh nghiÖm", nExp=10000000, nRate=20},
--	{szName="§iÓm kinh nghiÖm", nExp=15000000, nRate=15},
--	{szName="§iÓm kinh nghiÖm", nExp=20000000, nRate=10},
--{szName="B¸ch Niªn Tr©n Lé", tbProp={6,1,2266,1,0,0}, nRate=5},
--{szName="V¹n Niªn Tr©n Lé", tbProp={6,1,2268,1,0,0}, nRate=2},
--{szName="Thiªn Niªn Tr©n Lé", tbProp={6,1,2267,1,0,0}, nRate=1},

	{szName="§iÓm kinh nghiÖm 1", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(2000000, "VÖ Trô LÔ Bao")
				end,
				nRate = 50,
	},
	{szName="§iÓm kinh nghiÖm 2", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(3000000, "VÖ Trô LÔ Bao")
				end,
				nRate = 30,
	},
	{szName="§iÓm kinh nghiÖm 3", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(4000000, "VÖ Trô LÔ Bao")
				end,
				nRate = 5,
	},
	{szName="§iÓm kinh nghiÖm 4", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(5000000, "VÖ Trô LÔ Bao")
				end,
				nRate = 1,
	},
	--{szName = "CÈm nang thay ®æi trêi ®Êt", tbProp={6,1,1781,1,0,0}, tbParam={60}, nRate=5},
	{szName = "Tiªn Th¶o Lé ®Æc biÖt", tbProp={6,1,1181,1,0,0}, nRate=0.},
	--{szName = "ThÇn Hµnh Phï", tbProp={6,1,1266,1,0,0}, nRate=0.1, nExpiredTime=15 * 24 * 60},
	--{szName = "ChiÕn m· B«n Tiªu", tbProp = {0, 10, 6, 1, 5, 0}, nRate = 0.05,nExpiredTime = 7 * 24 * 60},
	--{szName = "BÝ kÝp Hãa c«ng ®¹i ph¸p",	tbProp = {6, 1, 4276, 1, 0, 0}, nRate = 1},
	--{szName = "§iÓm cèng hiÕn bang héi", nVngContribute=20000,nCount=1, nRate = 5},
	--{szName = "§iÓm cèng hiÕn bang héi", nVngContribute=50000,nCount=1, nRate = 3},
	--{szName = "§iÓm cèng hiÕn bang héi", nVngContribute=100000,nCount=1, nRate = 1},
	--{szName = "§¹i Lùc hoµn", tbProp={6,0,3,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	--{szName = "Phi Tèc hoµn", tbProp={6,0,6,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	--{szName = "Qu¶ Huy Hoµng (thÊp)", tbProp={6,1,904,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 1},
	--{szName = "Qu¶ Huy Hoµng (trung)", tbProp={6,1,905,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	--{szName = "Qu¶ Huy Hoµng (cao)", tbProp={6,1,906,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.1},
	--{szName = "Qu¶ Hoµng Kim", tbProp={6,1,907,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.05},
	--{szName = "QuÕ Hoa Töu", tbProp={6,1,125,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	--{szName = "§¹i B¹ch C©u hoµn", tbProp={6,1,130,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.01},
	--{szName = "LÖnh Bµi Thñy TÆc",tbProp={6,1,2745,1,0,0},nCount=1,nRate=2,nExpiredTime=20160},
}

function main()
	if (CalcFreeItemCellCount() < 1) then
		Say("Hµnh trang Ýt nhÊt ph¶i cã <color=red>1<color> « trèng míi nhËn ®­îc phÇn th­ëng.")
		return 1
	end
	tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseGuardAward"})
	return 0
end

function test()
	local rate = 0
	for i = 1, getn(tbAward) do
		rate = rate + tbAward[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("invalid rate: %d", rate))
	end
end

