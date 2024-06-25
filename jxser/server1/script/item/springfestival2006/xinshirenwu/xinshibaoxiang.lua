Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

function GetDesc(nItem)
	return ""
end

function main(nItem)
	if (CalcFreeItemCellCount() < 1) then
		Talk(1, "", "<#>Xin h·y s¾p xÕp l¹i hµnh trang Ýt nhÊt cßn trèng 1 « råi h·y më B¶o R­¬ng")
		return 1
	end
	local nCount = CalcItemCount(3, 6, 1, 2744, -1)
	if nCount >= 1 then
		--Fix lçi kh«ng mÊt ch×a khãa nh­ ý khi bá trong r­¬ng - Modified by DinhHQ -20110812
    		if ConsumeItem(3, 1, 6, 1, 2744, -1) ~= 1 then
    			Msg2Player("CÇn cã mét Ch×a Khãa Nh­ Y míi më ®­îc B¶o R­¬ng")
			return 1
    		end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--¿Û³ýÐÅÊ¹±¦Ïä
    	local tbAward = 
    	{
		
		{szName = "Ngò Hµnh Kú Th¹ch",										tbProp = {6,1,2125,1,0,0},nCount=1,nRate=25},

		{szName="10.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(5000000, "TÝn Sø B¶o R­¬ng")
			end,
			nRate = 40,
		},
		{szName="15.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(8000000, "TÝn Sø B¶o R­¬ng")
			end,
			nRate = 30,
		},
		{szName="18.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(9000000, "TÝn Sø B¶o R­¬ng")
			end,
			nRate = 4,
		},
		{szName="20.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(10000000, "TÝn Sø B¶o R­¬ng")
			end,
			nRate = 1,
		},
		--{szName = "Thiªn B¶o Khè LÖnh", tbProp = {6, 1,2813,1,0,0}, nRate = 0.1},
    	}
    	
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "TÝn Sø B¶o R­¬ng"))
    	return
	else
		Msg2Player("CÇn cã mét Ch×a Khãa Nh­ Y míi më ®­îc B¶o R­¬ng")
		return 1
	end
end
