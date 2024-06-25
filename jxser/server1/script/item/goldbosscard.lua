Include("\\script\\global\\forbidmap.lua");

-- script viet hoa By http://tranhba.com tinhpn 20100803: Patch Request 
local tbUseOnlyInMap = 
{ 
586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604, 
} 
local checkOnlyUseInMap = function() 
local nMapId = SubWorldIdx2MapCopy(SubWorld) 
for i = 1, getn( %tbUseOnlyInMap ) do -- script viet hoa By http://tranhba.com  ®Æc thï b¶n ®å cÊm dïng 
if( %tbUseOnlyInMap[i] == nMapId ) then 
return 1 
end 
end 
return 0 
end 


function main(nItemIdx) 
-- script viet hoa By http://tranhba.com  sö dông ng­êi h¹n chÕ ? 
local ForbiddenMap = {44, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 326, 327, 328, 329, 330, 331, 334, 335, 337, 338, 339, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374} 
local GoldenBoss = {{562,"§¹o thanh ch©n nh©n ", 4,12}, 
{563,"Còng luËt Ých c¸ch ", 3,12}, 
-- script viet hoa By http://tranhba.com {564,"Hoµn nhan tuyÕt y ", 3,12}, 
{565,"§oan méc duÖ ", 3,12}, 
{566,"Cæ b¸ch ", 0,12}, 
{567,"Chung linh tó ", 2,12}, 
{568,"Hµ liªn phiªu ", 2,12}, 
{582, " lam y y ", 1,12}, 
{583,"M¹nh th­¬ng l·ng ", 3,12}, 
{739,"V­¬ng t¸ ", 0,10}, 
{740,"HuyÒn gi¸c ®¹i s­ ", 0,12}, 
{741,"§­êng bÊt nhiÔm ", 1,12}, 
{742,"B¹ch o¸nh o¸nh ", 1,12}, 
{743,"Thanh hiÓu s­ th¸i ", 2,12}, 
{744,"Yªn hiÓu xinh ®Ñp ", 2,12}, 
{745,"Ng­êi nµo ta ", 3,12}, 
-- script viet hoa By http://tranhba.com {746,"§an t­ nam ", 4,10}, 
{747,"TuyÒn ki tö ", 4,12}, 
{511,"Tê t«ng ®ang ",5,270}, 
{513,"Hay nh­ ",5,270}, 
{523, " liÔu thanh thanh ",5,270}} 

local bosspro = {}; 
local W,X,Y = GetWorldPos(); 
local nMapId = W; 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ chiÕn ®Êu khu cÊm dïng 
Msg2Player("Kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu h¹ kh«ng thÓ sö dông "); 
return 1 
end 

-- script viet hoa By http://tranhba.com tinhpn 20100803: Patch ReQuest 
if %checkOnlyUseInMap() ~= 1 then 
Msg2Player("N¬i ®©y kh«ng thÓ sö dông ®¹o nµy cô ") 
return 1 
end 


for i = 249, 318 do -- script viet hoa By http://tranhba.com  tÈy tñy ®¶o s¬n ®éng 
if ( i == nMapId ) then 
Msg2Player("N¬i ®©y kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1 
end 
end 
for i = 375, 415 do -- script viet hoa By http://tranhba.com  míi t¨ng tèng kim chiÕn tr­êng b¶n ®å ®­a tin nhiÖm vô b¶n ®å tû vâ ®¹i héi b¶n ®å 
if ( i == nMapId ) then 
Msg2Player("N¬i ®©y kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1 
end 
end 
for i = 1, getn( ForbiddenMap ) do -- script viet hoa By http://tranhba.com  ®Æc thï b¶n ®å cÊm dïng 
if( ForbiddenMap[i] == nMapId ) then 
Msg2Player("N¬i ®©y kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1 
end 
end 

if (CheckAllMaps(nMapId) == 1) then 
Msg2Player("N¬i ®©y kh«ng thÓ sö dông ®¹o nµy cô "); 
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
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount().." , ["..GetName().."] dïng hoµng kim lÖnh phï gäi vÒ mét hoµng kim Boss#"..GoldenBossName); 
Msg2Player("Ng­¬i triÖu ho¸n ra mét Boss#"..GoldenBossName); 

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
