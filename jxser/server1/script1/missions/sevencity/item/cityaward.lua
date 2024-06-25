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

	--{szName = "Th�n H�nh Ph�",	tbProp = {6, 1, 1266, 1, 0, 0}, nRate = 0.1, nExpiredTime = 15 * 24 * 60},
	--{szName = "C�m nang thay ��i tr�i ��t", tbProp = {6, 1, 1781, 1, 0, 0}, nRate = 5, tbParam = {60}},
	--{szName = "Ti�n Th�o L� ��c bi�t", tbProp = {6, 1, 1181, 1, 0, 0}, nRate = 1},
	--{szName = "M�t n� qu� �nh",	tbProp = {0, 11, 455, 1, 0, 0}, nRate = 0.1, nExpiredTime = 15 * 24 * 60},
	--{szName = "M�t n� c�u m�nh", tbProp = {0, 11, 454, 1, 0, 0}, nRate = 0.1, nExpiredTime = 15 * 24 * 60},
	--{szName = "Qu� Ho�ng Kim", tbProp={6,1,907,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.05},
	{szName = "Qu� Hoa T�u", tbProp={6,1,125,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	{szName = "��i L�c ho�n", tbProp={6,0,3,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	{szName = "Phi T�c ho�n", tbProp={6,0,6,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate = 0.5},
	--{szName = "Chi�n m� B�n Ti�u", tbProp = {0, 10, 6, 1, 5, 0}, nRate = 0.05,nExpiredTime = 7 * 24 * 60},
	--{szName = "Th�n m� Phi�n V�",	tbProp = {0, 10, 7, 1, 0, 0}, nRate = 0.01, nExpiredTime = 30 * 24 * 60},
	--{szName = "B� k�p H�a c�ng ��i ph�p",	tbProp = {6, 1, 4276, 1, 0, 0}, nRate = 1},
	--{szName = "Nh�t k� c�n kh�n ph�", tbProp = {6, 1, 2126, 1, 0, 0}, nRate = 0.01, nExpiredTime = 15 * 24 * 60},
	--{szName= "H�ng �nh Th�m vi�n uy�n", tbProp={0,204},nCount=1,nRate=1,nQuality = 1,nExpiredTime=30 * 24 * 60,},
	--{szName= "H�ng �nh ki�m b�i", tbProp={0,205},nCount=1,nRate=1,nQuality = 1,nExpiredTime=30 * 24 * 60,},
	--{szName= "H�ng �nh m�c t�c", tbProp={0,206},nCount=1,nRate=1,nQuality = 1,nExpiredTime=30 * 24 * 60,},
	--{szName= "H�ng �nh t� chi�u", tbProp={0,207},nCount=1,nRate=1,nQuality = 1,nExpiredTime=30 * 24 * 60,},


--{szName = "�� Ph� T� M�ng Kh�i", 	tbProp = {6, 1, 2714, 1, 0, 0}, nRate = 0.01},
--{szName = "�� Ph� T� M�ng Y", 	tbProp = {6, 1, 2715, 1, 0, 0}, nRate = 0.01},
--{szName = "�� Ph� T� M�ng Y�u ��i", 	tbProp = {6, 1, 2717, 1, 0, 0}, nRate = 0.01},
--{szName = "�� Ph� T� M�ng H� Uy�n",	tbProp = {6, 1, 2718, 1, 0, 0}, nRate = 0.01},
--{szName = "�� Ph� T� M�ng H�ng Li�n",	tbProp = {6, 1, 2719, 1, 0, 0}, nRate = 0.01},
--{szName = "�� Ph� T� M�ng B�i",		tbProp = {6, 1, 2720, 1, 0, 0}, nRate = 0.01},
--{szName = "�� Ph� T� M�ng H�i",		tbProp = {6, 1, 2716, 1, 0, 0}, nRate = 0.01},
--{szName = "�� Ph� T� M�ng Th��ng Gi�i Ch�",	tbProp = {6, 1, 2721, 1, 0, 0}, nRate = 0.01},
--{szName = "�� Ph� T� M�ng H� Gi�i Ch�",	tbProp = {6, 1, 2722, 1, 0, 0}, nRate = 0.01},
--{szName = "�� Ph� T� M�ng Kh� Gi�i",	tbProp = {6, 1, 2723, 1, 0, 0}, nRate = 0.01},
--{szName = "T� M�ng L�nh",			tbProp = {6, 1, 2350, 1, 0, 0}, nRate = 0.01},
--{szName = "Huy�n Vi�n L�nh",			tbProp = {6, 1, 2351, 1, 0, 0}, nRate = 0.10},
--{szName = "M�t n� Nguy�n so�i",	tbProp = {0, 11, 447, 1, 0, 0}, nRate = 0.10},
--{szName = "B�ch Ni�n Tr�n L�",		tbProp = {6, 1, 2266, 1, 0, 0}, nRate = 0.05},
--{szName = "V�n Ni�n Tr�n L�",		tbProp = {6, 1, 2268, 1, 0, 0}, nRate = 0.02},
--{szName = "Thi�n Ni�n Tr�n L�",		tbProp = {6, 1, 2267, 1, 0, 0}, nRate = 0.01},	
--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
--	{nExp = 1500000,  nRate = 48.02},
--	{nExp = 2000000,  nRate = 30},
--	{nExp = 5000000,  nRate = 5},
--	{nExp = 10000000, nRate	= 3},
--	{nExp = 20000000, nRate	= 2},
--	{nExp = 50000000, nRate	= 1},	
--{szName = "Ch�a Kh�a Nh� �",		tbProp = {6, 1, 2744, 1, 0, 0}, nRate = 0.1},
--{szName = "H�n Nguy�n Linh L�",		tbProp = {6, 1, 2312, 1, 0, 0}, nRate = 0.01},
--{szName = "Ng�c Qu�n",			tbProp = {6, 1, 2311, 1, 0, 0}, nRate = 0.01},

}

function main(nItemIndex)
dofile("script/missions/sevencity/item/cityaward.lua")
	if (CalcFreeItemCellCount() < 10) then
		Say("H�nh trang �t nh�t ph�i c� <color=red>10<color> � tr�ng m�i nh�n ���c ph�n th��ng.")
		return 1
	end
--molebaoct()
	--tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseCityAward"})
	--return 0
	local ran = random(1,30)
	if ran==1 or ran==11 or ran==12 or ran==13 or ran==18 or ran==19 or ran==17 or (ran>=20 and ran<=25) then
		local tien = random(1,5)
		Earn(tien*100000)
	elseif ran==2  then 
		tbAwardTemplet:GiveAwardByList({{szName = "Thi�t La H�n",tbProp={6,1,23,1,1},nCount=1},}, "test", 1);
	elseif ran==3 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Tinh H�ng B�o Th�ch",tbProp={4,353,1,1},nCount=1},}, "test", 1);
	elseif ran==4 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Ti�n Th�o L�",tbProp={6,1,71,1,1},nCount=1},}, "test", 1);
	elseif ran==5 or ran==14 or ran==20 or ran==26 or ran==27 or ran==29 or ran==30 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Ph�c Duy�n",tbProp={6,1,122,1,1},nCount=1},}, "test", 1);
	elseif ran==6 or ran==15 or ran==28 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Ph�c Duy�n",tbProp={6,1,123,1,1},nCount=1},}, "test", 1);
	elseif ran==7 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Ph�c Duy�n",tbProp={6,1,124,1,1},nCount=1},}, "test", 1);
	elseif ran==8 or ran==16 then 
		tbAwardTemplet:GiveAwardByList({{szName = "T�i Danh V�ng",tbProp={6,1,4338,1,1},nCount=1},}, "test", 1);
	elseif ran==9 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Thi�n S�n B�o L�",tbProp={6,1,72,1,1},nCount=1},}, "test", 1);
	elseif ran==10 then 
		tbAwardTemplet:GiveAwardByList({{szName = "Qu� Hoa T�u",tbProp={6,1,125,1,1},nCount=1},}, "test", 1);
	end
	
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
local s = random(1,4)

if s==1 then
Earn(200000)
end;
if s==2 then
Earn(300000)
end;
if s==3 then
Earn(500000)
end;
if s==4 then
Earn(700000)
end;
end
