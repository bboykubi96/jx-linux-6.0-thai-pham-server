-- 随机宝箱物品（随机获得一样物品）
-- By: Wangjingjun(2011-02-17)

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch骳 m鮪g cao th� <color=yellow>%s<color=green>  nh薾 頲 <color=yellow><%s><color=green> t� <color=yellow><T鑞g Kim B� B秓><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbSJ_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbSJNewAward = 
{	
	["chiakhoanhuy"] = 
	{
		{szName = "T葃 t駓 kinh",	tbProp = {6,1,22,1,0,0},nCount=1,nRate=0.05},
		{szName = "V� L﹎ m藅 t辌h",	tbProp = {6,1,26,1,0,0},nCount=1,nRate=0.01},
		{szName = "Ti猲 Th秓 L�",	tbProp = {6,1,71,1,0,0},nCount=1,nRate=20.18,nCount=1},
		{szName = "Ph骳 duy猲 l� Чi",	tbProp = {6,1,124,1,0,0},nCount=1,nRate=8,nCount=1},
		{szName = "Ph骳 duy猲 l� Trung",	tbProp = {6,1,123,1,0,0},nCount=1,nRate=10,nCount=1},
		{szName = "Ph骳 duy猲 l� Ti觰",	tbProp = {6,1,122,1,0,0},nCount=1,nRate=12,nCount=2},
		{szName = "B� k輕 90",	tbProp = {6,1,random(27,28),5,0,0},nCount=1,nRate=0.05},
		{szName = "B� k輕 90",tbProp={6,1,random(33,43),1,0,0},nCount=1,nRate=0.05},
		{szName = "B� k輕 90",tbProp={6,1,random(45,49),1,0,0},nCount=1,nRate=0.05},
		{szName = "觤 kinh nghi謒 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "T鑞g Kim B� B秓")
					end,
					nRate = 20,
		},
		{szName="觤 kinh nghi謒 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1500000, "T鑞g Kim B� B秓")
					end,
					nRate = 20,
		},
		{szName="觤 kinh nghi謒 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1700000, "T鑞g Kim B� B秓")
					end,
					nRate = 1,
		},
		{szName="觤 kinh nghi謒 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1900000, "T鑞g Kim B� B秓")
					end,
					nRate = 1,
		},
		{szName="觤 kinh nghi謒 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "T鑞g Kim B� B秓")
					end,
					nRate = 1,
		},		
	},	
	["chiakhoavang"] = 
	{
		--{szName = "Ng� H祅h K� Th筩h",		tbProp = {6,1,2125,1,0,0},nCount=5,nRate=25},
		--{szName = "Ti猲 Th秓 L�",	tbProp = {6,1,1181,1,0,0},nCount=1,nRate=5,nCount=3},
		--{szName = "B玭 Ti猽",		tbProp = {0,10,6,1,5,0},nCount=1,nRate=1},
		{szName = "T鑞g Kim Chi猽 Binh L� Bao",tbProp={6,1,30084,1,0,0},nCount=1,nRate=1,nExpiredTime=10080},
		{szName = "H錳 thi猲 t竔 t筼 l� bao",tbProp={6,1,2527,1,0,0},nCount=3,nRate=1,nExpiredTime=20160},
		{szName = "觤 kinh nghi謒 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "T鑞g Kim B� B秓")
					end,
					nRate = 50,
		},
		{szName="觤 kinh nghi謒 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(25000000, "T鑞g Kim B� B秓")
					end,
					nRate = 28,
		},
		{szName="觤 kinh nghi謒 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(30000000, "T鑞g Kim B� B秓")
					end,
					nRate = 10,
		},
		{szName="觤 kinh nghi謒 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(40000000, "T鑞g Kim B� B秓")
					end,
					nRate = 5,
		},
		{szName="觤 kinh nghi謒 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "T鑞g Kim B� B秓")
					end,
					nRate = 1,
		},
		{szName="觤 kinh nghi謒 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(80000000, "T鑞g Kim B� B秓")
					end,
					nRate = 1,
		},
		{szName="觤 kinh nghi謒 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(100000000, "T鑞g Kim B� B秓")
					end,
					nRate = 0.5,
		},
		{szName="Qu� Ho祅g Kim",tbProp={6,1,907,1,0,0},nCount=3,nRate=1,nExpiredTime=43200},
	},	
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main()
	local SLSD5LoaiBaoRuong = 20
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(1408) ~= nDate ) then
		SetTask(1408, nDate)
		SetTask(1409, 0)
	end
	if ( GetTask(1409) >= SLSD5LoaiBaoRuong ) then
		Say("H玬 nay i hi謕  s� d鬾g "..SLSD5LoaiBaoRuong.." b秓 rng c竎 lo筰, v� c玭g th╪g ti課 qu� nhanh d� g﹜ t竎 d鬾g ph秐 ngh辌h, ng祔 mai h穣 ti誴 t鬰 v藋.")
		return 1
	end
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e6}}, "test", 1);
		return 0
end
function main1(nIndexItem)

	if GetLevel() < 80 then
		Say("Ъng c蕄 80 tr� l猲 m韎 c� th� s� d鬾g")
		return 1
	end

	local SLSD5LoaiBaoRuong = 5
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(1406) ~= nDate ) then
		SetTask(1406, nDate)
		SetTask(1407, 0)
	end

	if ( GetTask(1407) >= SLSD5LoaiBaoRuong ) then
		Say("H玬 nay i hi謕  s� d鬾g "..SLSD5LoaiBaoRuong.." b秓 rng c竎 lo筰, v� c玭g th╪g ti課 qu� nhanh d� g﹜ t竎 d鬾g ph秐 ngh辌h, ng祔 mai h穣 ti誴 t鬰 v藋.")
		return 1
	end

	local tbKey1 = tbSJ_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbSJ_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C莕 ph秈 c� Ch譨 Kh鉧 V祅g ho芻 Ch譨 Kh鉧 Nh� � m韎 c� th� m� 頲 T鑞g Kim B� B秓", 1, "сng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("в b秓 m t礽 s秐 c馻 i hi謕, xin h穣  tr鑞g %d %dx%d h祅h trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d鬾g Ch譨 kh鉧 nh� �/#VnSJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d鬾g Ch譨 kh鉧 v祅g/#VnSJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "сng/Oncancel")
		Say("S� d鬾g ch譨 kh鉧  m� rng:", getn(tbOpt), tbOpt)
	end
	return 1	
end
function Oncancel()end

function VnSJBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbSJ_Key_Require[strKeyType]
	local tbAward = tbSJNewAward[strKeyType]
	if not tbKey or not tbAward then
		return
	end

	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C莕 ph秈 c� Ch譨 Kh鉧 V祅g ho芻 Ch譨 Kh鉧 Nh� � m韎 c� th� m� 頲 T鑞g Kim B� B秓", 1, "сng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2741, -1) ~= 1 then
		Say("Kh玭g t譵 th蕐 T鑞g Kim B� B秓", 1, "сng/no")
		return
	end
	tbAwardTemplet:Give(tbAward, 1, {"SongJin", "use songjingmibao"})	
	AddStatData("baoxiangxiaohao_kaisongjinmibao", 1)	
	Msg2SubWorld("Ch骳 m鮪g i hi謕 <color=green>"..GetName().."<color> m� T鑞g Kim B� B秓 b籲g ch譨 kh鉧 nh� � <color=yellow>nh薾 頲 nhi襲 ph莕 thng")
	SetTask(1407, GetTask(1407) + 1)
end