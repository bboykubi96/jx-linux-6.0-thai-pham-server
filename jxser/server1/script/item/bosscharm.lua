Include("\\script\\global\\forbidmap.lua");

function main(nItemIdx)

	local ForbiddenMap = {44, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 326, 327, 328, 329, 330, 331, 334, 335, 337, 338, 339, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374}
	local GoldenBoss = {{562, "��o Thanh Ch�n Nh�n", 4,12},
					  {563, "Gia Lu�t T� Ly", 3,12},
					  {564, "Ho�ng Nhan Tuy�t Y", 3,12},
					  {565, "�oan M�c Du� ", 3,12},
					  {566, "C� B�ch", 0,12},
					  {567, "Chung Linh T� ", 2,12},
					  {568, "H� Linh Phi�u", 2,12},
					  {582, "Lam Y Y", 1,12},
					  {583, "M�nh Th��ng L��ng", 3,12},
					  {741, "V��ng T� ", 0,10},
					  {742, "Huy�n Gi�c ��i S� ", 0,12},
					  {743, "���ng B�t Nhi�m", 1,12},
					  {744, "B�ch Doanh Doanh", 1,12},
					  {745, "Thanh Hi�u S� Th�i ", 2,12},
					  {746, "Y�n Hi�u Tr�i", 2,12},
					  {747, "H� Nh�n Ng� ", 3,12},
					  {748, "Li�u Nham", 4,10},
					  {749, "Tuy�n C� T� ", 4,12},
					  {513, "Tr��ng T�ng Ch�nh",5,270},
			  		  {515, "Di�u Nh� ",5,270},
			  		  {525, "Li�u Thanh Thanh",5,270}}
			  		  
	local bosspro = {};
	local W,X,Y = GetWorldPos();
	local nMapId = W;
	if ( GetFightState() == 0 ) then	--��ս��������
		Msg2Player("Kh�ng � trong tr�ng th�i chi�n ��u th� kh�ng th� s� d�ng");
		return 1
	end
	
	--tinhpn 20100803:  forbid Tong Map
	--if %checkOnlyUseInMap() ~= 1 then
	--	Msg2Player("Kh�ng th� s� d�ng v�t ph�m n�y t�i ��y.")
	--	return 1
	--end
	
	for i = 249, 318 do	
		if ( i == nMapId ) then
			Msg2Player("N�i ��y kh�ng th� s� d�ng v�t ph�m n�y ");
			return 1
		end
	end	
	for i = 375, 415 do
		if ( i == nMapId ) then
			Msg2Player("N�i ��y kh�ng th� s� d�ng v�t ph�m n�y ");
			return 1
		end
	end
	for i = 1, getn( ForbiddenMap ) do		--�����ͼ����
		if( ForbiddenMap[i] == nMapId ) then
			Msg2Player("N�i ��y kh�ng th� s� d�ng v�t ph�m n�y ");
			return 1
		end
	end
	
	if (CheckAllMaps(nMapId) == 1) then
		Msg2Player("N�i ��y kh�ng th� s� d�ng v�t ph�m n�y ");
		return 1
	end
	
	for i = 1, getn(GoldenBoss) do
		bosspro[i] = GoldenBoss[i][4];
	end

	--local doubleodds = 160 - (nLevel - 1) * 10
	--local j = 1;
	--if( random(1,doubleodds) == 1) then
	--	j = 2;
	--end
	
	--for k = 1, j do
		local numth = randomaward(bosspro);
		local GoldenBossId = GoldenBoss[numth][1];
		local GoldenBossName = GoldenBoss[numth][2];
		local GoldenBossSeries = GoldenBoss[numth][3];
		if (GoldenBossSeries == 5) then
			GoldenBossSeries = random( 0, 4);
		end
		local npcindex = AddNpcEx( GoldenBossId-2, 95, GoldenBossSeries, SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1, GoldenBossName, 1 );
		SetNpcDeathScript(npcindex, "\\script\\misc\\boss\\callbossdeath.lua");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."] D�ng l�nh b�i g�i Boss �� g�i Boss Ho�ng Kim: "..GoldenBossName);
		Msg2Player("B�n g�i ra 1 Boss: "..GoldenBossName);
	
	return 0	
end

function randomaward(aryProbability)
	local nRandNum;
	local nSum = 0;
	local nArgCount = getn( aryProbability );
	local nCompareSum = 0;
	for i = 1, nArgCount do
		nSum = nSum + aryProbability[i];
	end
	nRandNum = random(1,nSum);
	for i = 1,nArgCount do
		nCompareSum = nCompareSum + aryProbability[i]
		if( nRandNum <= nCompareSum) then
			return i;
		end
	end
end

--function GetDesc(nItemIdx)
	--local _, _, _, lvl = GetItemProp(nItemIdx);
	--local doubleodds = 160 - (lvl - 1) * 10
	--return "<color=blue>X�c su�t g�i ra Boss th� 2: <color=yellow>1/"..doubleodds;
--end