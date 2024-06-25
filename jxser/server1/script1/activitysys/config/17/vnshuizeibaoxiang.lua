Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><B�o R��ng Th�y T�c><color>" ,GetName(),GetItemName(nItemIndex))
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
		--{szName = "Ng� H�nh K� Th�ch",							tbProp = {6,1,2125,1,0,0},nCount=3,nRate=25},
		--{szName = "N�n B�t tr�n ph�c nguy�t",					tbProp = {6, 1, 1817, 1, 0, 0},nCount=7,nRate=4},	

		{szName = "Ti�n Th�o L� ��c bi�t",							tbProp={6,1,1181,1,0,0},nCount=1,nRate=1.2},
		{szName = "Ti�n Th�o L�",									tbProp={6,1,71,1,0,0},nCount=1,nRate=20.8},
		{szName = "T� th�y tinh",										tbProp={4,239,1,1,0,0},nCount=1,nRate=9},
		{szName = "Lam th�y tinh",									tbProp={4,238,1,1,0,0},nCount=1,nRate=9},
		{szName = "L�c th�y tinh",										tbProp={4,240,1,1,0,0},nCount=1,nRate=9},
		{szName = "�� ph� Ho�ng Kim - ��nh Qu�c � Tr��ng Sam",tbProp={6,1,383,1,0,0},nCount=1,nRate=0.1},
		{szName = "�� ph� Ho�ng Kim - An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={6,1,391,1,0,0},nCount=1,nRate=0.1},
		{szName = "�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "B�o R��ng Th�y T�c")
					end,
					nRate = 31,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1500000, "B�o R��ng Th�y T�c")
					end,
					nRate = 20,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "B�o R��ng Th�y T�c")
					end,
					nRate = 10,
		},
	},	

	["chiakhoavang"] = 
	{
		--{szName = "Ng� H�nh K� Th�ch",							tbProp = {6,1,2125,1,0,0},nCount=5,nRate=30},
		
		--{szName = "Trang b� ��ng s�t",			tbProp = {0,143},nQuality = 1,nCount=1,nRate=3},
		--{szName = "Trang b� ��ng s�t",			tbProp = {0,144},nQuality = 1,nCount=1,nRate=3},
		--{szName = "Trang b� ��ng s�t",			tbProp = {0,145},nQuality = 1,nCount=1,nRate=3},
		--{szName = "Trang b� ��ng s�t",			tbProp = {0,146},nQuality = 1,nCount=1,nRate=3},

		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1500000, "B�o R��ng Th�y T�c")
					end,
					nRate = 40,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2500000, "B�o R��ng Th�y T�c")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "B�o R��ng Th�y T�c")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(8000000, "B�o R��ng Th�y T�c")
					end,
					nRate = 2,
		},
			{szName="�i�m kinh nghi�m 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(9000000, "B�o R��ng Th�y T�c")
					end,
					nRate = 0.5,
		},
			{szName="�i�m kinh nghi�m 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(10000000, "B�o R��ng Th�y T�c")
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

	--do Say("T�m th�i ch�a s� ��ng d��c") return end

	local SLSD5LoaiBaoRuong = 5
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(1406) ~= nDate ) then
		SetTask(1406, nDate)
		SetTask(1407, 0)
	end

	if ( GetTask(1407) >= SLSD5LoaiBaoRuong ) then
		Say("H�m nay ��i hi�p �� s� d�ng "..SLSD5LoaiBaoRuong.." b�o r��ng c�c lo�i, v� c�ng th�ng ti�n qu� nhanh d� g�y t�c d�ng ph�n ngh�ch, ng�y mai h�y ti�p t�c v�y.")
		return 1
	end

	if GetLevel() < 80 then
		Say("��ng c�p 80 tr� l�n m�i c� th� s� d�ng")
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
		Msg2Player(format("H�m nay �� nh�n �� <color=yellow>%d <color> tri�u �i�m, kh�ng th� nh�n th�m.", %tbvng_ChestExpAward.MAX_TRONG_NGAY))
		return 1
	end

	local tbKey1 = tbPirate_Box_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbPirate_Box_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c B�o R��ng Th�y T�c", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a nh� �/#VnPirateBoxGiveAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a v�ng/#VnPirateBoxGiveAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng ch�a kh�a �� m� r��ng:", getn(tbOpt), tbOpt)
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
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c B�o R��ng Th�y T�c", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2743, -1) ~= 1 then
		Say("Kh�ng t�m th�y B�o R��ng Th�y T�c", 1, "��ng/no")
		return
	end

	--local tbAward100 =
	--{
	--		{szName = "Tinh h�ng b�o th�ch",							tbProp={4,353,1,1,0,0},nCount=1,},
	--		{szName = "�i�m kinh nghi�m",								nExp = 5000000},
	--},

	tbAwardTemplet:Give(tbAward, 1, {"PhongLangDo", "use_shuizeibaoxiang"})
	--tbAwardTemplet:Give(tbAward100, 1, {"PhongLangDo100", "use_shuizeibaoxiang100"})
	Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Ch�a kh�a nh� �<color> m� r��ng Th�y T�c nh�n ���c ph�n th��ng h�p d�n")
	SetTask(1407, GetTask(1407) + 1)
end