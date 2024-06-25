IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\lib\\log.lua") TSK_NVTS = 5555
-----------------------------------------------------------
function main(nItemIdx)
	local ForbiddenMap = {44, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 326, 327, 328, 329, 330, 331, 334, 335, 337, 338, 339, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374}
	local GoldenBoss = {{1902, "B¾c §Èu L·o Nh©n", 4,12}}	  		  
	local bosspro = {};
	local W,X,Y = GetWorldPos();
	local nMapId = W;
	if ( GetFightState() == 0 ) then
		Msg2Player("Kh«ng ë trong tr¹ng th¸i chiÕn ®Êu th× kh«ng thÓ sö dông");
		return 1
	end
	
	for i = 249, 318 do
		if ( i == nMapId ) then
			Msg2Player("N¬i ®©y kh«ng thÓ sö dông vËt phÈm nµy ");
			return 1
		end
	end	
	for i = 375, 415 do
		if ( i == nMapId ) then
			Msg2Player("N¬i ®©y kh«ng thÓ sö dông vËt phÈm nµy ");
			return 1
		end
	end
	for i = 1, getn( ForbiddenMap ) do
		if( ForbiddenMap[i] == nMapId ) then
			Msg2Player("N¬i ®©y kh«ng thÓ sö dông vËt phÈm nµy ");
			return 1
		end
	end
	
	if (CheckAllMaps(nMapId) == 1) then
		Msg2Player("N¬i ®©y kh«ng thÓ sö dông vËt phÈm nµy ");
		return 1
	end
	
	for i = 1, getn(GoldenBoss) do
		bosspro[i] = GoldenBoss[i][4];
	end

	local numth = randomaward(bosspro);
	local GoldenBossId = GoldenBoss[numth][1];
	local GoldenBossName = GoldenBoss[numth][2];
	local GoldenBossSeries = GoldenBoss[numth][3];
	if (GoldenBossSeries == 5) then
		GoldenBossSeries = random( 0, 4);
	end
	local npcindex = AddNpcEx( GoldenBossId, 95, GoldenBossSeries, SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1, GoldenBossName, 1 );
	SetNpcScript(npcindex, "\\script\\update_feature\\item\\bucthu.lua")
	AddTimer(600* 18, "OnTimeout", npcindex)
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

function OnTimeout(npcindex)
DelNpc(nNpcIdx);
end

function OnDeath(npcindex)
	if (GetTask(TSK_NVTS) == 2) then
		AddItem(6,1,4216,1,0,0) SetTask(TSK_NVTS,3)
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------