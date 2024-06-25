-- ���������Ʒ��������һ����Ʒ��
-- By: Wangjingjun(2011-02-17)

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><T�ng Kim B� B�o><color>" ,GetName(),GetItemName(nItemIndex))
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
		{szName = "T�y t�y kinh",	tbProp = {6,1,22,1,0,0},nCount=1,nRate=0.05},
		{szName = "V� L�m m�t t�ch",	tbProp = {6,1,26,1,0,0},nCount=1,nRate=0.01},
		{szName = "Ti�n Th�o L�",	tbProp = {6,1,71,1,0,0},nCount=1,nRate=20.18,nCount=1},
		{szName = "Ph�c duy�n l� ��i",	tbProp = {6,1,124,1,0,0},nCount=1,nRate=8,nCount=1},
		{szName = "Ph�c duy�n l� Trung",	tbProp = {6,1,123,1,0,0},nCount=1,nRate=10,nCount=1},
		{szName = "Ph�c duy�n l� Ti�u",	tbProp = {6,1,122,1,0,0},nCount=1,nRate=12,nCount=2},
		{szName = "B� k�p 90",	tbProp = {6,1,random(27,28),5,0,0},nCount=1,nRate=0.05},
		{szName = "B� k�p 90",tbProp={6,1,random(33,43),1,0,0},nCount=1,nRate=0.05},
		{szName = "B� k�p 90",tbProp={6,1,random(45,49),1,0,0},nCount=1,nRate=0.05},
		{szName = "�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "T�ng Kim B� B�o")
					end,
					nRate = 20,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1500000, "T�ng Kim B� B�o")
					end,
					nRate = 20,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1700000, "T�ng Kim B� B�o")
					end,
					nRate = 1,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1900000, "T�ng Kim B� B�o")
					end,
					nRate = 1,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "T�ng Kim B� B�o")
					end,
					nRate = 1,
		},		
	},	
	["chiakhoavang"] = 
	{
		--{szName = "Ng� H�nh K� Th�ch",		tbProp = {6,1,2125,1,0,0},nCount=5,nRate=25},
		--{szName = "Ti�n Th�o L�",	tbProp = {6,1,1181,1,0,0},nCount=1,nRate=5,nCount=3},
		--{szName = "B�n Ti�u",		tbProp = {0,10,6,1,5,0},nCount=1,nRate=1},
		{szName = "T�ng Kim Chi�u Binh L� Bao",tbProp={6,1,30084,1,0,0},nCount=1,nRate=1,nExpiredTime=10080},
		{szName = "H�i thi�n t�i t�o l� bao",tbProp={6,1,2527,1,0,0},nCount=3,nRate=1,nExpiredTime=20160},
		{szName = "�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "T�ng Kim B� B�o")
					end,
					nRate = 50,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(25000000, "T�ng Kim B� B�o")
					end,
					nRate = 28,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(30000000, "T�ng Kim B� B�o")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(40000000, "T�ng Kim B� B�o")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "T�ng Kim B� B�o")
					end,
					nRate = 1,
		},
		{szName="�i�m kinh nghi�m 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(80000000, "T�ng Kim B� B�o")
					end,
					nRate = 1,
		},
		{szName="�i�m kinh nghi�m 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(100000000, "T�ng Kim B� B�o")
					end,
					nRate = 0.5,
		},
		{szName="Qu� Ho�ng Kim",tbProp={6,1,907,1,0,0},nCount=3,nRate=1,nExpiredTime=43200},
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
		Say("H�m nay ��i hi�p �� s� d�ng "..SLSD5LoaiBaoRuong.." b�o r��ng c�c lo�i, v� c�ng th�ng ti�n qu� nhanh d� g�y t�c d�ng ph�n ngh�ch, ng�y mai h�y ti�p t�c v�y.")
		return 1
	end
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e6}}, "test", 1);
		return 0
end
function main1(nIndexItem)

	if GetLevel() < 80 then
		Say("��ng c�p 80 tr� l�n m�i c� th� s� d�ng")
		return 1
	end

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

	local tbKey1 = tbSJ_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbSJ_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c T�ng Kim B� B�o", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a nh� �/#VnSJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a v�ng/#VnSJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng ch�a kh�a �� m� r��ng:", getn(tbOpt), tbOpt)
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
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c T�ng Kim B� B�o", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2741, -1) ~= 1 then
		Say("Kh�ng t�m th�y T�ng Kim B� B�o", 1, "��ng/no")
		return
	end
	tbAwardTemplet:Give(tbAward, 1, {"SongJin", "use songjingmibao"})	
	AddStatData("baoxiangxiaohao_kaisongjinmibao", 1)	
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> m� T�ng Kim B� B�o b�ng ch�a kh�a nh� � <color=yellow>nh�n ���c nhi�u ph�n th��ng")
	SetTask(1407, GetTask(1407) + 1)
end