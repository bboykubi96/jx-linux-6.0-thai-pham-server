IncludeLib("FILESYS") 
IncludeLib("RELAYLADDER") 
IncludeLib("TITLE") 
IncludeLib("ITEM") 
Include( "\\script\\missions\\freshman_match\\freshman_data.lua" )
Include( "\\script\\missions\\freshman_match\\freshman_info.lua" )

function transtoplace() 

if (GetLastFactionNumber() == -1) then 
Say("Minh chñ vâ l©m cã lÖnh # chØ cã thËp ®¹i m«n ph¸i ng­êi míi cã thÓ tham gia ®¹i héi vâ l©m , ng­¬i kh«ng m«n kh«ng ph¸i , kh«ng thÓ tham gia . gia nhËp thËp ®¹i m«n ph¸i sau míi cã thÓ tham gia tranh tµi !", 0) 
return 
else 
if(GetLastFactionNumber() == 0) then 
NewWorld(CP_MAPTAB[1][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  ThiÕu L©m 
elseif (GetLastFactionNumber() == 1) then 
NewWorld(CP_MAPTAB[2][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Thiªn v­¬ng 
elseif (GetLastFactionNumber() == 2) then 
NewWorld(CP_MAPTAB[3][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  §­êng m«n 
elseif (GetLastFactionNumber() == 3) then 
NewWorld(CP_MAPTAB[4][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  n¨m ®éc 
elseif (GetLastFactionNumber() == 4) then 
NewWorld(CP_MAPTAB[5][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Nga Mi 
elseif (GetLastFactionNumber() == 5) then 
NewWorld(CP_MAPTAB[6][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  thóy khãi 
elseif (GetLastFactionNumber() == 6) then 
NewWorld(CP_MAPTAB[7][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  C¸i Bang 
elseif (GetLastFactionNumber() == 7) then 
NewWorld(CP_MAPTAB[8][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  ngµy nhÉn 
elseif (GetLastFactionNumber() == 8) then 
NewWorld(CP_MAPTAB[9][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  Vâ §­¬ng 
elseif (GetLastFactionNumber() == 9) then 
NewWorld(CP_MAPTAB[10][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])-- script viet hoa By http://tranhba.com  C«n L«n 
end 
Msg2Player("Ng­¬i ®· tiÕn vµo vâ l©m t©n tó cuéc so tµi trµng " ) 
end 
end 

-- script viet hoa By http://tranhba.com  b¶ng xÕp h¹ng ID muèn ®æi -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function checkmap(flag) 
local mapid = SubWorldIdx2ID(SubWorld) 
local ladder = 0 
if (mapid == 397 or mapid == 396) then 
mapname = " ThiÕu L©m " 
ladder = 10131 
elseif (mapid == 399 or mapid == 398) then 
mapname = " Thiªn v­¬ng " 
ladder = 10132 
elseif (mapid == 401 or mapid == 400) then 
mapname = " §­êng m«n " 
ladder = 10133 
elseif (mapid == 403 or mapid == 402) then 
mapname = " n¨m ®éc " 
ladder = 10134 
elseif (mapid == 405 or mapid == 404) then 
mapname = " Nga Mi " 
ladder = 10135 
elseif (mapid == 407 or mapid == 406) then 
mapname = " thóy khãi " 
ladder = 10136 
elseif (mapid == 409 or mapid == 408) then 
mapname = " C¸i Bang " 
ladder = 10137 
elseif (mapid == 411 or mapid == 410) then 
mapname = " ngµy nhÉn " 
ladder = 10138 
elseif (mapid == 413 or mapid == 412) then 
mapname = " Vâ §­¬ng " 
ladder = 10139 
elseif (mapid == 415 or mapid == 414) then 
mapname = " C«n L«n " 
ladder = 10140 
end 
if (flag == 1) then 
return mapname 
elseif(flag == 2) then 
return ladder 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - b¶ng xÕp h¹ng ID muèn ®æi -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

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
Msg2Player("Ng­¬i ®¹t ®­îc mét "..CP_AWARD_ITEM[numth][1]) 
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


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com TaskValue ®İch thao t¸c BEGIN-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  thiÕt trİ nhiÖm vô tr¹ng th¸i 
function nt_settask(nTaskID, nTaskValue) 
SetTask(nTaskID, nTaskValue) 
SyncTaskValue(nTaskID) -- script viet hoa By http://tranhba.com  cïng b­íc ®Õn kh¸ch hµng b­ng 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhiÖm vô tr¹ng th¸i 
function nt_gettask(nTaskID) 
return GetTask(nTaskID) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com TaskValue ®İch thao t¸c END-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com Ini v¨n kiÖn ®İch thao t¸c BEGIN-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
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
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com Ini v¨n kiÖn ®İch thao t¸c END-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  v¨n kiÖn ®İch thao t¸c BEGIN-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  më ra mét v¨n kiÖn 
function biwu_loadfile(filename) 
if (IniFile_Load(filename, filename) == 0) then 
File_Create(filename) 
end 
end 

-- script viet hoa By http://tranhba.com  ®¹t ®­îc v¨n kiÖn trung ®İch szSection ®İch key ®İch trŞ gi¸ 
function biwu_getdata(filename, szsect, szkey) 
return IniFile_GetData(filename, szsect, szkey) 
end 

-- script viet hoa By http://tranhba.com  thiÕt trİ v¨n kiÖn trung ®İch szSection ®İch key trŞ gi¸ lµ szValue 
function biwu_setdata(filename, szsect, szkey, szvalue) 
IniFile_SetData(filename, szsect, szkey, szvalue) 
end 

function biwu_save(filename) 
IniFile_Save(filename, filename) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  v¨n kiÖn ®İch thao t¸c END-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  


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
LeaveTeam() -- script viet hoa By http://tranhba.com  rêi ®i ®éi ngò 
SetCreateTeam(0); -- script viet hoa By http://tranhba.com  cÊm chØ häp thµnh ®éi 
SetTaskTemp(200, 1) -- script viet hoa By http://tranhba.com  cÊm chØ thay ®æi trËn doanh 
SetLogoutRV(1); -- script viet hoa By http://tranhba.com  ®o¹n tuyÕn cïng tö vong lµm mét c¸ sèng l¹i ®iÓm 
SetFightState(0) -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
SetPKFlag(2) -- script viet hoa By http://tranhba.com  tru diÖt m« thøc 
ForbidChangePK(1); -- script viet hoa By http://tranhba.com  cÊm chØ thay ®æi PK m« thøc 
SetPunish(0); -- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
DisabledStall(1) -- script viet hoa By http://tranhba.com  cÊm chØ bµy s¹p 
ForbitTrade(1); -- script viet hoa By http://tranhba.com  cÊm chØ giao dŞch 
DisabledUseTownP(1) -- script viet hoa By http://tranhba.com  h¹n chÕ kú ®ang chuÈn bŞ tŞch cïng tranh tµi dïng ®Şa bªn trong sö dông trë vÒ thµnh phï 
end 

function WL_clear_pl_state() 

camp = GetCamp(); 
SetCurCamp(camp); -- script viet hoa By http://tranhba.com  t¹m thêi trËn doanh cïng ch©n thËt trËn doanh nhÊt trİ 
SetCreateTeam(1); -- script viet hoa By http://tranhba.com  cho phĞp häp thµnh ®éi 
DisabledStall(0); -- script viet hoa By http://tranhba.com  cho phĞp bµy s¹p 
SetTaskTemp(200, 0); -- script viet hoa By http://tranhba.com  cho phĞp thay ®æi bang ph¸i trËn doanh 
SetFightState(0); -- script viet hoa By http://tranhba.com  ®­a v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
SetPunish(1); -- script viet hoa By http://tranhba.com  cã tö vong trõng ph¹t 
ForbidChangePK(0); -- script viet hoa By http://tranhba.com  cho phĞp söa ®æi chiÕn ®Êu m« thøc 
SetPKFlag(0); -- script viet hoa By http://tranhba.com  chiÕn ®Êu m« thøc ®­a v× luyÖn c«ng 
ForbitTrade(0); -- script viet hoa By http://tranhba.com  cho phĞp giao dŞch 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trİ tö vong ch©n vèn v× v« İch 
RestoreOwnFeature(); 
end 


function OnCancel() 
end 
