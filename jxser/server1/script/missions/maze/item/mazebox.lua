Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Chóc mõng cao thñ <color=yellow>%s<color=green> ®· nhËn ®­îc <color=yellow><%s><color=green> tõ <color=yellow><B¶o R­¬ng KiÕm Gia><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
tbKG_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 4877},
}
tbKG_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName="§iÓm kinh nghiÖm 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "B¶o R­¬ng KiÕm Gia")
					end,
					nRate = 52,
		},
		{szName="§iÓm kinh nghiÖm 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "B¶o R­¬ng KiÕm Gia")
					end,
					nRate = 30,
		},
		{szName="§iÓm kinh nghiÖm 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "B¶o R­¬ng KiÕm Gia")
					end,
					nRate = 10,
		},
		{szName="§iÓm kinh nghiÖm 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(4000000, "B¶o R­¬ng KiÕm Gia")
					end,
					nRate = 5,
		},
		{szName="§iÓm kinh nghiÖm 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "B¶o R­¬ng KiÕm Gia")
					end,
					nRate = 3,
		},		
	},	
	["chiakhoavang"] = 
	{	
		{szName="B¶o R­¬ng Tinh S­¬ng Kh«i",tbProp={6,1,6021,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate=0.004, CallBack = _Message},
		{szName="B¶o R­¬ng Tinh S­¬ng Th­îng Giíi",tbProp={6,1,6022,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="B¶o R­¬ng Tinh S­¬ng Hµi",tbProp={6,1,6027,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="B¶o R­¬ng Tinh S­¬ng Yªu §¸i",tbProp={6,1,6024,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="B¶o R­¬ng Tinh S­¬ng Hé UyÓn",tbProp={6,1,6023,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.002, CallBack = _Message},		
		{szName="Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,0,0},nCount=1,nRate=0.005,nExpiredTime=43200},
              {szName="Xu  ",tbProp={4,417,1,1,0,0},nCount=50,nRate=35, CallBack = _Message},
		{szName="Xu  ",tbProp={4,417,1,1,0,0},nCount=100,nRate=20, CallBack = _Message},
              {szName="Xu  ",tbProp={4,417,1,1,0,0},nCount=500,nRate=10, CallBack = _Message},		
		{szName="Hoµng Kim Ên (C­êng hãa)",tbProp={0,4881},nCount=1,nRate=0.15,nQuality = 1,nExpiredTime=10080,},
		{szName="Hoµng Kim Ên (Nh­îc hãa)",tbProp={0,4892},nCount=1,nRate=0.15,nQuality = 1,nExpiredTime=10080,},
              {szName="§iÓm kinh nghiÖm 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 35, CallBack = _Message,
		},
		{szName="§iÓm kinh nghiÖm 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000000, "B¶o r­¬ng v­ît ¶i")
					end,
					nRate = 25, CallBack = _Message,
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
		Say("CÇn ph¶i cã Ch×a Khãa Vµng hoÆc Ch×a Khãa Nh­ ý míi cã thÓ më ®­îc B¶o R­¬ng KiÕm Gia", 1, "§ãng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("Sö dông Ch×a khãa nh­ ý/#VnKGBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("Sö dông Ch×a khãa vµng/#VnKGBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "§ãng/Oncancel")
		Say("Sö dông ch×a khãa ®Ó më r­¬ng:", getn(tbOpt), tbOpt)
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
		Say("CÇn ph¶i cã Ch×a Khãa Vµng hoÆc Ch×a Khãa Nh­ ý míi cã thÓ më ®­îc B¶o R­¬ng KiÕm Gia", 1, "§ãng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 5055, -1) ~= 1 then
		Say("Kh«ng t×m thÊy B¶o R­¬ng KiÕm Gia", 1, "§ãng/no")
		return
	end	
	tbAwardTemplet:Give(tbAward, 1, {"KiemGiaMeCung", "SuDungBaoRuongKiemGia"})	
end 
