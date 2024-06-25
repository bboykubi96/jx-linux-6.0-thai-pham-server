Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

function GetDesc(nItem)
	return ""
end

function main(nItem)
	if (CalcFreeItemCellCount() < 1) then
		Talk(1, "", "<#>Xin h�y s�p x�p l�i h�nh trang �t nh�t c�n tr�ng 1 � r�i h�y m� B�o R��ng")
		return 1
	end
	local nCount = CalcItemCount(3, 6, 1, 2744, -1)
	if nCount >= 1 then
		--Fix l�i kh�ng m�t ch�a kh�a nh� � khi b� trong r��ng - Modified by DinhHQ -20110812
    		if ConsumeItem(3, 1, 6, 1, 2744, -1) ~= 1 then
    			Msg2Player("C�n c� m�t Ch�a Kh�a Nh� Y m�i m� ���c B�o R��ng")
			return 1
    		end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--�۳���ʹ����
    	local tbAward = 
    	{
		
		{szName = "Ng� H�nh K� Th�ch",										tbProp = {6,1,2125,1,0,0},nCount=1,nRate=25},

		{szName="10.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(5000000, "T�n S� B�o R��ng")
			end,
			nRate = 40,
		},
		{szName="15.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(8000000, "T�n S� B�o R��ng")
			end,
			nRate = 30,
		},
		{szName="18.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(9000000, "T�n S� B�o R��ng")
			end,
			nRate = 4,
		},
		{szName="20.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(10000000, "T�n S� B�o R��ng")
			end,
			nRate = 1,
		},
		--{szName = "Thi�n B�o Kh� L�nh", tbProp = {6, 1,2813,1,0,0}, nRate = 0.1},
    	}
    	
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "T�n S� B�o R��ng"))
    	return
	else
		Msg2Player("C�n c� m�t Ch�a Kh�a Nh� Y m�i m� ���c B�o R��ng")
		return 1
	end
end
