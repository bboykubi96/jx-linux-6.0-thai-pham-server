-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##xmas2007_itemsnowman.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2007-12-01 16:05:50 

IncludeLib("NPCINFO") 
IncludeLib("TASKSYS") 
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\event\\xmas07_makesnowman\\head.lua")
Include("\\script\\lib\\pay.lua")

xmas2007_SnowManItem_forbitmap = {44, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 326, 327, 328, 329, 330, 331, 334, 335, 337, 338, 339, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374} 

xmas2007_tbSnowManBoss = 
{ 
-- script viet hoa By http://tranhba.com [ vËt phÈm PID] = { tªn ,bossID} 
[1634] = {szName = " Hoµng TuyÕt Nh©n ", nBossId = 1329}, 
[1635] = {szName = " Tö TuyÕt Nh©n ", nBossId = 1330}, 
[1636] = {szName = " Lôc TuyÕt Nh©n ", nBossId = 1331}, 
} 
xmas2007_SnowManItem_tbItemList = 
{ 
-- script viet hoa By http://tranhba.com [ vËt phÈm PID] = { tªn , vËt phÈm prop , x¸c suÊt %} 
[1634] = { 
{"Tö thñy tinh ",{4,238,1,1,0,0},6.00}, 
{"N­íc biÕc tinh ",{4,239,1,1,0,0},5.00}, 
{" lam thñy tinh ",{4,240,1,1,0,0},5.00}, 
{"§Æc hiÖu tiªn th¶o lé ",{6,1,1181,1,0,0},5.00}, 
{"Tiªn th¶o lé ",{6,1,71,1,0,0},10.00}, 
{"Phóc duyªn lé ( ®¹i ) ",{6,1,124,1,0,0},30.00}, 
{"Tinh hång b¶o th¹ch ",{4,353,1,1,0,0},5.60}, 
{"An bang b¨ng tinh th¹ch gi©y chuyÒn ",{0,164},0.01}, 
{"An bang m¸u gµ th¹ch chiÕc nhÉn ",{0,167},0.02}, 
{"An bang hoa cóc th¹ch chiÕc nhÉn ",{0,165},0.02}, 
{"An bang ®iÒn hoµng th¹ch ngäc béi ",{0,166},0.05}, 
{"§Þnh n­íc « sa ph¸t quan ",{0,160},0.06}, 
{"§Þnh n­íc lôa máng xanh tr­êng sam ",{0,159},0.06}, 
{"§Þnh n­íc ng©n tµm ®ai l­ng ",{0,163},0.06}, 
{"§Þnh n­íc xÝch quyªn mÒm ngoa ",{0,161},0.06}, 
{"§Þnh n­íc tö ®»ng hé cæ tay ",{0,162},0.06}, 
{"B«ng tuyÕt ",{6,0,1013,1,0,0},8.25}, 
{"Mµu xanh l¸ c©y lÔ phÈm ",{6,0,1012,1,0,0},8.25}, 
{"Hoa hång ",{6,0,20,1,0,0},8.25}, 
{"MÆt n¹ - tuÇn léc ",{0,11,405,1,0,0},0.60}, 
{"MÆt n¹ - «ng giµ n« en ( mµu ®á ) ",{0,11,398,1,0,0},0.45}, 
{"MÆt n¹ - «ng giµ n« en ( mµu xanh l¸ c©y ) ",{0,11,397,1,0,0},0.45}, 
{"MÆt n¹ - «ng giµ n« en ( mµu tr¾ng ) ",{0,11,399,1,0,0},0.45}, 
{"MÆt n¹ - «ng giµ n« en ( mµu vµng ) ",{0,11,400,1,0,0},0.45}, 
{"MÆt n¹ - «ng giµ n« en ( mµu ®á ) ",{0,11,394,1,0,0},0.45}, 
{"MÆt n¹ - gi¸ng sinh thiªn sø ( mµu ®á ) ",{0,11,395,1,0,0},0.45}, 
{"MÆt n¹ - gi¸ng sinh thiªn sø ( mµu xanh l¸ c©y ) ",{0,11,401,1,0,0},0.45}, 
{"MÆt n¹ - gi¸ng sinh thiªn sø ( mµu tr¾ng ) ",{0,11,403,1,0,0},0.45}, 
{"MÆt n¹ - gi¸ng sinh thiªn sø ( mµu vµng ) ",{0,11,404,1,0,0},0.45}, 
{"MÆt n¹ - gi¸ng sinh thiªn sø ( mµu ®á ) ",{0,11,402,1,0,0},0.45}, 
{"MÆt n¹ - tinh linh ( mµu ®á ) ",{0,11,423,1,0,0},0.45}, 
{"MÆt n¹ - tinh linh ( mµu xanh l¸ c©y ) ",{0,11,396,1,0,0},0.45}, 
{"MÆt n¹ - tinh linh (( mµu vµng ) ",{0,11,424,1,0,0},0.45}, 
{"MÆt n¹ - tinh linh (( mµu tÝm ) ",{0,11,422,1,0,0},0.45}, 
{"MÆt n¹ - hoµng tuyÕt nh©n ",{0,11,425,1,0,0},0.45}, 
{"MÆt n¹ - tö tuyÕt nh©n ",{0,11,426,1,0,0},0.45}, 
{"MÆt n¹ - xanh biÕc tuyÕt nh©n ",{0,11,427,1,0,0},0.45}, 
}, 
[1636] = 
{ 
{"§Æc hiÖu tiªn th¶o lé ",{6,1,1181,1,0,0},0.50}, 
{"Tiªn th¶o lé ",{6,1,71,1,0,0},9.50}, 
{"Tr¨m qu¶ lé ",{6,1,73,1,0,0},10.00}, 
{"Thiªn S¬n b¶o lé ",{6,1,72,1,0,0},10.00}, 
{"Phóc duyªn lé ( ®¹i ) ",{6,1,124,1,0,0},5.00}, 
{"Phóc duyªn lé ( trung ) ",{6,1,123,1,0,0},10.00}, 
{"Hoa quÕ r­îu ",{6,1,125,1,0,0},5.00}, 
{"MÆt n¹ - tuÇn léc ",{0,11,405,1,0,0},12.50}, 
{"B«ng tuyÕt ",{6,0,1013,1,0,0},12.50}, 
{"Mµu xanh l¸ c©y lÔ phÈm ",{6,0,1012,1,0,0},8.25}, 
{"Hoa hång ",{6,0,20,1,0,0},12.50}, 
} 
} 
function main(nItemIndex) 
local _, _, PID = GetItemProp(nItemIndex); 
local szItemName = GetItemName(nItemIndex); 
local tbSnowManBossInfo = xmas2007_tbSnowManBoss[PID]; 
local nCurExp = GetTask(xmas2007_SnowManItem_TSK_ExpLimit); 
local nExp = 1000000 
local nTotalRate = 100000; 
local nRate = floor(nTotalRate*5/100) 
if xmas07_makeSnowMan_isUsePeriod() == 0 then 
Msg2Player("Nªn vËt phÈm ®· qua sö dông kú , sÏ biÕn mÊt .") 
return 0 
end 
if xmas2007_SnowManItem_CheckForbitMap() == 1 then 
return 1 
end 
if IsCharged() == 0 or GetLevel() < 50 then 
Msg2Player("50 cÊp trë lªn sung trÞ gi¸ nhµ ch¬i míi cã thÓ sö dông nªn vËt phÈm .") 
return 1; 
end 
if nCurExp >= xmas2007_SnowManItem_ExpMax then 
Msg2Player("Sö dông ng­êi tuyÕt ®· v­ît qua kinh nghiÖm trÞ gi¸ th­îng h¹n , kh«ng thÓ sö dông n÷a liÔu .") 
return 1; 
else 
AddOwnExp(nExp); 
		SetTask(xmas2007_SnowManItem_TSK_ExpLimit,nCurExp+nExp);
end 


WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tUse a %s.",xmas07_makeSnowMan_ActName, 
GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(),szItemName )) 
if random(1,nTotalRate) <= nRate then 
local W,X,Y=GetWorldPos() 
local nSeries = random(0,4) 
AddNpcEx(tbSnowManBossInfo.nBossId, 90, nSeries, SubWorld, X*32, Y*32,1, tbSnowManBossInfo.szName, 2) 

WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tcall a boss %s.",xmas07_makeSnowMan_ActName, 
GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(),szItemName )) 
end 
xmas2007_SnowManItem_GiveRandomItem(xmas2007_SnowManItem_tbItemList[PID]) 
return 0; 
end 



function xmas2007_SnowManItem_CheckForbitMap() 
local W,X,Y=GetWorldPos() 
local nMapId = W; 
local i; 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ chiÕn ®Êu khu cÊm dïng 
Msg2Player("Kh«ng cã ë ®©y tr¹ng th¸i chiÕn ®Êu th× kh«ng thÓ sö dông "); 
return 1 
end 
for i = 249, 318 do -- script viet hoa By http://tranhba.com  tÈy tñy ®¶o s¬n ®éng 
if ( i == nMapId ) then 
Msg2Player("N¬i nµy kh«ng thÓ sö dông nªn vËt phÈm "); 
return 1 
end 
end 
for i = 375, 415 do -- script viet hoa By http://tranhba.com  míi t¨ng tèng kim chiÕn tr­êng b¶n ®å ®­a tin nhiÖm vô b¶n ®å tû vâ ®¹i héi b¶n ®å 
if ( i == nMapId ) then 
Msg2Player("N¬i nµy kh«ng thÓ sö dông nªn vËt phÈm "); 
return 1 
end 
end 

for i = 1, getn( xmas2007_SnowManItem_forbitmap ) do -- script viet hoa By http://tranhba.com  ®Æc thï b¶n ®å cÊm dïng 
if( xmas2007_SnowManItem_forbitmap[i] == nMapId ) then 
Msg2Player("N¬i nµy kh«ng thÓ sö dông nªn vËt phÈm "); 
return 1 
end 
end 

if (CheckAllMaps(nMapId) == 1) then 
Msg2Player("TriÖu håi lÖnh bµi kh«ng thÓ ë nªn khu vùc ®Æc biÖt sö dông ."); 
return 1 
end 
return 0 
end
