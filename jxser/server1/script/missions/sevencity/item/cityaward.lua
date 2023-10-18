-- Cong thanh le bao that thanh dai chien
Include("\\script\\lib\\awardtemplet.lua")

--Giíi h¹n ®iÓm kinh nghiÖm mçi ngµy lµ 50triÖu khi sö dông c¸c lo¹i b¶o r­¬ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbAward = {
		{szName="§iÓm kinh nghiÖm 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "C«ng Thµnh LÔ Bao (míi)")
					end,
					nRate = 50.00,
		},
	{szName="§iÓm kinh nghiÖm 2", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(3000000, "C«ng Thµnh LÔ Bao (míi)")
				end,
				nRate = 20,
	},
	{szName="§iÓm kinh nghiÖm 3", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(400000, "C«ng Thµnh LÔ Bao (míi)")
				end,
				nRate = 20,
	},
	{szName="§iÓm kinh nghiÖm 4", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(5000000, "C«ng Thµnh LÔ Bao (míi)")
				end,
				nRate = 0.5,
	},
	{szName="§iÓm kinh nghiÖm 5", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(7000000, "C«ng Thµnh LÔ Bao (míi)")
				end,
				nRate = 0.2,
	},
	{szName="§iÓm kinh nghiÖm 6", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(10000000, "C«ng Thµnh LÔ Bao (míi)")
				end,
				nRate = 0.1,
	},

	--{szName = "ThÇn Hµnh Phï",	tbProp = {6, 1, 1266, 1, 0, 0}, nRate = 0.1, nExpiredTime = 15 * 24 * 60},
	--{szName = "CÈm nang thay ®æi trêi ®Êt", tbProp = {6, 1, 1781, 1, 0, 0}, nRate = 5, tbParam = {60}},
	--{szName = "Tiªn Th¶o Lé ®Æc biÖt", tbProp = {6, 1, 1181, 1, 0, 0}, nRate = 1},
	--{szName = "MÆt n¹ quû ¶nh",	tbProp = {0, 11, 455, 1, 0, 0}, nRate = 0.1, nExpiredTime = 15 * 24 * 60},
	--{szName = "MÆt n¹ cöu mÖnh", tbProp = {0, 11, 454, 1, 0, 0}, nRate = 0.1, nExpiredTime = 15 * 24 * 60},
	--{szName = "Qu¶ Hoµng Kim", tbProp={6,1,907,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.05},
	{szName = "QuÕ Hoa Töu", tbProp={6,1,125,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	{szName = "§¹i Lùc hoµn", tbProp={6,0,3,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	{szName = "Phi Tèc hoµn", tbProp={6,0,6,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	--{szName = "ChiÕn m· B«n Tiªu", tbProp = {0, 10, 6, 1, 5, 0}, nRate = 0.05,nExpiredTime = 7 * 24 * 60},
	--{szName = "ThÇn m· Phiªn Vò",	tbProp = {0, 10, 7, 1, 0, 0}, nRate = 0.01, nExpiredTime = 30 * 24 * 60},
	--{szName = "BÝ kÝp Hãa c«ng ®¹i ph¸p",	tbProp = {6, 1, 4276, 1, 0, 0}, nRate = 1},
	--{szName = "NhÊt kû cµn kh«n phï", tbProp = {6, 1, 2126, 1, 0, 0}, nRate = 0.01, nExpiredTime = 15 * 24 * 60},
	--{szName= "Hång ¶nh ThÈm viªn uyÓn", tbProp={0,204},nCount=1,nRate=1,nQuality = 1,nExpiredTime=30 * 24 * 60,},
	--{szName= "Hång ¶nh kiÕm bµi", tbProp={0,205},nCount=1,nRate=1,nQuality = 1,nExpiredTime=30 * 24 * 60,},
	--{szName= "Hång ¶nh môc tóc", tbProp={0,206},nCount=1,nRate=1,nQuality = 1,nExpiredTime=30 * 24 * 60,},
	--{szName= "Hång ¶nh tô chiªu", tbProp={0,207},nCount=1,nRate=1,nQuality = 1,nExpiredTime=30 * 24 * 60,},


--{szName = "§å Phæ Tö M·ng Kh«i", 	tbProp = {6, 1, 2714, 1, 0, 0}, nRate = 0.01},
--{szName = "§å Phæ Tö M·ng Y", 	tbProp = {6, 1, 2715, 1, 0, 0}, nRate = 0.01},
--{szName = "§å Phæ Tö M·ng Yªu §¸i", 	tbProp = {6, 1, 2717, 1, 0, 0}, nRate = 0.01},
--{szName = "§å Phæ Tö M·ng Hé UyÓn",	tbProp = {6, 1, 2718, 1, 0, 0}, nRate = 0.01},
--{szName = "§å Phæ Tö M·ng H¹ng Liªn",	tbProp = {6, 1, 2719, 1, 0, 0}, nRate = 0.01},
--{szName = "§å Phæ Tö M·ng Béi",		tbProp = {6, 1, 2720, 1, 0, 0}, nRate = 0.01},
--{szName = "§å Phæ Tö M·ng Hµi",		tbProp = {6, 1, 2716, 1, 0, 0}, nRate = 0.01},
--{szName = "§å Phæ Tö M·ng Th­îng Giíi ChØ",	tbProp = {6, 1, 2721, 1, 0, 0}, nRate = 0.01},
--{szName = "§å Phæ Tö M·ng H¹ Giíi ChØ",	tbProp = {6, 1, 2722, 1, 0, 0}, nRate = 0.01},
--{szName = "§å Phæ Tö M·ng KhÝ Giíi",	tbProp = {6, 1, 2723, 1, 0, 0}, nRate = 0.01},
--{szName = "Tö M·ng LÖnh",			tbProp = {6, 1, 2350, 1, 0, 0}, nRate = 0.01},
--{szName = "HuyÒn Viªn LÖnh",			tbProp = {6, 1, 2351, 1, 0, 0}, nRate = 0.10},
--{szName = "MÆt n¹ Nguyªn so¸i",	tbProp = {0, 11, 447, 1, 0, 0}, nRate = 0.10},
--{szName = "B¸ch Niªn Tr©n Lé",		tbProp = {6, 1, 2266, 1, 0, 0}, nRate = 0.05},
--{szName = "V¹n Niªn Tr©n Lé",		tbProp = {6, 1, 2268, 1, 0, 0}, nRate = 0.02},
--{szName = "Thiªn Niªn Tr©n Lé",		tbProp = {6, 1, 2267, 1, 0, 0}, nRate = 0.01},	
--Giíi h¹n ®iÓm kinh nghiÖm mçi ngµy lµ 50triÖu khi sö dông c¸c lo¹i b¶o r­¬ng - Modified by DinhHQ - 20110428
--	{nExp = 1500000,  nRate = 48.02},
--	{nExp = 2000000,  nRate = 30},
--	{nExp = 5000000,  nRate = 5},
--	{nExp = 10000000, nRate	= 3},
--	{nExp = 20000000, nRate	= 2},
--	{nExp = 50000000, nRate	= 1},	
--{szName = "Ch×a Khãa Nh­ ý",		tbProp = {6, 1, 2744, 1, 0, 0}, nRate = 0.1},
--{szName = "Hçn Nguyªn Linh Lé",		tbProp = {6, 1, 2312, 1, 0, 0}, nRate = 0.01},
--{szName = "Ngäc Qu¸n",			tbProp = {6, 1, 2311, 1, 0, 0}, nRate = 0.01},

}

function main(nItemIndex)
dofile("script/missions/sevencity/item/cityaward.lua")
	if (CalcFreeItemCellCount() < 10) then
		Say("Hµnh trang Ýt nhÊt ph¶i cã <color=red>10<color> « trèng míi nhËn ®­îc phÇn th­ëng.")
		return 1
	end
--molebaoct()
	--tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseCityAward"})
	--return 0
	local ran = random(1,30)
	if ran==1 or ran==11 or ran==12 or ran==13 or ran==18 or ran==19 or ran==17 or (ran>=20 and ran<=25) then
		local tien = random(1,5)
		Earn(tien*100000)
	elseif ran==2  then 
		tbAwardTemplet:GiveAwardByList({{szName = "ThiÕt La H¸n",tbProp={6,1,23,1,1},nCount=1},}, "test", 1);
	elseif ran==3 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1},nCount=1},}, "test", 1);
	elseif ran==4 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Tiªn Th¶o Lé",tbProp={6,1,71,1,1},nCount=1},}, "test", 1);
	elseif ran==5 or ran==14 or ran==20 or ran==26 or ran==27 or ran==29 or ran==30 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Phóc Duyªn",tbProp={6,1,122,1,1},nCount=1},}, "test", 1);
	elseif ran==6 or ran==15 or ran==28 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Phóc Duyªn",tbProp={6,1,123,1,1},nCount=1},}, "test", 1);
	elseif ran==7 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Phóc Duyªn",tbProp={6,1,124,1,1},nCount=1},}, "test", 1);
	elseif ran==8 or ran==16 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Tói Danh Väng",tbProp={6,1,4338,1,1},nCount=1},}, "test", 1);
	elseif ran==9 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Thiªn S¬n B¶o Lé",tbProp={6,1,72,1,1},nCount=1},}, "test", 1);
	elseif ran==10 then 
		tbAwardTemplet:GiveAwardByList({{szName = "QuÕ Hoa Töu",tbProp={6,1,125,1,1},nCount=1},}, "test", 1);
	end
	
end

function test()
	local rate = 0
	for i = 1, getn(tbAward) do
		rate = rate + tbAward[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("total rate is wrong", rate))
	end
end


function molebaoct()
local s = random(1,4)

if s==1 then
Earn(200000)
end;
if s==2 then
Earn(300000)
end;
if s==3 then
Earn(500000)
end;
if s==4 then
Earn(700000)
end;
end
