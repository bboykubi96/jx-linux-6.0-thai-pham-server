Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><B�o R��ng Ki�m Gia><color>" ,GetName(),GetItemName(nItemIndex))
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
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 52,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 30,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(4000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "B�o R��ng Ki�m Gia")
					end,
					nRate = 3,
		},		
	},	
	["chiakhoavang"] = 
	{	
		{szName="B�o R��ng Tinh S��ng Kh�i",tbProp={6,1,6021,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate=0.004, CallBack = _Message},
		{szName="B�o R��ng Tinh S��ng Th��ng Gi�i",tbProp={6,1,6022,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="B�o R��ng Tinh S��ng H�i",tbProp={6,1,6027,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="B�o R��ng Tinh S��ng Y�u ��i",tbProp={6,1,6024,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="B�o R��ng Tinh S��ng H� Uy�n",tbProp={6,1,6023,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.002, CallBack = _Message},		
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount=1,nRate=0.005,nExpiredTime=43200},
              {szName="Xu  ",tbProp={4,417,1,1,0,0},nCount=50,nRate=35, CallBack = _Message},
		{szName="Xu  ",tbProp={4,417,1,1,0,0},nCount=100,nRate=20, CallBack = _Message},
              {szName="Xu  ",tbProp={4,417,1,1,0,0},nCount=500,nRate=10, CallBack = _Message},		
		{szName="Ho�ng Kim �n (C��ng h�a)",tbProp={0,4881},nCount=1,nRate=0.15,nQuality = 1,nExpiredTime=10080,},
		{szName="Ho�ng Kim �n (Nh��c h�a)",tbProp={0,4892},nCount=1,nRate=0.15,nQuality = 1,nExpiredTime=10080,},
              {szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000000, "B�o r��ng v��t �i")
					end,
					nRate = 35, CallBack = _Message,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000000, "B�o r��ng v��t �i")
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
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c B�o R��ng Ki�m Gia", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a nh� �/#VnKGBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a v�ng/#VnKGBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng ch�a kh�a �� m� r��ng:", getn(tbOpt), tbOpt)
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
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c B�o R��ng Ki�m Gia", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 5055, -1) ~= 1 then
		Say("Kh�ng t�m th�y B�o R��ng Ki�m Gia", 1, "��ng/no")
		return
	end	
	tbAwardTemplet:Give(tbAward, 1, {"KiemGiaMeCung", "SuDungBaoRuongKiemGia"})	
end 
