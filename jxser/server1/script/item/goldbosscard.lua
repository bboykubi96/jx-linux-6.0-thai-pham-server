Include("\\script\\global\\forbidmap.lua");

-- script viet hoa By http://tranhba.com tinhpn 20100803: Patch Request 
local tbUseOnlyInMap = 
{ 
586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604, 
} 
local checkOnlyUseInMap = function() 
local nMapId = SubWorldIdx2MapCopy(SubWorld) 
for i = 1, getn( %tbUseOnlyInMap ) do -- script viet hoa By http://tranhba.com  ��c th� b�n �� c�m d�ng 
if( %tbUseOnlyInMap[i] == nMapId ) then 
return 1 
end 
end 
return 0 
end 


function main(nItemIdx) 
-- script viet hoa By http://tranhba.com  s� d�ng ng��i h�n ch� ? 
local ForbiddenMap = {44, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 326, 327, 328, 329, 330, 331, 334, 335, 337, 338, 339, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374} 
local GoldenBoss = {{562,"��o thanh ch�n nh�n ", 4,12}, 
{563,"C�ng lu�t �ch c�ch ", 3,12}, 
-- script viet hoa By http://tranhba.com {564,"Ho�n nhan tuy�t y ", 3,12}, 
{565,"�oan m�c du� ", 3,12}, 
{566,"C� b�ch ", 0,12}, 
{567,"Chung linh t� ", 2,12}, 
{568,"H� li�n phi�u ", 2,12}, 
{582, " lam y y ", 1,12}, 
{583,"M�nh th��ng l�ng ", 3,12}, 
{739,"V��ng t� ", 0,10}, 
{740,"Huy�n gi�c ��i s� ", 0,12}, 
{741,"���ng b�t nhi�m ", 1,12}, 
{742,"B�ch o�nh o�nh ", 1,12}, 
{743,"Thanh hi�u s� th�i ", 2,12}, 
{744,"Y�n hi�u xinh ��p ", 2,12}, 
{745,"Ng��i n�o ta ", 3,12}, 
-- script viet hoa By http://tranhba.com {746,"�an t� nam ", 4,10}, 
{747,"Tuy�n ki t� ", 4,12}, 
{511,"T� t�ng �ang ",5,270}, 
{513,"Hay nh� ",5,270}, 
{523, " li�u thanh thanh ",5,270}} 

local bosspro = {}; 
local W,X,Y = GetWorldPos(); 
local nMapId = W; 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� chi�n ��u khu c�m d�ng 
Msg2Player("Kh�ng ph�i l� tr�ng th�i chi�n ��u h� kh�ng th� s� d�ng "); 
return 1 
end 

-- script viet hoa By http://tranhba.com tinhpn 20100803: Patch ReQuest 
if %checkOnlyUseInMap() ~= 1 then 
Msg2Player("N�i ��y kh�ng th� s� d�ng ��o n�y c� ") 
return 1 
end 


for i = 249, 318 do -- script viet hoa By http://tranhba.com  t�y t�y ��o s�n ��ng 
if ( i == nMapId ) then 
Msg2Player("N�i ��y kh�ng th� s� d�ng ��o n�y c� "); 
return 1 
end 
end 
for i = 375, 415 do -- script viet hoa By http://tranhba.com  m�i t�ng t�ng kim chi�n tr��ng b�n �� ��a tin nhi�m v� b�n �� t� v� ��i h�i b�n �� 
if ( i == nMapId ) then 
Msg2Player("N�i ��y kh�ng th� s� d�ng ��o n�y c� "); 
return 1 
end 
end 
for i = 1, getn( ForbiddenMap ) do -- script viet hoa By http://tranhba.com  ��c th� b�n �� c�m d�ng 
if( ForbiddenMap[i] == nMapId ) then 
Msg2Player("N�i ��y kh�ng th� s� d�ng ��o n�y c� "); 
return 1 
end 
end 

if (CheckAllMaps(nMapId) == 1) then 
Msg2Player("N�i ��y kh�ng th� s� d�ng ��o n�y c� "); 
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
		SetNpcDeathScript(npcindex, "\\script\\misc\\boss\\callbossdeath.lua");
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount().." , ["..GetName().."] d�ng ho�ng kim l�nh ph� g�i v� m�t ho�ng kim Boss#"..GoldenBossName); 
Msg2Player("Ng��i tri�u ho�n ra m�t Boss#"..GoldenBossName); 

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
