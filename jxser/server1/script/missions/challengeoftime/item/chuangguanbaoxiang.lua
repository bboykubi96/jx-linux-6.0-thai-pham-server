-- ���ر�����Ʒ��������һ����Ʒ��
-- By: Wangjingjun(2011-03-02)

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><B�o R��ng V��t �i><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbCOT_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbCOT_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName = "Tinh h�ng b�o th�ch",							tbProp={4,353,1,1,0,0},nCount=1,nRate =6},
		{szName = "Huy�n tinh c�p 5",								tbProp={6,1,147,5,0,0},nCount=1, nRate =2},
		--{szName = "Ng� H�nh K� Th�ch",						tbProp = {6,1,2125,1,0,0},nCount=3,nRate=17},
		{szName = "Ti�n Th�o L� ��c bi�t",							tbProp={6,1,1181,1,0,0},nCount=1,nRate=7},
		{szName = "Ti�n Th�o L�",										tbProp={6,1,71,1,0,0},nCount=1,nRate=11},
		--{szName = "Tay Tuy Kinh",										tbProp={6,1,22,1,0,0},nCount=1,nRate=2},
		--{szName = "Vo Lam Mat Tich",										tbProp={6,1,26,1,0,0},nCount=1,nRate=2},
		{szName = "N�n B�t tr�n ph�c nguy�t",					tbProp = {6, 1, 1817, 1, 0, 0},nCount=1,nRate=12},	
		--{szName = "M�t n� v��ng gi� 7 ng�y",						tbProp={0,11,561,1,0,0},nExpiredTime=60*24*7,nRate=5.5},

		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "B�o r��ng v��t �i")
					end,
					nRate = 20,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1500000, "B�o r��ng v��t �i")
					end,
					nRate = 20,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1700000, "B�o r��ng v��t �i")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1900000, "B�o r��ng v��t �i")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "B�o r��ng v��t �i")
					end,
					nRate = 1,
		},

	},	
	["chiakhoavang"] = 
	{
		{szName = "Ng� H�nh K� Th�ch",							tbProp = {6,1,2125,1,0,0},nCount=10,nRate=30},
		--{szName = "B�n Ti�u",												tbProp = {0,10,6,1,5,0},nCount=1,nRate=2},
		--{szName = "Nh�t k� c�n kh�n ph�",							tbProp = {6,1,2126,1,0,0},nCount=1,nRate=3},

		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(150000000, "B�o r��ng v��t �i")
					end,
					nRate = 40,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(250000000, "B�o r��ng v��t �i")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(500000000, "B�o r��ng v��t �i")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(800000000, "B�o r��ng v��t �i")
					end,
					nRate = 2,
		},
			{szName="�i�m kinh nghi�m 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(900000000, "B�o r��ng v��t �i")
					end,
					nRate = 0.5,
		},
			{szName="�i�m kinh nghi�m 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000000, "B�o r��ng v��t �i")
					end,
					nRate = 0.2,
		},
	},
}

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)	
	
	--dofile("script/missions/challengeoftime/item/chuangguanbaoxiang.lua")
	--dofile("script/vng_event/change_request_baoruong/exp_award.lua")

	--do Say("T�m th�i ch�a s� ��ng d��c") return end

	if GetLevel() < 80 then
		Say("��ng c�p 80 tr� l�n m�i c� th� s� d�ng")
		return 1
	end

	local SLSD5LoaiBaoRuong = 1
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(1406) ~= nDate ) then
		SetTask(1406, nDate)
		SetTask(1407, 0)
	end

	if ( GetTask(1407) >= SLSD5LoaiBaoRuong ) then
		Say("H�m nay ��i hi�p �� s� d�ng "..SLSD5LoaiBaoRuong.." b�o r��ng c�c lo�i, v� c�ng th�ng ti�n qu� nhanh d� g�y t�c d�ng ph�n ngh�ch, ng�y mai h�y ti�p t�c v�y.")
		return 1
	end
AddOwnExp(5e6)

end

function Oncancel()end

function VnCOTBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbCOT_Key_Require[strKeyType]
	local tbAward = tbCOT_Box_Award[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c B�o R��ng V��t �i", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2742, -1) ~= 1 then
		Say("Kh�ng t�m th�y B�o R��ng V��t �i", 1, "��ng/no")
		return
	end	
	tbAwardTemplet:Give(tbAward, 1, {"chuangguan", "use chuangguanbaoxiang"})
	AddStatData("baoxiangxiaohao_kaichuangguanbaoxiang", 1)	--��������һ��
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> m� r��ng V��t �i b�ng ch�a kh�a nh� � <color=yellow>nh�n ���c nhi�u ph�n th��ng")
	SetTask(1407, GetTask(1407) + 1)
end