Include([[\script\lib\string.lua]]); 
Include([[\script\lib\coordinate.lua]]); 
IL("TIMER") 
IL("TONG") 
MAPFILE = [[\settings\item\004\mask.txt]]; 

-- script viet hoa By http://tranhba.com ====Task Value====-- script viet hoa By http://tranhba.com  
TIMER_ID = 78 -- script viet hoa By http://tranhba.com  ID , ®iÒn viÕt ë \settings\timertask.txt 
TIMER_LAST = 3 * 60 * 60 * 18 -- script viet hoa By http://tranhba.com  cã thÓ sö dông tæng thêi gian , 10 phót 
TIMER_FREQ = 10 * 18 -- script viet hoa By http://tranhba.com  bu«ng th¶ tÇn sè , 5 gi©y 
USE_YES = 1 -- script viet hoa By http://tranhba.com  ®ang sö dông 
USE_NO = 0 -- script viet hoa By http://tranhba.com  kh«ng cã sö dông 

TTK_FACE = {1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033}; 
WSSZ_TK_USING = 1758 -- script viet hoa By http://tranhba.com  cã hay kh«ng ®ang sö dông v« song s¸t trËn 
TK_MASK = 1759; -- script viet hoa By http://tranhba.com  v« song s¸t trËn mÆt n¹ ®Ých Idx 

function main(nItem) 
local nRestCount = GetItemParam(nItem, 1) 

if (nRestCount <= 0) then 
Say("V« song s¸t trËn ®· më ra , cã hay kh«ng muèn t¾t ? ", 2,"T¾t /#closebook("..nItem..")","T¹m thêi kh«ng muèn /no") 
-- script viet hoa By http://tranhba.com ,"Cho thªm mét quyÓn /addbook", " lùa chän ta muèn muèn mÆt n¹ /selectface") 
else 
Say("V« song s¸t trËn ®· ®ãng ®ãng/nh¾m , cã hay kh«ng muèn ®¸nh khai ? ", 2,"Më ra /#openbook("..nItem..")","T¹m thêi kh«ng muèn /no") 
-- script viet hoa By http://tranhba.com ,"Cho thªm mét quyÓn /addbook", " lùa chän ta muèn muèn mÆt n¹ /selectface") 
end 
return 1; 
end 

function addbook() 
local nItem = AddItem(6,1,1106,1,0,0,0) -- script viet hoa By http://tranhba.com  muèn ®iÒn mét míi vËt phÈm ë magicscript.txt 
set_rest_count(nItem, TIMER_LAST/TIMER_FREQ) 
end 

function openbook(nItem) 
local nRestCount = GetItemParam(nItem, 1) 
ItemGenre, DetailType, ParticualrType = GetItemProp(nItem); -- script viet hoa By http://tranhba.com  lÊy ®­îc vËt phÈm lo¹i kh¸c 
if (PlayerIndex ~= GetItemBelong(nItem) or ItemGenre ~= 6 or DetailType ~= 1 or ParticualrType ~= 1106) then 
return 
end; 

if (GetTask(WSSZ_TK_USING) == USE_YES) then 
Say("Ng­¬i ®· më ra mét v« song s¸t trËn ", 0); 
Msg2Player("Ng­¬i ®· më ra mét v« song s¸t trËn "); 
return 
end; 

SetTaskTemp(193, nItem); 
local nMaskIdx = GetItemParam(nItem, 2); 
Say("Nªn v« song s¸t trËn cßn kh«ng cã lùa chän biÓu hiÖn t¹o h×nh , cã thÓ tõ ®· cã t¹o h×nh lo¹i t¨ng thªm mét . nÕu kh«ng , ng­¬i cïng ng­¬i bÞ v« song s¸t trËn ¶nh h­ëng b»ng h÷u ®em lÊy con nhÝm ®Ých ngo¹i h×nh xuÊt hiÖn , ng­¬i qu¶ thËt kh«ng cÇn lùa chän t¹o h×nh sao ? ", 2, 
" ta muèn chän ®Æc biÖt ®Ých t¹o h×nh /sel_face", 
" ta c¶m thÊy con nhÝm ngo¹i h×nh kh«ng tÖ /select_no"); 
end 

function sel_face() 
nItem = GetTaskTemp(193); 
_, nTongID = GetTongName(); 
local tab_face = {}; 
local nMaskIdx; 
local szMaskName = ""; 
for i = 1, 10 do 
nMaskIdx = TONG_GetTaskValue(nTongID, TTK_FACE[i]); 
if (nMaskIdx > 0) then 
			szMaskName = gettabfilestring(MAPFILE, (nMaskIdx + 2), 1);
tinsert(tab_face, szMaskName.." ngo¹i h×nh kh«ng tÖ /#sel_mask("..i..")"); 
end; 
end; 

if (getn(tab_face) == 0) then 
Say("§¾t gióp tr­íc m¾t kh«ng cã t¨ng thªm v« song s¸t trËn ®Ých ngo¹i h×nh , bang chñ cïng tr­ëng l·o cã thÓ ®Õn bang héi ®å ®»ng ®i t¨ng san hoÆc lµ söa ®æi . nhiÒu nhÊt cã m­êi . ng­¬i qu¶ thËt muèn sö dông v« song s¸t trËn sao ? ", 2, 
" ®óng vËy , ta c¶m thÊy con nhÝm ngo¹i h×nh kh«ng tÖ /select_no", 
" kÕt thóc ®èi tho¹i /no"); 
return 
end; 

tinsert(tab_face,"KÕt thóc ®èi tho¹i /no"); 
Say("§¾t gióp tr­íc m¾t v« song s¸t trËn cã ngo¹i h×nh bao gåm trë xuèng mét Ýt , nhiÒu nhÊt cã m­êi , bang chñ cïng tr­ëng l·o cã thÓ ®Õn bang héi ®å ®»ng ®i t¨ng san hoÆc lµ söa ®æi . ng­¬i muèn chän c¸i nµo lµm lÇn nµy sö dông m« h×nh ", getn(tab_face), tab_face); 
end; 

function select_no() 
SetTask(TK_MASK, 35); 
start_book(0); 
end; 

function sel_mask(nMaskIdx) 
local nItem = GetTaskTemp(193); 
if (nItem <= 0) then 
return 
end; 
local nMask = TONG_GetTaskValue(nTongID, TTK_FACE[nMaskIdx]); 
if (nMask == 0) then 
nMask = 35; 
end 
SetTask(TK_MASK, nMask); 

SetSpecItemParam(nItem, 2, nMaskIdx); 
SyncItem(nItem); 
start_book(nMaskIdx) 
end; 

function start_book(nMaskIdx) 
local nItem = GetTaskTemp(193); 
if (nItem <= 0) then 
return 
end; 

_, nTongID = GetTongName(); 
local nRestCount = GetItemParam(nItem, 1) 
local nRestTime = getresttime(nRestCount) * 18; 
local nMask = 35; 
if (nMaskIdx > 0 and nMaskIdx <= 10) then 
nMask = TONG_GetTaskValue(nTongID, TTK_FACE[nMaskIdx]); 
end; 

if (nRestCount > 0) then 
-- script viet hoa By http://tranhba.com  TM_SetTimer( tÇn sè , ID , sè lÇn , lo¹i h×nh #0- h¹ tuyÕn biÕn mÊt ,1- ch©n thËt thêi gian ,2- ë tuyÕn thêi gian ) 
TM_SetTimer(TIMER_FREQ, TIMER_ID, nRestCount, 2) 
nt_setTask(WSSZ_TK_USING, USE_YES); 
set_rest_count(nItem, 0) 

emitskill(nMask, nRestCount) 
Msg2Player("Ng­¬i më ra mét v« song s¸t trËn #") 
end 
end 

function getresttime(nTimes) 
if (nTimes <= 0) then 
return 0 
end; 
return nTimes * 5; 
end; 

function closebook(nItem) 
local nRestCount = GetItemParam(nItem, 1) 
ItemGenre, DetailType, ParticualrType = GetItemProp(nItem); -- script viet hoa By http://tranhba.com  lÊy ®­îc vËt phÈm lo¹i kh¸c 
if (PlayerIndex ~= GetItemBelong(nItem) or ItemGenre ~= 6 or DetailType ~= 1 or ParticualrType ~= 1106) then 
return 
end; 
if (nRestCount <= 0) then 
nRestCount = TM_GetRestCount(TIMER_ID) 
-- script viet hoa By http://tranhba.com  n¬i nµy cßn ph¶i ph¸n ®o¸n mét c¸i b©y giê timer bªn trong kü n¨ng vµ nªn v« song s¸t trËn cã ph¶i hay kh«ng phèi s¸o # nÕu nh­ cã nhiÒu lo¹i v« song s¸t trËn lêi cña # 
-- script viet hoa By http://tranhba.com  if ( kh«ng xøng víi bé/vá ) then nRestCount = 0 end 
TM_StopTimer(TIMER_ID) 
if (not nRestCount or nRestCount <= 0) then 
Msg2Player("Nªn v« song s¸t trËn ®· hao hÕt #") 
RemoveItemByIndex(nItem) 
else 
ChangeOwnFeature( 1, 0, 12); 
SetPkReduceState(0, 80, 80, 50); 
Msg2Player("V« song s¸t trËn ®· ®ãng ®ãng/nh¾m #") 
set_rest_count(nItem, nRestCount) 
end 
nt_setTask(WSSZ_TK_USING, USE_NO); 
else 
Say("Ng­¬i ch­a më c¸i nµy v« song s¸t trËn ", 0); 
Msg2Player("Ng­¬i ch­a më c¸i nµy v« song s¸t trËn "); 
end 
end 

function GetDesc(nItem) 
local nRestCount = GetItemParam(nItem, 1) 
if (nRestCount <= 0) then 
return "<color=blue> nªn v« song s¸t trËn ®· më ra <color>" 
else 
return format("<color=blue> nªn v« song s¸t trËn th­îng kh¶ sö dông %d giê %.2f phót <color>", floor(nRestCount / 360), mod(nRestCount, 360) / 6) 
end 
end 

function set_rest_count(nItem, nRestCount) 
SetSpecItemParam(nItem, 1, nRestCount) 
SyncItem(nItem) 
end 

function no() 
SetTaskTemp(193, 0); 
end 

function OnTimer() 
local nRestCount = TM_GetRestCount(TIMER_ID) 

if (nRestCount == 0) then -- script viet hoa By http://tranhba.com  nÕu nh­ sè lÇn v× 0# 
nt_setTask(WSSZ_TK_USING, USE_NO); 
Msg2Player("Nªn v« song s¸t trËn ®· hao hÕt . ") 
return 
end 

_, nTongID = GetTongName(); 
local nMask = GetTask(TK_MASK); 

emitskill(nMask, nRestCount); 
if (mod(nRestCount, 30) == 0 and nRestCount > 0) then 
Msg2Player("Ng­¬i më ra <color=yellow> v« song s¸t trËn <color> , cßn cã thÓ t¸c dông <color=yellow>"..floor(nRestCount / 360).."<color> giê <color=yellow>"..floor(mod(nRestCount, 360) / 6).."<color> phót . "); 
end; 
end 

function emitskill(nMask, nRestCount) -- script viet hoa By http://tranhba.com  ph¸t kü n¨ng 
local nCamp = GetCamp(); 
local nTongID; 
_, dwTongID = GetTongName(); 
local tab_P = GetMapPlayerList( nCamp, 1, dwTongID );-- script viet hoa By http://tranhba.com  n¬i nµy s­u tÇm toµn gióp 
local nOrgPlayerIdx = PlayerIndex; 
-- script viet hoa By http://tranhba.com  lÇn lÞch , sau ®ã sÏ thiÕt th­îng kü n¨ng 
local nRestTime = 15 * 18; 
	local nMaskIdx = gettabfiledata(MAPFILE, nMask + 2, 15);

for i = 1, getn(tab_P) do 
PlayerIndex = tab_P[i]; 
if (PlayerIndex > 0) then 
SetPkReduceState(nRestTime, 80, 80, 50); 
-- script viet hoa By http://tranhba.com  thay ®æi d¸ng vÎ 
ChangeOwnFeature( 1, nRestTime, nMaskIdx); 
end; 
end 

PlayerIndex = nOrgPlayerIdx; 
end; 

function nt_setTask(nTaskID, nTaskValue) 
SetTask(nTaskID, nTaskValue) 
SyncTaskValue(nTaskID) -- script viet hoa By http://tranhba.com  cïng b­íc ®Õn kh¸ch hµng b­ng 
end 
