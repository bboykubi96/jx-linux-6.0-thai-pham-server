-- Cong thanh le bao that thanh dai chien
Include("\\script\\lib\\awardtemplet.lua")

--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbAward = {
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "C�ng Th�nh L� Bao (m�i)")
					end,
					nRate = 50.00,
		},
	{szName="�i�m kinh nghi�m 2", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(3000000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 20,
	},
	{szName="�i�m kinh nghi�m 3", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(400000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 20,
	},
	{szName="�i�m kinh nghi�m 4", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(5000000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 0.5,
	},
	{szName="�i�m kinh nghi�m 5", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(7000000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 0.2,
	},
	{szName="�i�m kinh nghi�m 6", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(10000000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 0.1,
	},

--	{nExp = 1500000,  nRate = 48.02},
--	{nExp = 2000000,  nRate = 30},
--	{nExp = 5000000,  nRate = 5},
--	{nExp = 10000000, nRate	= 3},
--	{nExp = 20000000, nRate	= 2},
--	{nExp = 50000000, nRate	= 1},	

}

function main(nItemIndex)
	if (CalcFreeItemCellCount() < 1) then
		Say("H�nh trang �t nh�t ph�i c� <color=red>1<color> � tr�ng m�i nh�n ���c ph�n th��ng.")
		return 1
	end
	--	AddOwnExp(1000000)
molebaoct()
	--tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseCityAward"})
	--return 0
end

function test()
	local rate = 0
	for i = 1, getn(tbAward) do
		rate = rate + tbAward[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("total rate is wrong", rate))
	end
end


function molebaoct()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi S� D�ng C�ng Th�nh L� Bao><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end


local tbthuongitem30 = {

			{szName= "Money", nJxb=50000, nCount=1,nRate=2,},
			{szName= "Money", nJxb=100000, nCount=1,nRate=2,},
			{szName= "Money", nJxb=200000, nCount=1,nRate=2,},
			--{szName= "Money", nJxb=700000, nCount=1,nRate=2,},
			{szName = "Ph�c duy�n",tbProp={6,1,122,1,1},nCount=1,nRate=0.4,},
						{szName = "Ph�c duy�n",tbProp={6,1,123,1,1},nCount=1,nRate=0.4,},
			{szName = "Ph�c duy�n",tbProp={6,1,124,1,1},nCount=1,nRate=0.4,},
			{szName = "T�i danh v�ng",tbProp={6,1,4338,1,1},nCount=1,nRate=0.4,},
			{szName = "��i L�c",tbProp={6,0,3,1,1},nCount=1,nRate=2,},
			{szName = "Phi T�c",tbProp={6,0,6,1,1},nCount=1,nRate=2,},
						{szName = "Thi�t La h�n",tbProp={6,1,23,1,1},nCount=1,nRate=1,CallBack= _Message,},
			{szName = "Ti�n Th� L�",tbProp={6,1,71,1,1},nCount=1,nRate=0.2,CallBack= _Message,},
			{szName = "Thi�n S�n B�o L�",tbProp={6,1,72,1,1},nCount=1,nRate=2,},


		--	{szName = "B�n Nh��c",tbProp={6,1,12,1,1},nCount=1,nRate=0.4,},
		--	{szName = "Qu� Hoa T�u",tbProp={6,1,125,1,1},nCount=1,nRate=1.7,},
			--{szName = "Thi�n S�n B�o L�",tbProp={6,1,72,1,1},nCount=1,nRate=2,},
			--{szName = "b�ch qu� l�",tbProp={6,1,73,1,1},nCount=1,nRate=2,},
			--{szName = "��i L�c",tbProp={6,0,3,1,1},nCount=1,nRate=2,},
			--{szName = "Phi T�c",tbProp={6,0,6,1,1},nCount=1,nRate=2,},
			--{szName = "T��ng �nh ph�",tbProp={6,1,18,1,1},nCount=1,nRate=1,},
			--{szName = "Ti�n Th� L�",tbProp={6,1,71,1,1},nCount=1,nRate=0.8,},
			{szName = "Tinh h�ng",tbProp={4,353,1,1},nCount=1,nRate=0.3,},
			{szName = "L�c Th�y Tinh",tbProp={4,238,1,1},nCount=1,nRate=0.2,},
			{szName = "T� Th�y Tinh",tbProp={4,239,1,1},nCount=1,nRate=0.2,},
			{szName = "Lam Th�y Tinh",tbProp={4,240,1,1},nCount=1,nRate=0.2,},
			--{szName = "Ti�n Th� L�",tbProp={6,1,71,1,1},nCount=1,nRate=0.2,CallBack= _Message,},
			--{szName = "Thi�t La h�n",tbProp={6,1,23,1,1},nCount=1,nRate=1,CallBack= _Message,},
		--	{szName = "V� L�m M�t T�ch",tbProp={6,1,26,1,1},nCount=1,nRate=0.1,CallBack= _Message,},
		--	{szName = "T�y T�y Kinh",tbProp={6,1,22,1,1},nCount=1,nRate=0.1,CallBack= _Message,},


			
}
tbAwardTemplet:Give(tbthuongitem30, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
end
