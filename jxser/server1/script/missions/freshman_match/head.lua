IncludeLib("FILESYS") 
IncludeLib("RELAYLADDER") 
IncludeLib("TITLE") 
IncludeLib("ITEM") 
Include( "\\script\\missions\\freshman_match\\freshman_data.lua" )
Include( "\\script\\missions\\freshman_match\\freshman_info.lua" )

function transtoplace() 

if (GetLastFactionNumber() == -1) then 
Say("Minh ch� v� l�m c� l�nh # ch� c� th�p ��i m�n ph�i ng��i m�i c� th� tham gia ��i h�i v� l�m , ng��i kh�ng m�n kh�ng ph�i , kh�ng th� tham gia . gia nh�p th�p ��i m�n ph�i sau m�i c� th� tham gia tranh t�i !", 0) 
return 
else 
if(GetLastFactionNumber() == 0) then 
NewWorld(CP_MAPTAB[1][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Thi�u L�m 
elseif (GetLastFactionNumber() == 1) then 
NewWorld(CP_MAPTAB[2][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Thi�n v��ng 
elseif (GetLastFactionNumber() == 2) then 
NewWorld(CP_MAPTAB[3][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  ���ng m�n 
elseif (GetLastFactionNumber() == 3) then 
NewWorld(CP_MAPTAB[4][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  n�m ��c 
elseif (GetLastFactionNumber() == 4) then 
NewWorld(CP_MAPTAB[5][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Nga Mi 
elseif (GetLastFactionNumber() == 5) then 
NewWorld(CP_MAPTAB[6][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  th�y kh�i 
elseif (GetLastFactionNumber() == 6) then 
NewWorld(CP_MAPTAB[7][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  C�i Bang 
elseif (GetLastFactionNumber() == 7) then 
NewWorld(CP_MAPTAB[8][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  ng�y nh�n 
elseif (GetLastFactionNumber() == 8) then 
NewWorld(CP_MAPTAB[9][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  V� ���ng 
elseif (GetLastFactionNumber() == 9) then 
NewWorld(CP_MAPTAB[10][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  C�n L�n 
end 
Msg2Player("Ng��i �� ti�n v�o v� l�m t�n t� cu�c so t�i tr�ng " ) 
end 
end 

-- script viet hoa By http://tranhba.com  b�ng x�p h�ng ID mu�n ��i -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function checkmap(flag) 
local mapid = SubWorldIdx2ID(SubWorld) 
local ladder = 0 
if (mapid == 397 or mapid == 396) then 
mapname = " Thi�u L�m " 
ladder = 10131 
elseif (mapid == 399 or mapid == 398) then 
mapname = " Thi�n v��ng " 
ladder = 10132 
elseif (mapid == 401 or mapid == 400) then 
mapname = " ���ng m�n " 
ladder = 10133 
elseif (mapid == 403 or mapid == 402) then 
mapname = " n�m ��c " 
ladder = 10134 
elseif (mapid == 405 or mapid == 404) then 
mapname = " Nga Mi " 
ladder = 10135 
elseif (mapid == 407 or mapid == 406) then 
mapname = " th�y kh�i " 
ladder = 10136 
elseif (mapid == 409 or mapid == 408) then 
mapname = " C�i Bang " 
ladder = 10137 
elseif (mapid == 411 or mapid == 410) then 
mapname = " ng�y nh�n " 
ladder = 10138 
elseif (mapid == 413 or mapid == 412) then 
mapname = " V� ���ng " 
ladder = 10139 
elseif (mapid == 415 or mapid == 414) then 
mapname = " C�n L�n " 
ladder = 10140 
end 
if (flag == 1) then 
return mapname 
elseif(flag == 2) then 
return ladder 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - b�ng x�p h�ng ID mu�n ��i -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function validateDate(startt,endt) 
local now = tonumber(date("%y%m%d%H")) 
if(now >= startt and now < endt) then 
return 1 
end 
return nil 
end 

function AddAword(level, result) 
local awardpro = {} 
local fac = 1 

if ( level >= 50 and level <=59 ) then 
fac = 1 
elseif ( level >= 60 and level <= 69 ) then 
fac = 1.3 
elseif ( level >= 70 and level <= 79 ) then 
fac = 1.8 
elseif ( level >= 80 ) then 
fac = 3.8 
end 
	aword = (700 + ( level * 4 - 150 ) / 5 * 100 ) * result * fac
AddOwnExp(aword) 

if( result ~= 60 )then 
return 
end 
for i = 1, getn(CP_AWARD_ITEM) do 
awardpro[i] = CP_AWARD_ITEM[i][3] 
end 
numth = randByProbability(awardpro) 
if (getn(CP_AWARD_ITEM[numth][2]) == 6 ) then 
AddItem(CP_AWARD_ITEM[numth][2][1], CP_AWARD_ITEM[numth][2][2], CP_AWARD_ITEM[numth][2][3], CP_AWARD_ITEM[numth][2][4], CP_AWARD_ITEM[numth][2][5], CP_AWARD_ITEM[numth][2][6]) 
else 
AddEventItem(CP_AWARD_ITEM[numth][2][2]) 
end 
Msg2Player("Ng��i ��t ���c m�t "..CP_AWARD_ITEM[numth][1]) 
end 

function randByProbability(aryProbability) 
local nRandNum; 
local nSum = 0; 
local nArgCount = getn( aryProbability ); 
for i = 1, nArgCount do 
		nSum = nSum + aryProbability[i];
end 
	nRandNum = mod( random( nSum ) + random( 1009 ), nSum ) + 1;
for i = nArgCount, 1, -1 do 
nSum = nSum - aryProbability[i]; 
if( nRandNum > nSum ) then 
return i; 
end 
end 
end 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com TaskValue ��ch thao t�c BEGIN-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� tr�ng th�i 
function nt_settask(nTaskID, nTaskValue) 
SetTask(nTaskID, nTaskValue) 
SyncTaskValue(nTaskID) -- script viet hoa By http://tranhba.com  c�ng b��c ��n kh�ch h�ng b�ng 
end 

-- script viet hoa By http://tranhba.com  l�y ���c nhi�m v� tr�ng th�i 
function nt_gettask(nTaskID) 
return GetTask(nTaskID) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com TaskValue ��ch thao t�c END-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com Ini v�n ki�n ��ch thao t�c BEGIN-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function GetIniFileData(mapfile, sect, key) 
if (IniFile_Load(mapfile, mapfile) == 0) then 
print("Load IniFile Error!"..mapfile) 
return "" 
else 
return IniFile_GetData(mapfile, sect, key) 
end 
end 

function GetTabFileHeight(mapfile) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFileError!"..mapfile); 
return 0 
end 
return TabFile_GetRowCount(mapfile) - 1 
end; 

function GetTabFileData(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
		return tonumber(TabFile_GetCell(mapfile, row + 1, col))
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com Ini v�n ki�n ��ch thao t�c END-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  v�n ki�n ��ch thao t�c BEGIN-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  m� ra m�t v�n ki�n 
function biwu_loadfile(filename) 
if (IniFile_Load(filename, filename) == 0) then 
File_Create(filename) 
end 
end 

-- script viet hoa By http://tranhba.com  ��t ���c v�n ki�n trung ��ch szSection ��ch key ��ch tr� gi� 
function biwu_getdata(filename, szsect, szkey) 
return IniFile_GetData(filename, szsect, szkey) 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� v�n ki�n trung ��ch szSection ��ch key tr� gi� l� szValue 
function biwu_setdata(filename, szsect, szkey, szvalue) 
IniFile_SetData(filename, szsect, szkey, szvalue) 
end 

function biwu_save(filename) 
IniFile_Save(filename, filename) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  v�n ki�n ��ch thao t�c END-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  


function Sort_Point(array) 
local orgindex = PlayerIndex 
local point_1 = 0 
local point_2 = 0 
local wincount_1 = 0 
local wincount_2 = 0 
local winrate_1 = 0 
local winrate_2 = 0 
for i = 1, getn(array) do 
for j = getn(array), 2, -1 do 
PlayerIndex = array[j] 
point_1 = nt_gettask(CP_TASKID_ROUND) 
wincount_1 = nt_gettask(CP_TASKID_WIN) 
if (point_1 == 0 or wincount_1 == 0) then 
winrate_1 = 0 
else 
winrate_1 = wincount_1/point_1 
end 

PlayerIndex = array[j - 1] 
point_2 = nt_gettask(CP_TASKID_ROUND) 
wincount_2 = nt_gettask(CP_TASKID_WIN) 
if (point_2 == 0 or wincount_2 == 0) then 
winrate_2 = 0 
else 
winrate_2 = wincount_2/point_2 
end 

if (winrate_1 > winrate_2) then 
a = array[j] 
array[j] = array[j - 1] 
array[j - 1] = a 
end 
end 
end 
PlayerIndex = orgindex 
return array 
end 


function WL_set_pl_state() 
LeaveTeam() -- script viet hoa By http://tranhba.com  r�i �i ��i ng� 
SetCreateTeam(0); -- script viet hoa By http://tranhba.com  c�m ch� h�p th�nh ��i 
SetTaskTemp(200, 1) -- script viet hoa By http://tranhba.com  c�m ch� thay ��i tr�n doanh 
SetLogoutRV(1); -- script viet hoa By http://tranhba.com  �o�n tuy�n c�ng t� vong l�m m�t c� s�ng l�i �i�m 
SetFightState(0) -- script viet hoa By http://tranhba.com  kh�ng ph�i l� tr�ng th�i chi�n ��u 
SetPKFlag(2) -- script viet hoa By http://tranhba.com  tru di�t m� th�c 
ForbidChangePK(1); -- script viet hoa By http://tranhba.com  c�m ch� thay ��i PK m� th�c 
SetPunish(0); -- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
DisabledStall(1) -- script viet hoa By http://tranhba.com  c�m ch� b�y s�p 
ForbitTrade(1); -- script viet hoa By http://tranhba.com  c�m ch� giao d�ch 
DisabledUseTownP(1) -- script viet hoa By http://tranhba.com  h�n ch� k� �ang chu�n b� t�ch c�ng tranh t�i d�ng ��a b�n trong s� d�ng tr� v� th�nh ph� 
end 

function WL_clear_pl_state() 

camp = GetCamp(); 
SetCurCamp(camp); -- script viet hoa By http://tranhba.com  t�m th�i tr�n doanh c�ng ch�n th�t tr�n doanh nh�t tr� 
SetCreateTeam(1); -- script viet hoa By http://tranhba.com  cho ph�p h�p th�nh ��i 
DisabledStall(0); -- script viet hoa By http://tranhba.com  cho ph�p b�y s�p 
SetTaskTemp(200, 0); -- script viet hoa By http://tranhba.com  cho ph�p thay ��i bang ph�i tr�n doanh 
SetFightState(0); -- script viet hoa By http://tranhba.com  ��a v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
SetPunish(1); -- script viet hoa By http://tranhba.com  c� t� vong tr�ng ph�t 
ForbidChangePK(0); -- script viet hoa By http://tranhba.com  cho ph�p s�a ��i chi�n ��u m� th�c 
SetPKFlag(0); -- script viet hoa By http://tranhba.com  chi�n ��u m� th�c ��a v� luy�n c�ng 
ForbitTrade(0); -- script viet hoa By http://tranhba.com  cho ph�p giao d�ch 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
RestoreOwnFeature(); 
end 


function OnCancel() 
end 
