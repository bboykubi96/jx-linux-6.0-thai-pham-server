-- script viet hoa By http://tranhba.com  t©m t©m t­¬ng ¸nh phï 
-- script viet hoa By http://tranhba.com Suyu 2004.1.12 

-- script viet hoa By http://tranhba.com  v¹n sù th«ng d¹ng lÖ ch©n vèn (BlackBay.03.12.30) 
Include("\\script\\battles\\battlehead.lua");
Include("\\script\\battles\\battleinfo.lua");
Include("\\script\\global\\forbidmap.lua");
IncludeLib("FILESYS") 

function init(tb) 
	local file = "\\settings\\forbitheart.txt"
if (TabFile_Load(file, file) == 0) then 
return 
end 
local count = TabFile_GetRowCount(file) 
if (count < 2) then 
return 
end 
for i = 2, count do 
local mapid = tonumber(TabFile_GetCell(file, i, 1)) 
if (mapid > 0) then 
tb[mapid] = 1 
end 
end 
end 

FORBITMAP_LIST = {} 
init(FORBITMAP_LIST) 

function add_forbitmap(mapid) 
FORBITMAP_LIST[mapid] = 1 
end 

function del_forbitmap(mapid) 
FORBITMAP_LIST[mapid] = nil 
end 


FORBIT_TEMPLATEMAP_LIST = {} 
function add_forbit_templatemap(mapid) 
FORBIT_TEMPLATEMAP_LIST[mapid] = 1 
end 

function del_forbit_templatemap(mapid) 
FORBIT_TEMPLATEMAP_LIST[mapid] = nil 
end 

function use_heart(bForever) 
nSubWorldID = SubWorldIdx2ID(); 
W,X,Y = GetWorldPos(); 
local nMapTemplateID = SubWorldIdx2MapCopy(SubWorld) 

local nSongNumber = 60; -- script viet hoa By http://tranhba.com  tèng ph­¬ng nh©n sè 
local nJinNumber = 70; -- script viet hoa By http://tranhba.com  kim ph­¬ng nh©n sè 
local nMapId = W; 

for i = 1, getn(tbBATTLEMAP) do 
if ( nMapId == tbBATTLEMAP[i] ) then 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1; 
end 
end 
if checkYDBZMaps(nSubWorldID) == 1 then 
Msg2Player("N¬i ®©y ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1 
end 

if (nSubWorldID >= 375 and nSubWorldID <= 386) then 
Msg2Player("ThËt xin lçi , ngµi tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
return 1 
end 

if (nSubWorldID >= 416 and nSubWorldID <= 511) then 
Msg2Player("ThËt xin lçi , ngµi tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
return 1 
end 

if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223) or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342 or nSubWorldID == 175 or nSubWorldID == 337 or nSubWorldID == 338 or nSubWorldID == 339 or ( nSubWorldID >= 387 and nSubWorldID <= 395 ) )then 
Msg2Player("ThËt xin lçi , ngµi tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
-- script viet hoa By http://tranhba.com AddItem(6,1,18,1,0,0,0); 
return 1 
end; 

if (FORBITMAP_LIST[nSubWorldID] == 1 or FORBIT_TEMPLATEMAP_LIST[nMapTemplateID] == 1) then 
Msg2Player("ThËt xin lçi , ngµi tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . ") 
return 1 
end 

-- script viet hoa By http://tranhba.com  vÖ quèc chiÕn tranh chi giã löa liªn thµnh b¶n ®å , kh«ng thÓ sö dông 
if (checkHFMaps(nSubWorldID) == 1) then 
Msg2Player("ThËt xin lçi , ngµi tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
return 1 
end; 

if (checkBWMaps(nSubWorldID) == 1) then 
Msg2Player("ThËt xin lçi , ngµi tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
return 1 
end; 

if checkActMaps(nSubWorldID) == 1 then 
Msg2Player("ThËt xin lçi , ngµi tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
return 1 
end 

if (checkZQMaps(nSubWorldID) == 1) then 
Msg2Player("ThËt xin lçi , ngµi tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
return 1 
end; 

if (checkNEWPRACTICEMaps(nSubWorldID) == 1) then 
Msg2Player("ThËt xin lçi , ngµi tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
return 1 
end; 

-- script viet hoa By http://tranhba.com  t©m t©m t­¬ng ¸nh phï chøc n¨ng bÞ che giÊu , kh«ng thÓ sö dông 
if (IsDisabledUseHeart(PlayerIndex) == 1) then 
Msg2Player("ThËt xin lçi , ngµi tr­íc m¾t kh«ng thÓ sö dông t©m t©m t­¬ng ¸nh phï . "); 
-- script viet hoa By http://tranhba.com AddItem(6,1,18,1,0,0,0); 
return 1 
end; 

Lover = GetMateName(); 
if (Lover == "") then 
Msg2Player("Ch­a lËp gia ®×nh nh©n sÜ kh«ng c¸ch nµo sö dông #"); 
-- script viet hoa By http://tranhba.com AddItem(6,1,18,1,0,0,0); 
return 1 
end; 
if (bForever == 0) then 
QueryWiseManForSB("LoverCB_C", "UnlineCB_C", 1000, Lover); 
return 0 
else 
QueryWiseManForSB("LoverCB_F", "UnlineCB_F", 1000, Lover); 
return 1 
end 
end; 

-- script viet hoa By http://tranhba.com  tiªu hao tÝnh t©m t©m t­¬ng ¸nh phã , mçi lÇn sö dông thµnh c«ng sÏ tiªu hao mét 
function LoverCB_C(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect, nMapTemplateID) 
_LoverCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect,nMapTemplateID ,0) 
end 

-- script viet hoa By http://tranhba.com  vÜnh cöu tÝnh t©m t©m t­¬ng ¸nh phã , kh«ng h¹n sö dông sè lÇn 
function LoverCB_F(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect,nMapTemplateID) 
_LoverCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect,nMapTemplateID, 1) 
end 

-- script viet hoa By http://tranhba.com  nµy hµm sè v× trë thµnh c«ng tuÇn tra tin tøc trë vÒ ®iÒu hµm sè , tham sæ c¸ ®Õm cïng tham sæ thø tù kh«ng cho phÐp söa ®æi 
function _LoverCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect,nMapTemplateID, bForever) 
if (nSubWorldID > 70000) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo truyÒn vµo . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0; 
end 
for i = 1, getn(tbBATTLEMAP) do 
if ( nSubWorldID == tbBATTLEMAP[i] ) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo truyÒn vµo . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0; 
end 
end 

if (nSubWorldID >= 375 and nSubWorldID <= 386) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo truyÒn vµo . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end; 
return 1 
end 

if (nSubWorldID >= 416 and nSubWorldID <= 511) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo truyÒn vµo . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end; 
return 1 
end 

if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223) or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342 or nSubWorldID == 175 or nSubWorldID == 337 or nSubWorldID == 338 or nSubWorldID == 339 or ( nSubWorldID >= 387 and nSubWorldID <= 395 )) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo truyÒn vµo . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end; 
return 0 
end; 

if (FORBITMAP_LIST[nSubWorldID] == 1 or FORBIT_TEMPLATEMAP_LIST[nMapTemplateID] == 1 ) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo truyÒn vµo . ") 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end 
return 0 
end 

if checkActMaps(nSubWorldID) == 1 then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo truyÒn vµo . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 1 
end 

if (checkBWMaps(nSubWorldID) == 1) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end; 

if (checkZQMaps(nSubWorldID) == 1) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end; 
if (checkTONGMaps(SubWorldIdx2MapCopy(SubWorld)) == 1) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end; 
if (checkNEWPRACTICEMaps(nSubWorldID) == 1) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end 
return 0 
end; 

if checkYDBZMaps(nSubWorldID) == 1 then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end 

-- script viet hoa By http://tranhba.com  xøng thØnh tho¶ng bÞ b¶o vÖ ( cã thÓ lµ ë tù ®éng treo ky trung , t©m t©m t­¬ng ¸nh phï chøc n¨ng bÞ che giÊu , kh«ng thÓ sö dông ) 
if (bTargetProtect > 0) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo truyÒn vµo . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end; 

-- script viet hoa By http://tranhba.com  vÖ quèc chiÕn tranh chi giã löa liªn thµnh b¶n ®å , kh«ng thÓ sö dông 
if (checkHFMaps(nSubWorldID) == 1) then 
Msg2Player("ThËt xin lçi , ngµi ®Ých xøng thØnh tho¶ng tr­íc m¾t së t¹i ®å thuéc vÒ khu vùc ®Æc biÖt , kh«ng c¸ch nµo sö dông t©m t©m t­¬ng ¸nh phï . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end; 

NewWorld(nSubWorldID,nPosX, nPosY); 
SetFightState(nFightMode) 
end; 


function UnlineCB_C(TargetName, MoneyToPay) 
return _UnlineCallBack(TargetName, MoneyToPay, 0) 
end 

function UnlineCB_F(TargetName, MoneyToPay) 
return _UnlineCallBack(TargetName, MoneyToPay, 1) 
end 

-- script viet hoa By http://tranhba.com  nµy hµm sè v× thÊt b¹i tuÇn tra ( còng chÝnh lµ kh«ng cã ë ®©y tuyÕn ) tin tøc trë vÒ ®iÒu hµm sè , tham sæ c¸ ®Õm cïng tham sæ thø tù kh«ng cho phÐp söa ®æi 
function _UnlineCallBack(TargetName, MoneyToPay, bForever) 
Say("<#> thËt xin lçi , "..TargetName.."<#> tr­íc m¾t kh«ng cã ë ®©y tuyÕn !",0) 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end; 
return 0 
end; 
