Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbKG_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbKG_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName = "NgÚ Hµnh K˙ Thπch",										tbProp = {6,1,2125,1,0,0},nCount=1,nRate=25},
		{szName="ßi”m kinh nghi÷m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "B∂o R≠¨ng Ki’m Gia")
					end,
					nRate = 50,
		},
		{szName="ßi”m kinh nghi÷m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(10000000, "B∂o R≠¨ng Ki’m Gia")
					end,
					nRate = 20,
		},
		{szName="ßi”m kinh nghi÷m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "B∂o R≠¨ng Ki’m Gia")
					end,
					nRate = 3,
		},
		{szName="ßi”m kinh nghi÷m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(20000000, "B∂o R≠¨ng Ki’m Gia")
					end,
					nRate = 1,
		},
		{szName="ßi”m kinh nghi÷m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(25000000, "B∂o R≠¨ng Ki’m Gia")
					end,
					nRate = 1,
		},		
	},	
	["chiakhoavang"] = 
	{
		{szName = "NgÚ Hµnh K˙ Thπch",										tbProp = {6,1,2125,1,0,0},nCount=5,nRate=25},
		{szName="ßi”m kinh nghi÷m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "B∂o R≠¨ng Ki’m Gia")
					end,
					nRate = 50,
		},
		{szName="ßi”m kinh nghi÷m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(25000000, "B∂o R≠¨ng Ki’m Gia")
					end,
					nRate = 20,
		},
		{szName="ßi”m kinh nghi÷m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(30000000, "B∂o R≠¨ng Ki’m Gia")
					end,
					nRate = 5,
		},
		{szName="ßi”m kinh nghi÷m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "B∂o R≠¨ng Ki’m Gia")
					end,
					nRate = 0.5,
		},	
	},
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)	
	local tbKey1 = tbKG_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbKG_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C«n ph∂i c„ Ch◊a Kh„a Vµng ho∆c Ch◊a Kh„a Nh≠ ˝ mÌi c„ th” mÎ Æ≠Óc B∂o R≠¨ng Ki’m Gia", 1, "ß„ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("ß” b∂o Æ∂m tµi s∂n cÒa Æπi hi÷p, xin h∑y Æ” trËng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("Sˆ dÙng Ch◊a kh„a nh≠ ˝/#VnKGBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("Sˆ dÙng Ch◊a kh„a vµng/#VnKGBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "ß„ng/Oncancel")
		Say("Sˆ dÙng ch◊a kh„a Æ” mÎ r≠¨ng:", getn(tbOpt), tbOpt)
	end
	return 1
end

function Oncancel()end

function VnKGBoxNewAward(nItemIdx, strKeyType)
	print("strKeyType: ",strKeyType)
	local tbKey = tbKG_Key_Require[strKeyType]
	local tbAward = tbKG_Box_Award[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C«n ph∂i c„ Ch◊a Kh„a Vµng ho∆c Ch◊a Kh„a Nh≠ ˝ mÌi c„ th” mÎ Æ≠Óc B∂o R≠¨ng Ki’m Gia", 1, "ß„ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 30203, -1) ~= 1 then
		Say("Kh´ng t◊m th y B∂o R≠¨ng Ki’m Gia", 1, "ß„ng/no")
		return
	end	
	tbAwardTemplet:Give(tbAward, 1, {"KiemGiaMeCung", "SuDungBaoRuongKiemGia"})	
end 
