Include([[\script\missions\springfestival\head.lua]]); 
Include([[\script\missions\libfestival\schedule\fairy_smalltimer.lua]]); 

function ontimer_add(nTimeNo) 
if (4 == nTimeNo) then 
festival_nianshou(); 
festival_affiche(); 
end; 

if (nTimeNo < 4) then -- script viet hoa By http://tranhba.com 15 gi©y chuyÖn g× ®Òu kh«ng lµm 
return 
end; 

local nIndex = mod(nTimeNo, 3);-- script viet hoa By http://tranhba.com  tiÕn hµnh 0, 1, 2 gi÷a chuyÓn ®æi 0# thanh trõ tr¸ch , 1 cµ tr¸ch 
if (1 == nIndex) then -- script viet hoa By http://tranhba.com  cµ tr¸ch 
ClearMapObj(CO_MAPID[2]); 
festival_putfairy(); 
return 
elseif (0 == nIndex) then -- script viet hoa By http://tranhba.com  thanh trõ tr¸ch 
festival_change_to_gift(); 
festival_clearfairy(); 
return 
elseif (2 == nIndex) then -- script viet hoa By http://tranhba.com  thanh trõ tr¸ch 
festival_nianshou(); 
festival_givedaoju(); 
return 
end; 
end; 

function festival_affiche() 
local i; 
local nCount = CO_SMALLMAPCOUNT * 2; 
for i = 1, CO_SMALLMAPCOUNT do 
Msg2MSGroup(CO_MISSIONID,"Ng­¬i cÇn dïng 3 lo¹i ®¹o cô trung ®Ých mét lo¹i '<color=yellow> viªn ph¸o <color>', '<color=yellow> thö g¾p <color>', '<color=yellow> th¨ng thiªn ph¸o tr­îng <color>'."..CO_ANIMALNAME.."!", i); 
end; 

    for i = CO_SMALLMAPCOUNT + 1, nCount do
Msg2MSGroup(CO_MISSIONID,"Tr­íc m¾t lµ "..CO_ANIMALNAME.." cÇn t×m '<color=yellow>"..CO_MOUSENAME.."<color>' míi cã thÓ dÉn t­ëng !", i); 
end; 
end; 
-- script viet hoa By http://tranhba.com  míi b¾t ®Çu hãa vÞ trÝ liÖt biÓu 
function festival_putfairy() 
local i, j; 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CO_MAPID[2]) 
local scriptfile = [[\script\missions\springfestival\npcs\festival_shrewmouse.lua]]; 

	local nBeginID = GetMissionV(MS_CO_BEGINGMAPID) + 1;
	local nLoopLimit = nBeginID + GetMissionV(MS_CO_GAMECOUNT) - 1;

for i = nBeginID, nLoopLimit do 
if (i > CO_SMALLMAPCOUNT) then 
j = mod(i, CO_SMALLMAPCOUNT); 
else 
j = i; 
end; 
nNPCCount = random(CO_MOUSECOUNT_MIN, CO_MOUSECOUNT_MAX); 
		local PosFile = format("\\settings\\maps\\"..CO_MAPPOINTFLORDER.."\\elf_%d.txt", j);
PosTab = getndata(PosFile, nNPCCount) 

tabadddiagnpc(PosTab, scriptfile, CO_NPCID, CO_MOUSENAME) 
end; 
SubWorld = OldWorld; 
end; 


-- script viet hoa By http://tranhba.com  thanh trõ gi¸ng sinh tinh linh 
function festival_clearfairy() 
local OldWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CO_MAPID[2]); 
ClearMapNpcWithName(CO_MAPID[2], CO_MOUSENAME); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ n¨m thó thanh trõ 
SubWorld = OldWorld; 
end; 
function festival_nianshou() 
local i; 
for i = 1, CO_SMALLMAPCOUNT do 
if (GetMSPlayerCount(CO_MISSIONID, i) > 0) then 
local tabPlayers = {}; 
tabPlayers = festival_getman(i); 
festival_make_nianshou(i, tabPlayers); 
end; 
end; 
end; 
-- script viet hoa By http://tranhba.com  hµm sè ph¸n ®o¸n trong trß ch¬i hay kh«ng cßn cã thÝch øng sè l­îng ®Ých n¨m thó , trë vÒ nil lµ n¨m thó kh«ng tiÕn hµnh biÕn hãa 
function festival_getman(nGroupID) 
local nPlayerCount = GetMSPlayerCount(CO_MISSIONID, nGroupID); 
    local nNianshouCount = GetMSPlayerCount(CO_MISSIONID, nGroupID + CO_SMALLMAPCOUNT);

local tabPlayers = {}; 
local tabPlayersOne = {}; 
local i; 
local idx, pidx; 
for i = 1, 2 do 
idx, pidx = GetNextPlayer(CO_MISSIONID, idx, nGroupID); 

if (pidx > 0) then 
tabPlayers[i] = pidx; 
end; 

if (idx == 0) then 
break; 
end; 
end; 
if (getn(tabPlayers) > 0) then 
tabPlayersOne[1] = tabPlayers[1]; 
end; 

if (2 == nNianshouCount) then -- script viet hoa By http://tranhba.com  nÕu nh­ hai n¨m thó ®Òu ë ®©y 
return nil; 
elseif (1 == nNianshouCount) then -- script viet hoa By http://tranhba.com  nÕu nh­ chØ cã mét n¨m thó ë , ph¸n ®o¸n nh©n sè , thªm mét n¨m thó 
if (nPlayerCount >= 5) then 
return tabPlayersOne; 
end; 
elseif (0 == nNianshouCount) then -- script viet hoa By http://tranhba.com  nÕu nh­ n¨m thó còng ch¹y s¹ch liÔu 
if (nPlayerCount >= 6) then 
return tabPlayers; 
else 
return tabPlayersOne; 
end; 
else 
return nil; 
end; 
end; 

function festival_make_nianshou(nGroupID, tabPlayers) 
if ("table" ~= type(tabPlayers)) then 
return 
end; 
local nPlayerCount = getn(tabPlayers); 
if (0 == nPlayerCount) then 
return 
end; 
local i; 
local nOldPlayer = PlayerIndex; 
for i = 1, nPlayerCount do 
PlayerIndex = tabPlayers[i]; 
DelMSPlayer(CO_MISSIONID, nGroupID); 
        AddMSPlayer(CO_MISSIONID, nGroupID + CO_SMALLMAPCOUNT);
        SetTask(TK_CO_GROUPID, nGroupID + CO_SMALLMAPCOUNT);
ChangeOwnFeature(0,0,0); -- script viet hoa By http://tranhba.com  biÕn thµnh cê tung bay ng­êi 
SetCurCamp(2); -- script viet hoa By http://tranhba.com  biÕn thµnh mµu xanh l¸ c©y 
end; 
PlayerIndex = nOldPlayer; 
end; 

-- script viet hoa By http://tranhba.com  ®em kh«ng cã chót r¬i ®Ých ®i l¹c ®Ých hµi tö biÕn thµnh lÔ tói 
function festival_change_to_gift() 
local i; 
local x, y, subworld, npcidx; 
local npcidxtab = GetMapNpcWithName(CO_MAPID[2], CO_MOUSENAME); 
local nNPCCount = getn(npcidxtab); 
local nItemIdx = -1; 
for i = 1, nNPCCount do 
x, y, subworld = GetNpcPos(npcidxtab[i]); 
nItemIdx = DropItem(subworld, x, y, -1, 6, 1, 1050, 1, 0, 0, 0); 
if (2 >= 1) then 
SetSpecItemParam(nItemIdx, 1, 1); -- script viet hoa By http://tranhba.com 1 bµy tá thËt , 2 bµy tá gi¶ 
SetSpecItemParam(nItemIdx, 2, 1); -- script viet hoa By http://tranhba.com  chØ ®Ó cho mét nhµ ch¬i gi¶n 
end; 
end; 
end; 

festival_tab_nianshou = 
{ 
-- script viet hoa By http://tranhba.com {nItmeID, nItemCount}, 
{1035, 0.05 }, 
{1036, 0.05 }, 
{1037, 0.05 }, 
{1038, 0.05 }, 
{1039, 0.2 }, 
{1040, 0.025 }, 
{1041, 0.2 }, 
{1042, 0.2 }, 
{1043, 0.1 }, 
{1044, 0.025 }, 
{1045, 0.05 }, 
} 

festival_tab_normal = 
{ 
-- script viet hoa By http://tranhba.com {nItmeID, nItemCount}, 
{1046, 0.7}, 
{1047, 0.15}, 
{1048, 0.15}, 
} 

-- script viet hoa By http://tranhba.com  ®em ®¹o cô cho nhµ ch¬i cöa 
function festival_givedaoju() 
local nOldPlayer = PlayerIndex; 
local i, j, nGroupID; 
local idx, pidx; 
idx = 0; 
local nCount = CO_SMALLMAPCOUNT * 2; 
for i = 1, nCount do 
if (GetMSPlayerCount(CO_MISSIONID, i) > 0) then 
idx = 0; 
for j = 1, 400 do 
idx, pidx = GetNextPlayer(CO_MISSIONID, idx, i); 
if (pidx > 0) then 
PlayerIndex = pidx; 
nGroupID = GetTask(TK_CO_GROUPID); 
if (nGroupID <= CO_SMALLMAPCOUNT) then 
festival_give_Item(festival_tab_normal, 3); 
else 
festival_give_Item(festival_tab_nianshou, 3); 
end; 
end; 

if (idx == 0) then 
break; 
end; 
end; 
end; 
end; 
PlayerIndex = nOldPlayer; 
end; 

function festival_give_Item(tabItem, nTotal) -- script viet hoa By http://tranhba.com  b×nh th­êng nhµ ch¬i ph¸t ®¹o cô 
if (0 == getn(tabItem)) then 
return 
end; 

local i, j; 
nTableCount = getn(tabItem); 
local nItemCount; 
local nItemID; 
for i = 1, nTableCount do 
nItemID = tabItem[i][1]; 
nItemCount = tabItem[i][2] * nTotal; 
local nItemCount1 = nItemCount - floor(nItemCount); 
local nSeed = random(1, 100); 
if (nSeed <= nItemCount1 * 100) then 
nItemCount = ceil(nItemCount); 
else 
nItemCount = floor(nItemCount); 
end; 
for j = 1, nItemCount do 
AddItem(6, 1, nItemID, 1, 0, 0, 0); 
end; 
end; 
end; 
