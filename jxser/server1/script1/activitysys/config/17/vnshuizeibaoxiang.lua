Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Chóc mõng cao thñ <color=yellow>%s<color=green> ®· nhËn ®­îc <color=yellow><%s><color=green> tõ <color=yellow><B¶o R­¬ng Thñy TÆc><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbPirate_Box_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbPirateBoxNewAward = 
{	
	["chiakhoanhuy"] = 
	{
		--{szName = "Ngò Hµnh Kú Th¹ch",							tbProp = {6,1,2125,1,0,0},nCount=3,nRate=25},
		--{szName = "NÕn B¸t tr©n phóc nguyÖt",					tbProp = {6, 1, 1817, 1, 0, 0},nCount=7,nRate=4},	

		{szName = "Tiªn Th¶o Lé ®Æc biÖt",							tbProp={6,1,1181,1,0,0},nCount=1,nRate=1.2},
		{szName = "Tiªn Th¶o Lé",									tbProp={6,1,71,1,0,0},nCount=1,nRate=20.8},
		{szName = "Tö thñy tinh",										tbProp={4,239,1,1,0,0},nCount=1,nRate=9},
		{szName = "Lam thñy tinh",									tbProp={4,238,1,1,0,0},nCount=1,nRate=9},
		{szName = "Lôc thñy tinh",										tbProp={4,240,1,1,0,0},nCount=1,nRate=9},
		{szName = "§å phæ Hoµng Kim - §Þnh Quèc ¤ Tr­êng Sam",tbProp={6,1,383,1,0,0},nCount=1,nRate=0.1},
		{szName = "§å phæ Hoµng Kim - An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={6,1,391,1,0,0},nCount=1,nRate=0.1},
		{szName = "§iÓm kinh nghiÖm 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "B¶o R­¬ng Thñy TÆc")
					end,
					nRate = 31,
		},
		{szName="§iÓm kinh nghiÖm 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1500000, "B¶o R­¬ng Thñy TÆc")
					end,
					nRate = 20,
		},
		{szName="§iÓm kinh nghiÖm 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "B¶o R­¬ng Thñy TÆc")
					end,
					nRate = 10,
		},
	},	

	["chiakhoavang"] = 
	{
		--{szName = "Ngò Hµnh Kú Th¹ch",							tbProp = {6,1,2125,1,0,0},nCount=5,nRate=30},
		
		--{szName = "Trang bÞ ®éng s¸t",			tbProp = {0,143},nQuality = 1,nCount=1,nRate=3},
		--{szName = "Trang bÞ ®éng s¸t",			tbProp = {0,144},nQuality = 1,nCount=1,nRate=3},
		--{szName = "Trang bÞ ®éng s¸t",			tbProp = {0,145},nQuality = 1,nCount=1,nRate=3},
		--{szName = "Trang bÞ ®éng s¸t",			tbProp = {0,146},nQuality = 1,nCount=1,nRate=3},

		{szName="§iÓm kinh nghiÖm 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1500000, "B¶o R­¬ng Thñy TÆc")
					end,
					nRate = 40,
		},
		{szName="§iÓm kinh nghiÖm 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2500000, "B¶o R­¬ng Thñy TÆc")
					end,
					nRate = 10,
		},
		{szName="§iÓm kinh nghiÖm 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "B¶o R­¬ng Thñy TÆc")
					end,
					nRate = 5,
		},
		{szName="§iÓm kinh nghiÖm 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(8000000, "B¶o R­¬ng Thñy TÆc")
					end,
					nRate = 2,
		},
			{szName="§iÓm kinh nghiÖm 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(9000000, "B¶o R­¬ng Thñy TÆc")
					end,
					nRate = 0.5,
		},
			{szName="§iÓm kinh nghiÖm 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(10000000, "B¶o R­¬ng Thñy TÆc")
					end,
					nRate = 0.2,
		},
	},	
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function VnPirateBox_main(nIndexItem)

	--dofile("script/activitysys/config/17/vnshuizeibaoxiang.lua")
	--dofile("script/vng_event/change_request_baoruong/exp_award.lua")

	--do Say("T¹m thêi ch­a sö ®ông d­îc") return end

	local SLSD5LoaiBaoRuong = 5
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(1406) ~= nDate ) then
		SetTask(1406, nDate)
		SetTask(1407, 0)
	end

	if ( GetTask(1407) >= SLSD5LoaiBaoRuong ) then
		Say("H«m nay ®¹i hiÖp ®· sö dông "..SLSD5LoaiBaoRuong.." b¶o r­¬ng c¸c lo¹i, vâ c«ng th¨ng tiÕn qu¸ nhanh dÔ g©y t¸c dông ph¶n nghÞch, ngµy mai h·y tiÕp tôc vËy.")
		return 1
	end

	if GetLevel() < 80 then
		Say("§¼ng cÊp 80 trë lªn míi cã thÓ sö dông")
		return 1
	end

	local nTskDayValue = GetTask(%tbvng_ChestExpAward.TSK_DAY)
	local now = tonumber(GetLocalDate("%Y%m%d"))
	if (now ~= nTskDayValue) then
		SetTask(%tbvng_ChestExpAward.TSK_DAY, now)
		SetTask(%tbvng_ChestExpAward.TASK_TRONG_NGAY, 0)
	end

	local dasudung = GetTask(%tbvng_ChestExpAward.TASK_TRONG_NGAY)
	if dasudung >= %tbvng_ChestExpAward.MAX_TRONG_NGAY then
		Msg2Player(format("H«m nay ®· nhËn ®ñ <color=yellow>%d <color> triÖu ®iÓm, kh«ng thÓ nhËn thªm.", %tbvng_ChestExpAward.MAX_TRONG_NGAY))
		return 1
	end

	local tbKey1 = tbPirate_Box_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbPirate_Box_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("CÇn ph¶i cã Ch×a Khãa Vµng hoÆc Ch×a Khãa Nh­ ý míi cã thÓ më ®­îc B¶o R­¬ng Thñy TÆc", 1, "§ãng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("Sö dông Ch×a khãa nh­ ý/#VnPirateBoxGiveAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("Sö dông Ch×a khãa vµng/#VnPirateBoxGiveAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "§ãng/Oncancel")
		Say("Sö dông ch×a khãa ®Ó më r­¬ng:", getn(tbOpt), tbOpt)
	end
	return 1	
end
function Oncancel()end

function VnPirateBoxGiveAward(nItemIdx, strKeyType)
	local tbKey = tbPirate_Box_Key_Require[strKeyType]
	local tbAward = tbPirateBoxNewAward[strKeyType]
	if not tbKey or not tbAward then
		return
	end

	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("CÇn ph¶i cã Ch×a Khãa Vµng hoÆc Ch×a Khãa Nh­ ý míi cã thÓ më ®­îc B¶o R­¬ng Thñy TÆc", 1, "§ãng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2743, -1) ~= 1 then
		Say("Kh«ng t×m thÊy B¶o R­¬ng Thñy TÆc", 1, "§ãng/no")
		return
	end

	--local tbAward100 =
	--{
	--		{szName = "Tinh hång b¶o th¹ch",							tbProp={4,353,1,1,0,0},nCount=1,},
	--		{szName = "§iÓm kinh nghiÖm",								nExp = 5000000},
	--},

	tbAwardTemplet:Give(tbAward, 1, {"PhongLangDo", "use_shuizeibaoxiang"})
	--tbAwardTemplet:Give(tbAward100, 1, {"PhongLangDo100", "use_shuizeibaoxiang100"})
	Msg2SubWorld("§¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Ch×a khãa nh­ ý<color> më r­¬ng Thñy TÆc nhËn ®­îc phÇn th­ëng hÊp dÉn")
	SetTask(1407, GetTask(1407) + 1)
end