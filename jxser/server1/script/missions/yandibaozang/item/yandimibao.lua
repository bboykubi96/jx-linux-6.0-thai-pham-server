Include("\\script\\lib\\awardtemplet.lua")

--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><Vi�m �� B� B�o><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbYdbz_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 4877},
}

tbYdbz_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "Vi�m �� B� B�o")
					end,
					nRate = 52,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "Vi�m �� B� B�o")
					end,
					nRate = 30,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "Vi�m �� B� B�o")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(4000000, "Vi�m �� B� B�o")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "Vi�m �� B� B�o")
					end,
					nRate = 3,
		},		
	},	
	["chiakhoavang"] = 
	{
		{szName="�� Ph� Minh Ph��ng Li�n",tbProp={6,1,4399,1,0,0},nCount=1,nRate=0.5},
		{szName="�� Ph� Minh Ph��ng Kh�i",tbProp={6,1,4400,1,0,0},nCount=1,nRate=0.5},
		{szName="�� Ph� Minh Ph��ng Th��ng Gi�i",tbProp={6,1,4401,1,0,0},nCount=1,nRate=0.3},
		{szName="�� Ph� Minh Ph��ng Uy�n",tbProp={6,1,4402,1,0,0},nCount=1,nRate=0.5},
		{szName="�� Ph� Minh Ph��ng Y�u ��i",tbProp={6,1,4403,1,0,0},nCount=1,nRate=0.5},
		{szName="�� Ph� Minh Ph��ng Y",tbProp={6,1,4404,1,0,0},nCount=1,nRate=0.4},
		{szName="�� Ph� Minh Ph��ng Kh� Gi�i",tbProp={6,1,4405,1,0,0},nCount=1,nRate=0.1},
		{szName="�� Ph� Minh Ph��ng H�i",tbProp={6,1,4406,1,0,0},nCount=1,nRate=0.5},
		{szName="�� Ph� Minh Ph��ng B�i",tbProp={6,1,4407,1,0,0},nCount=1,nRate=0.5},
		{szName="�� Ph� Minh Ph��ng H� Gi�i",tbProp={6,1,4408,1,0,0},nCount=1,nRate=0.2},
		{szName="Vi�m �� L�nh",tbProp={6,1,1617,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
		{szName="C�ng Hi�n L� bao",tbProp={6,1,30214,1,0,0},nCount=1,nRate=1,nExpiredTime=43200},
		{szName="Ki�n Thi�t L� Bao",tbProp={6,1,30216,1,0,0},nCount=1,nRate=1,nExpiredTime=43200},
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "Vi�m �� B� B�o")
					end,
					nRate = 30,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "Vi�m �� B� B�o")
					end,
					nRate = 25,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(8000000, "Vi�m �� B� B�o")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(10000000, "Vi�m �� B� B�o")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "Vi�m �� B� B�o")
					end,
					nRate = 3,
		},
		{szName="�i�m kinh nghi�m 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(20000000, "Vi�m �� B� B�o")
					end,
					nRate = 2,
		},
		{szName="�i�m kinh nghi�m 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "Vi�m �� B� B�o")
					end,
					nRate = 1,
		},
	},
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)
	local tbKey1 = tbYdbz_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbYdbz_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c Vi�m �� B� B�o", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a nh� �/#VnYdbzBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a v�ng/#VnYdbzBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng ch�a kh�a �� m� r��ng:", getn(tbOpt), tbOpt)
	end
	return 1
end

function Oncancel()end

function VnYdbzBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbYdbz_Key_Require[strKeyType]
	local tbAward = tbYdbz_Box_Award[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c Vi�m �� B� B�o", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2805, -1) ~= 1 then
		Say("Kh�ng t�m th�y Vi�m �� B� B�o", 1, "��ng/no")
		return
	end
	tbAwardTemplet:Give(tbAward, 1, {"YDBZ", "use yandimibao"})	
end