Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><Thi�n Tr� B� B�o><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbTCMJ_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbTCMJ_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName = "Ng� H�nh K� Th�ch",										tbProp = {6,1,2125,1,0,0},nCount=1,nRate=25},
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 40,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(10000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 20,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(20000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(25000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 1,
		},		
	},	
	["chiakhoavang"] = 
	{
		{szName = "Ng� H�nh K� Th�ch",										tbProp = {6,1,2125,1,0,0},nCount=5,nRate=25},

		{szName="M�t n� - Anh h�ng chi�n tr��ng",tbProp={0,11,482,1,0,0},nCount=1,nRate=1,nExpiredTime=10080,nUsageTime=60},
		{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,2527,1,0,0},nCount=1,nRate=1,nExpiredTime=43200},
		
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(30000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 50,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(60000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 20,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(100000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 3,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(150000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 1,
		},	
	},
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)	
	local tbKey1 = tbTCMJ_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbTCMJ_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c Thi�n Tr� B� B�o", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a nh� �/#VnTCMJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a v�ng/#VnTCMJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng ch�a kh�a �� m� r��ng:", getn(tbOpt), tbOpt)
	end
	return 1
end

function Oncancel()end

function VnTCMJBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbTCMJ_Key_Require[strKeyType]
	local tbAward = tbTCMJ_Box_Award[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c Thi�n Tr� B� B�o", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 30193, -1) ~= 1 then
		Say("Kh�ng t�m th�y Thi�n Tr� B� B�o", 1, "��ng/no")
		return
	end	
	tbAwardTemplet:Give(tbAward, 1, {"ThienTriMatCanh", "SuDungThienTriBiBao"})	
end