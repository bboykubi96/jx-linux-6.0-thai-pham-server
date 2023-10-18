-- ve tru le bao that thanh dai chien
Include("\\script\\lib\\awardtemplet.lua")

--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbAward = {

--	{szName = "�� Ph� T� M�ng H�i", 		tbProp = {6, 1, 2716, 1, 0, 0}, 	nRate = 0.12},
--	{szName = "�� Ph� T� M�ng Y�u ��i", 		tbProp = {6, 1, 2717, 1, 0, 0}, 	nRate = 0.12},
--	{szName = "�� Ph� T� M�ng H� Uy�n", 		tbProp = {6, 1, 2718, 1, 0, 0}, 	nRate = 0.12},
--	{szName = "T� Tinh Kho�ng Th�ch", 			tbProp = {6, 1, 30040, 1, 0, 0}, 	nRate = 44},
--	{szName = "Tinh Luy�n Th�ch", 			tbProp = {6, 1, 2280, 1, 0, 0}, 	nRate = 27.34},
--	{szName = "Th�n Quy B� Huy�t ��n (ti�u)", 	tbProp = {6, 1, 2583, 1, 0, 0}, 	nRate = 18.3,	nCount = 10},
--	{szName = "Th�n Quy B� Huy�t ��n (trung)",	tbProp = {6, 1, 2582, 1, 0, 0},		nRate = 10,		nCount = 10},
--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428	
--	{szName="�i�m kinh nghi�m", nExp=5000000, nRate=30},
--	{szName="�i�m kinh nghi�m", nExp=10000000, nRate=20},
--	{szName="�i�m kinh nghi�m", nExp=15000000, nRate=15},
--	{szName="�i�m kinh nghi�m", nExp=20000000, nRate=10},
--{szName="B�ch Ni�n Tr�n L�", tbProp={6,1,2266,1,0,0}, nRate=5},
--{szName="V�n Ni�n Tr�n L�", tbProp={6,1,2268,1,0,0}, nRate=2},
--{szName="Thi�n Ni�n Tr�n L�", tbProp={6,1,2267,1,0,0}, nRate=1},

	{szName="�i�m kinh nghi�m 1", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(2000000, "V� Tr� L� Bao")
				end,
				nRate = 50,
	},
	{szName="�i�m kinh nghi�m 2", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(3000000, "V� Tr� L� Bao")
				end,
				nRate = 30,
	},
	{szName="�i�m kinh nghi�m 3", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(4000000, "V� Tr� L� Bao")
				end,
				nRate = 5,
	},
	{szName="�i�m kinh nghi�m 4", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(5000000, "V� Tr� L� Bao")
				end,
				nRate = 1,
	},
	--{szName = "C�m nang thay ��i tr�i ��t", tbProp={6,1,1781,1,0,0}, tbParam={60}, nRate=5},
	{szName = "Ti�n Th�o L� ��c bi�t", tbProp={6,1,1181,1,0,0}, nRate=0.},
	--{szName = "Th�n H�nh Ph�", tbProp={6,1,1266,1,0,0}, nRate=0.1, nExpiredTime=15 * 24 * 60},
	--{szName = "Chi�n m� B�n Ti�u", tbProp = {0, 10, 6, 1, 5, 0}, nRate = 0.05,nExpiredTime = 7 * 24 * 60},
	--{szName = "B� k�p H�a c�ng ��i ph�p",	tbProp = {6, 1, 4276, 1, 0, 0}, nRate = 1},
	--{szName = "�i�m c�ng hi�n bang h�i", nVngContribute=20000,nCount=1, nRate = 5},
	--{szName = "�i�m c�ng hi�n bang h�i", nVngContribute=50000,nCount=1, nRate = 3},
	--{szName = "�i�m c�ng hi�n bang h�i", nVngContribute=100000,nCount=1, nRate = 1},
	--{szName = "��i L�c ho�n", tbProp={6,0,3,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	--{szName = "Phi T�c ho�n", tbProp={6,0,6,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	--{szName = "Qu� Huy Ho�ng (th�p)", tbProp={6,1,904,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 1},
	--{szName = "Qu� Huy Ho�ng (trung)", tbProp={6,1,905,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	--{szName = "Qu� Huy Ho�ng (cao)", tbProp={6,1,906,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.1},
	--{szName = "Qu� Ho�ng Kim", tbProp={6,1,907,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.05},
	--{szName = "Qu� Hoa T�u", tbProp={6,1,125,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	--{szName = "��i B�ch C�u ho�n", tbProp={6,1,130,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.01},
	--{szName = "L�nh B�i Th�y T�c",tbProp={6,1,2745,1,0,0},nCount=1,nRate=2,nExpiredTime=20160},
}

function main()
	if (CalcFreeItemCellCount() < 1) then
		Say("H�nh trang �t nh�t ph�i c� <color=red>1<color> � tr�ng m�i nh�n ���c ph�n th��ng.")
		return 1
	end
	tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseGuardAward"})
	return 0
end

function test()
	local rate = 0
	for i = 1, getn(tbAward) do
		rate = rate + tbAward[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("invalid rate: %d", rate))
	end
end

