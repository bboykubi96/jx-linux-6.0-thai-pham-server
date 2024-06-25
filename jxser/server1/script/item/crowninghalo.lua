Include([[\script\lib\string.lua]]); 
Include([[\script\lib\coordinate.lua]]); 
IL("TIMER") 
IL("TONG") 
MAPFILE = [[\settings\item\004\mask.txt]]; 

-- script viet hoa By http://tranhba.com ====Task Value====-- script viet hoa By http://tranhba.com  
TIMER_ID = 78 -- script viet hoa By http://tranhba.com  ID , �i�n vi�t � \settings\timertask.txt 
TIMER_LAST = 3 * 60 * 60 * 18 -- script viet hoa By http://tranhba.com  c� th� s� d�ng t�ng th�i gian , 10 ph�t 
TIMER_FREQ = 10 * 18 -- script viet hoa By http://tranhba.com  bu�ng th� t�n s� , 5 gi�y 
USE_YES = 1 -- script viet hoa By http://tranhba.com  �ang s� d�ng 
USE_NO = 0 -- script viet hoa By http://tranhba.com  kh�ng c� s� d�ng 

TTK_FACE = {1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033}; 
WSSZ_TK_USING = 1758 -- script viet hoa By http://tranhba.com  c� hay kh�ng �ang s� d�ng v� song s�t tr�n 
TK_MASK = 1759; -- script viet hoa By http://tranhba.com  v� song s�t tr�n m�t n� ��ch Idx 

function main(nItem) 
local nRestCount = GetItemParam(nItem, 1) 

if (nRestCount <= 0) then 
Say("V� song s�t tr�n �� m� ra , c� hay kh�ng mu�n t�t ? ", 2,"T�t /#closebook("..nItem..")","T�m th�i kh�ng mu�n /no") 
-- script viet hoa By http://tranhba.com ,"Cho th�m m�t quy�n /addbook", " l�a ch�n ta mu�n mu�n m�t n� /selectface") 
else 
Say("V� song s�t tr�n �� ��ng ��ng/nh�m , c� hay kh�ng mu�n ��nh khai ? ", 2,"M� ra /#openbook("..nItem..")","T�m th�i kh�ng mu�n /no") 
-- script viet hoa By http://tranhba.com ,"Cho th�m m�t quy�n /addbook", " l�a ch�n ta mu�n mu�n m�t n� /selectface") 
end 
return 1; 
end 

function addbook() 
local nItem = AddItem(6,1,1106,1,0,0,0) -- script viet hoa By http://tranhba.com  mu�n �i�n m�t m�i v�t ph�m � magicscript.txt 
set_rest_count(nItem, TIMER_LAST/TIMER_FREQ) 
end 

function openbook(nItem) 
local nRestCount = GetItemParam(nItem, 1) 
ItemGenre, DetailType, ParticualrType = GetItemProp(nItem); -- script viet hoa By http://tranhba.com  l�y ���c v�t ph�m lo�i kh�c 
if (PlayerIndex ~= GetItemBelong(nItem) or ItemGenre ~= 6 or DetailType ~= 1 or ParticualrType ~= 1106) then 
return 
end; 

if (GetTask(WSSZ_TK_USING) == USE_YES) then 
Say("Ng��i �� m� ra m�t v� song s�t tr�n ", 0); 
Msg2Player("Ng��i �� m� ra m�t v� song s�t tr�n "); 
return 
end; 

SetTaskTemp(193, nItem); 
local nMaskIdx = GetItemParam(nItem, 2); 
Say("N�n v� song s�t tr�n c�n kh�ng c� l�a ch�n bi�u hi�n t�o h�nh , c� th� t� �� c� t�o h�nh lo�i t�ng th�m m�t . n�u kh�ng , ng��i c�ng ng��i b� v� song s�t tr�n �nh h��ng b�ng h�u �em l�y con nh�m ��ch ngo�i h�nh xu�t hi�n , ng��i qu� th�t kh�ng c�n l�a ch�n t�o h�nh sao ? ", 2, 
" ta mu�n ch�n ��c bi�t ��ch t�o h�nh /sel_face", 
" ta c�m th�y con nh�m ngo�i h�nh kh�ng t� /select_no"); 
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
tinsert(tab_face, szMaskName.." ngo�i h�nh kh�ng t� /#sel_mask("..i..")"); 
end; 
end; 

if (getn(tab_face) == 0) then 
Say("��t gi�p tr��c m�t kh�ng c� t�ng th�m v� song s�t tr�n ��ch ngo�i h�nh , bang ch� c�ng tr��ng l�o c� th� ��n bang h�i �� ��ng �i t�ng san ho�c l� s�a ��i . nhi�u nh�t c� m��i . ng��i qu� th�t mu�n s� d�ng v� song s�t tr�n sao ? ", 2, 
" ��ng v�y , ta c�m th�y con nh�m ngo�i h�nh kh�ng t� /select_no", 
" k�t th�c ��i tho�i /no"); 
return 
end; 

tinsert(tab_face,"K�t th�c ��i tho�i /no"); 
Say("��t gi�p tr��c m�t v� song s�t tr�n c� ngo�i h�nh bao g�m tr� xu�ng m�t �t , nhi�u nh�t c� m��i , bang ch� c�ng tr��ng l�o c� th� ��n bang h�i �� ��ng �i t�ng san ho�c l� s�a ��i . ng��i mu�n ch�n c�i n�o l�m l�n n�y s� d�ng m� h�nh ", getn(tab_face), tab_face); 
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
-- script viet hoa By http://tranhba.com  TM_SetTimer( t�n s� , ID , s� l�n , lo�i h�nh #0- h� tuy�n bi�n m�t ,1- ch�n th�t th�i gian ,2- � tuy�n th�i gian ) 
TM_SetTimer(TIMER_FREQ, TIMER_ID, nRestCount, 2) 
nt_setTask(WSSZ_TK_USING, USE_YES); 
set_rest_count(nItem, 0) 

emitskill(nMask, nRestCount) 
Msg2Player("Ng��i m� ra m�t v� song s�t tr�n #") 
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
ItemGenre, DetailType, ParticualrType = GetItemProp(nItem); -- script viet hoa By http://tranhba.com  l�y ���c v�t ph�m lo�i kh�c 
if (PlayerIndex ~= GetItemBelong(nItem) or ItemGenre ~= 6 or DetailType ~= 1 or ParticualrType ~= 1106) then 
return 
end; 
if (nRestCount <= 0) then 
nRestCount = TM_GetRestCount(TIMER_ID) 
-- script viet hoa By http://tranhba.com  n�i n�y c�n ph�i ph�n �o�n m�t c�i b�y gi� timer b�n trong k� n�ng v� n�n v� song s�t tr�n c� ph�i hay kh�ng ph�i s�o # n�u nh� c� nhi�u lo�i v� song s�t tr�n l�i c�a # 
-- script viet hoa By http://tranhba.com  if ( kh�ng x�ng v�i b�/v� ) then nRestCount = 0 end 
TM_StopTimer(TIMER_ID) 
if (not nRestCount or nRestCount <= 0) then 
Msg2Player("N�n v� song s�t tr�n �� hao h�t #") 
RemoveItemByIndex(nItem) 
else 
ChangeOwnFeature( 1, 0, 12); 
SetPkReduceState(0, 80, 80, 50); 
Msg2Player("V� song s�t tr�n �� ��ng ��ng/nh�m #") 
set_rest_count(nItem, nRestCount) 
end 
nt_setTask(WSSZ_TK_USING, USE_NO); 
else 
Say("Ng��i ch�a m� c�i n�y v� song s�t tr�n ", 0); 
Msg2Player("Ng��i ch�a m� c�i n�y v� song s�t tr�n "); 
end 
end 

function GetDesc(nItem) 
local nRestCount = GetItemParam(nItem, 1) 
if (nRestCount <= 0) then 
return "<color=blue> n�n v� song s�t tr�n �� m� ra <color>" 
else 
return format("<color=blue> n�n v� song s�t tr�n th��ng kh� s� d�ng %d gi� %.2f ph�t <color>", floor(nRestCount / 360), mod(nRestCount, 360) / 6) 
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

if (nRestCount == 0) then -- script viet hoa By http://tranhba.com  n�u nh� s� l�n v� 0# 
nt_setTask(WSSZ_TK_USING, USE_NO); 
Msg2Player("N�n v� song s�t tr�n �� hao h�t . ") 
return 
end 

_, nTongID = GetTongName(); 
local nMask = GetTask(TK_MASK); 

emitskill(nMask, nRestCount); 
if (mod(nRestCount, 30) == 0 and nRestCount > 0) then 
Msg2Player("Ng��i m� ra <color=yellow> v� song s�t tr�n <color> , c�n c� th� t�c d�ng <color=yellow>"..floor(nRestCount / 360).."<color> gi� <color=yellow>"..floor(mod(nRestCount, 360) / 6).."<color> ph�t . "); 
end; 
end 

function emitskill(nMask, nRestCount) -- script viet hoa By http://tranhba.com  ph�t k� n�ng 
local nCamp = GetCamp(); 
local nTongID; 
_, dwTongID = GetTongName(); 
local tab_P = GetMapPlayerList( nCamp, 1, dwTongID );-- script viet hoa By http://tranhba.com  n�i n�y s�u t�m to�n gi�p 
local nOrgPlayerIdx = PlayerIndex; 
-- script viet hoa By http://tranhba.com  l�n l�ch , sau �� s� thi�t th��ng k� n�ng 
local nRestTime = 15 * 18; 
	local nMaskIdx = gettabfiledata(MAPFILE, nMask + 2, 15);

for i = 1, getn(tab_P) do 
PlayerIndex = tab_P[i]; 
if (PlayerIndex > 0) then 
SetPkReduceState(nRestTime, 80, 80, 50); 
-- script viet hoa By http://tranhba.com  thay ��i d�ng v� 
ChangeOwnFeature( 1, nRestTime, nMaskIdx); 
end; 
end 

PlayerIndex = nOrgPlayerIdx; 
end; 

function nt_setTask(nTaskID, nTaskValue) 
SetTask(nTaskID, nTaskValue) 
SyncTaskValue(nTaskID) -- script viet hoa By http://tranhba.com  c�ng b��c ��n kh�ch h�ng b�ng 
end 
