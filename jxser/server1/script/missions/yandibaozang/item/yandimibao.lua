Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
----------------------------------------------------------------------------
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><Vi�m �� B� B�o><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbYdbz_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
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
	["chiakhoavang"] = {
		{szName="B�o R��ng X�ch L�n H�ng Li�n",tbProp={6,1,4671,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=0.010, CallBack = _Message},
		{szName="B�o R��ng X�ch L�n Kh�i",tbProp={6,1,4672,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nRate=0.009, CallBack = _Message},
		{szName="B�o R��ng X�ch L�n Th��ng Gi�i",tbProp={6,1,4673,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.003, CallBack = _Message},
		{szName="B�o R��ng X�ch L�n H� Uy�n",tbProp={6,1,4674,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.008, CallBack = _Message},
		{szName="B�o R��ng X�ch L�n Y�u ��i",tbProp={6,1,4675,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.007, CallBack = _Message},
		{szName="B�o R��ng X�ch L�n Kh�i",tbProp={6,1,4676,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nRate=0.004, CallBack = _Message},
		{szName="B�o R��ng X�ch L�n V� Kh�",tbProp={6,1,4677,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nRate=0.001, CallBack = _Message},
		{szName="B�o R��ng X�ch L�n H�i",tbProp={6,1,4678,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.006, CallBack = _Message},
		{szName="B�o R��ng X�ch L�n B�i",tbProp={6,1,4679,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nRate=0.005, CallBack = _Message},
		{szName="B�o R��ng X�ch L�n H� Gi�i",tbProp={6,1,4680,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="�� Ph� Minh Ph��ng Li�n",tbProp={6,1,4581,1,0,0},nCount=1,nRate=0.0010},
		{szName="�� Ph� Minh Ph��ng Kh�i",tbProp={6,1,4582,1,0,0},nCount=1, nRate=0.0009},
		{szName="�� Ph� Minh Ph��ng Th��ng Gi�i",tbProp={6,1,4583,1,0,0},nCount=1,nRate=0.0003},		
		{szName="�� Ph� Minh Ph��ng H� Uy�n",tbProp={6,1,4584,1,0,0},nCount=1,nRate=0.0008},
		{szName="�� Ph� Minh Ph��ng Y�u ��i",tbProp={6,1,4585,1,0,0},nCount=1,nRate=0.0007},
		{szName="�� Ph� Minh Ph��ng Y",tbProp={6,1,4586,1,0,0},nCount=1,nRate=0.0004},
		{szName="�� Ph� Minh Ph��ng Kh� Gi�i",tbProp={6,1,4587,1,0,0},nCount=1,nRate=0.0001},
		{szName="�� Ph� Minh Ph��ng H�i",tbProp={6,1,4588,1,0,0},nCount=1,nRate=0.0006},
		{szName="�� Ph� Minh Ph��ng B�i",tbProp={6,1,4589,1,0,0},nCount=1,nRate=0.0005},
		{szName="�� Ph� Minh Ph��ng H� Gi�i",tbProp={6,1,4590,1,0,0},nCount=1,nRate=0.0002},		
		{szName="Ch�a Kh�a Nh� �",tbProp={6,1,2744,1,0,0},nCount=1,nRate=1.974,nExpiredTime=20160},
		{szName="Ng�c Qu�n",tbProp={6,1,2311,1,0,0},nCount=1,nRate=1},
		{szName="M�c Nh�n L�nh",tbProp={6,1,30105,1,0,0},nCount=2,nRate=3},
		{szName="Ho�n H�n ��n",tbProp={6,1,2837,1,0,0},nCount=1,nRate=2,nExpiredTime=43200},
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
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate ~= GetTask(3019) then
		SetTask(3019,nDate)
		SetTask(3020,0)
	end
	if GetTask(3020)>9 and nDate==GetTask(3019) then
		Say("M�i ng�y ch� s� d�ng ���c 10 r��ng")
		return 1
	end
	AddOwnExp(1000000)
	SetTask(3020,GetTask(3020)+1)
	local nDate2 = tonumber(GetLocalDate("%Y%m%d"));
	SetTask(3019,nDate2)
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