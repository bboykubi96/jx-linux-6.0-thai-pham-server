-- script viet hoa By http://tranhba.com  t�m t�m t��ng �nh ph� 
-- script viet hoa By http://tranhba.com Suyu 2004.1.12 

-- script viet hoa By http://tranhba.com  v�n s� th�ng d�ng l� ch�n v�n (BlackBay.03.12.30) 
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

local nSongNumber = 60; -- script viet hoa By http://tranhba.com  t�ng ph��ng nh�n s� 
local nJinNumber = 70; -- script viet hoa By http://tranhba.com  kim ph��ng nh�n s� 
local nMapId = W; 

for i = 1, getn(tbBATTLEMAP) do 
if ( nMapId == tbBATTLEMAP[i] ) then 
Msg2Player(" � ch� n�y ng��i kh�ng th� s� d�ng ��o n�y c� "); 
return 1; 
end 
end 
if checkYDBZMaps(nSubWorldID) == 1 then 
Msg2Player("N�i ��y ng��i kh�ng th� s� d�ng ��o n�y c� "); 
return 1 
end 

if (nSubWorldID >= 375 and nSubWorldID <= 386) then 
Msg2Player("Th�t xin l�i , ng�i tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
return 1 
end 

if (nSubWorldID >= 416 and nSubWorldID <= 511) then 
Msg2Player("Th�t xin l�i , ng�i tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
return 1 
end 

if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223) or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342 or nSubWorldID == 175 or nSubWorldID == 337 or nSubWorldID == 338 or nSubWorldID == 339 or ( nSubWorldID >= 387 and nSubWorldID <= 395 ) )then 
Msg2Player("Th�t xin l�i , ng�i tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
-- script viet hoa By http://tranhba.com AddItem(6,1,18,1,0,0,0); 
return 1 
end; 

if (FORBITMAP_LIST[nSubWorldID] == 1 or FORBIT_TEMPLATEMAP_LIST[nMapTemplateID] == 1) then 
Msg2Player("Th�t xin l�i , ng�i tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . ") 
return 1 
end 

-- script viet hoa By http://tranhba.com  v� qu�c chi�n tranh chi gi� l�a li�n th�nh b�n �� , kh�ng th� s� d�ng 
if (checkHFMaps(nSubWorldID) == 1) then 
Msg2Player("Th�t xin l�i , ng�i tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
return 1 
end; 

if (checkBWMaps(nSubWorldID) == 1) then 
Msg2Player("Th�t xin l�i , ng�i tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
return 1 
end; 

if checkActMaps(nSubWorldID) == 1 then 
Msg2Player("Th�t xin l�i , ng�i tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
return 1 
end 

if (checkZQMaps(nSubWorldID) == 1) then 
Msg2Player("Th�t xin l�i , ng�i tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
return 1 
end; 

if (checkNEWPRACTICEMaps(nSubWorldID) == 1) then 
Msg2Player("Th�t xin l�i , ng�i tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
return 1 
end; 

-- script viet hoa By http://tranhba.com  t�m t�m t��ng �nh ph� ch�c n�ng b� che gi�u , kh�ng th� s� d�ng 
if (IsDisabledUseHeart(PlayerIndex) == 1) then 
Msg2Player("Th�t xin l�i , ng�i tr��c m�t kh�ng th� s� d�ng t�m t�m t��ng �nh ph� . "); 
-- script viet hoa By http://tranhba.com AddItem(6,1,18,1,0,0,0); 
return 1 
end; 

Lover = GetMateName(); 
if (Lover == "") then 
Msg2Player("Ch�a l�p gia ��nh nh�n s� kh�ng c�ch n�o s� d�ng #"); 
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

-- script viet hoa By http://tranhba.com  ti�u hao t�nh t�m t�m t��ng �nh ph� , m�i l�n s� d�ng th�nh c�ng s� ti�u hao m�t 
function LoverCB_C(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect, nMapTemplateID) 
_LoverCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect,nMapTemplateID ,0) 
end 

-- script viet hoa By http://tranhba.com  v�nh c�u t�nh t�m t�m t��ng �nh ph� , kh�ng h�n s� d�ng s� l�n 
function LoverCB_F(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect,nMapTemplateID) 
_LoverCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect,nMapTemplateID, 1) 
end 

-- script viet hoa By http://tranhba.com  n�y h�m s� v� tr� th�nh c�ng tu�n tra tin t�c tr� v� �i�u h�m s� , tham s� c� ��m c�ng tham s� th� t� kh�ng cho ph�p s�a ��i 
function _LoverCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect,nMapTemplateID, bForever) 
if (nSubWorldID > 70000) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o truy�n v�o . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0; 
end 
for i = 1, getn(tbBATTLEMAP) do 
if ( nSubWorldID == tbBATTLEMAP[i] ) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o truy�n v�o . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0; 
end 
end 

if (nSubWorldID >= 375 and nSubWorldID <= 386) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o truy�n v�o . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end; 
return 1 
end 

if (nSubWorldID >= 416 and nSubWorldID <= 511) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o truy�n v�o . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end; 
return 1 
end 

if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223) or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342 or nSubWorldID == 175 or nSubWorldID == 337 or nSubWorldID == 338 or nSubWorldID == 339 or ( nSubWorldID >= 387 and nSubWorldID <= 395 )) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o truy�n v�o . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end; 
return 0 
end; 

if (FORBITMAP_LIST[nSubWorldID] == 1 or FORBIT_TEMPLATEMAP_LIST[nMapTemplateID] == 1 ) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o truy�n v�o . ") 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end 
return 0 
end 

if checkActMaps(nSubWorldID) == 1 then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o truy�n v�o . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 1 
end 

if (checkBWMaps(nSubWorldID) == 1) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end; 

if (checkZQMaps(nSubWorldID) == 1) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end; 
if (checkTONGMaps(SubWorldIdx2MapCopy(SubWorld)) == 1) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end; 
if (checkNEWPRACTICEMaps(nSubWorldID) == 1) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end 
return 0 
end; 

if checkYDBZMaps(nSubWorldID) == 1 then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end 

-- script viet hoa By http://tranhba.com  x�ng th�nh tho�ng b� b�o v� ( c� th� l� � t� ��ng treo ky trung , t�m t�m t��ng �nh ph� ch�c n�ng b� che gi�u , kh�ng th� s� d�ng ) 
if (bTargetProtect > 0) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o truy�n v�o . "); 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0); 
end 
return 0 
end; 

-- script viet hoa By http://tranhba.com  v� qu�c chi�n tranh chi gi� l�a li�n th�nh b�n �� , kh�ng th� s� d�ng 
if (checkHFMaps(nSubWorldID) == 1) then 
Msg2Player("Th�t xin l�i , ng�i ��ch x�ng th�nh tho�ng tr��c m�t s� t�i �� thu�c v� khu v�c ��c bi�t , kh�ng c�ch n�o s� d�ng t�m t�m t��ng �nh ph� . "); 
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

-- script viet hoa By http://tranhba.com  n�y h�m s� v� th�t b�i tu�n tra ( c�ng ch�nh l� kh�ng c� � ��y tuy�n ) tin t�c tr� v� �i�u h�m s� , tham s� c� ��m c�ng tham s� th� t� kh�ng cho ph�p s�a ��i 
function _UnlineCallBack(TargetName, MoneyToPay, bForever) 
Say("<#> th�t xin l�i , "..TargetName.."<#> tr��c m�t kh�ng c� � ��y tuy�n !",0) 
if (bForever == 0) then 
AddItem(6,1,18,1,0,0,0) 
end; 
return 0 
end; 
