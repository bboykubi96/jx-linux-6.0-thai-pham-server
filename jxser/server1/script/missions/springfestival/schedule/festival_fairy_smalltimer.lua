Include([[\script\missions\springfestival\festival_head.lua]]); 

function OnTimer() 
	local nTimerState = GetMissionV(MS_FE_TIMERSTATE) + 1;
SetMissionV(MS_FE_TIMERSTATE, nTimerState); 

if (4 == nTimerState) then 
festival_nianshou(); 
festival_affiche(); 
end; 

if (nTimerState < 4) then -- script viet hoa By http://tranhba.com 15 gi�y chuy�n g� ��u kh�ng l�m 
return 
end; 
nTimerState = mod(nTimerState, 3);-- script viet hoa By http://tranhba.com  ti�n h�nh 0, 1, 2 gi�a chuy�n ��i 0# thanh tr� tr�ch , 1 c� tr�ch 
if (1 == nTimerState) then 
festival_putfairy(); 
return 
elseif (0 == nTimerState) then 
festival_change_to_gift(FE_MAPID[2], FE_MOUSENAME); 
festival_clearfairy(FE_MOUSENAME); 
return 
elseif (2 == nTimerState) then 
festival_givedaoju(FE_MISSIONID); 
festival_nianshou(); 
return 
end; 
end; 

function festival_affiche() 
local i; 
local nCount = FE_SMALLMAPCOUNT * 2; 
for i = 1, FE_SMALLMAPCOUNT do 
Msg2MSGroup(FE_MISSIONID,"Ng��i c�n d�ng 3 lo�i ��o c� trung ��ch m�t lo�i '<color=yellow> ph�o tr��ng <color>', '<color=yellow> th� ph�o <color>', '<color=yellow> th�ng thi�n ph�o tr��ng <color>' # t�i xua �u�i qu�i v�t ", i); 
end; 

    for i = FE_SMALLMAPCOUNT + 1, nCount do
Msg2MSGroup(FE_MISSIONID,"Tr��c m�t ng��i l� qu�i th� , c�n b�t ���c <color=yellow> l�c ���ng ��a tr� <color> m�i c� th� d�n t��ng !", i); 
end; 
end; 

function festival_nianshou() 
local i; 
for i = 1, FE_SMALLMAPCOUNT do 
if (GetMSPlayerCount(FE_MISSIONID, i) > 0) then 
local tabPlayers = {}; 
tabPlayers = festival_getman(FE_MISSIONID, i); 
festival_make_nianshou(FE_MISSIONID, i, tabPlayers); 
end; 
end; 
end; 
-- script viet hoa By http://tranhba.com  h�m s� ph�n �o�n trong tr� ch�i hay kh�ng c�n c� th�ch �ng s� l��ng ��ch n�m th� , tr� v� nil l� n�m th� kh�ng ti�n h�nh bi�n h�a 
function festival_getman(nMissionID, nGroupID) 
local nPlayerCount = GetMSPlayerCount(nMissionID, nGroupID); 
    local nNianshouCount = GetMSPlayerCount(nMissionID, nGroupID + FE_SMALLMAPCOUNT);

local tabPlayers = {}; 
local tabPlayersOne = {}; 
local i; 
local idx, pidx; 
for i = 1, 2 do 
idx, pidx = GetNextPlayer(nMissionID, idx, nGroupID); 

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

if (2 == nNianshouCount) then -- script viet hoa By http://tranhba.com  n�u nh� hai n�m th� ��u � ��y 
return nil; 
elseif (1 == nNianshouCount) then -- script viet hoa By http://tranhba.com  n�u nh� ch� c� m�t n�m th� � , ph�n �o�n nh�n s� , th�m m�t n�m th� 
if (nPlayerCount >= 5) then 
return tabPlayersOne; 
end; 
elseif (0 == nNianshouCount) then -- script viet hoa By http://tranhba.com  n�u nh� n�m th� c�ng ch�y s�ch li�u 
if (nPlayerCount >= 6) then 
return tabPlayers; 
else 
return tabPlayersOne; 
end; 
else 
return nil; 
end; 
end; 

function festival_make_nianshou(nMissionID, nGroupID, tabPlayers) 
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
DelMSPlayer(nMissionID, nGroupID); 
        AddMSPlayer(nMissionID, nGroupID + FE_SMALLMAPCOUNT);
        SetTask(TK_FE_GROUPID, nGroupID + FE_SMALLMAPCOUNT);
ChangeOwnFeature(0,0,1141); -- script viet hoa By http://tranhba.com  bi�n th�nh c� tung bay ng��i 
SetCurCamp(2); -- script viet hoa By http://tranhba.com  bi�n th�nh m�u xanh l� c�y 
end; 
PlayerIndex = nOldPlayer; 
end; 

-- script viet hoa By http://tranhba.com  �em kh�ng c� ch�t r�i ��ch �i l�c ��ch h�i t� bi�n th�nh l� t�i 
function festival_change_to_gift(nMapID, szNianBoyName) 
local npcidxtab = GetMapNpcWithName(nMapID, szNianBoyName); 
if ("table" ~= type(npcidxtab)) then 
return 
end; 
local i; 
local x, y, subworld, npcidx; 
local nNPCCount = getn(npcidxtab); 
local nItemIdx = -1; 
for i = 1, nNPCCount do 
x, y, subworld = GetNpcPos(npcidxtab[i]); 
nItemIdx = DropItem(subworld, x, y, -1, 6, 1, 1050, 1, 0, 0, 0); 
if (2 >= 1) then 
SetSpecItemParam(nItemIdx, 1, 1); -- script viet hoa By http://tranhba.com 1 b�y t� th�t , 2 b�y t� gi� 
SetSpecItemParam(nItemIdx, 2, 1); -- script viet hoa By http://tranhba.com  ch� �� cho m�t nh� ch�i gi�n 
end; 
end; 
end; 

festival_tab_nianshou = 
{ 
-- script viet hoa By http://tranhba.com {nItmeID, nItemCount}, 
{1035, 0.05}, 
{1036, 0.05}, 
{1037, 0.05}, 
{1038, 0.05}, 
{1039, 0.05}, 
{1040, 0.125}, 
{1041, 0.2}, 
{1042, 0.2}, 
{1043, 0.1}, 
{1044, 0.125}, 
{1045, 0.05}, 
} 

festival_tab_normal = 
{ 
-- script viet hoa By http://tranhba.com {nItmeID, nItemCount}, 
{1046, 0.7}, 
{1047, 0.15}, 
{1048, 0.15}, 
} 

-- script viet hoa By http://tranhba.com  �em ��o c� cho nh� ch�i c�a 
function festival_givedaoju(nMissionID) 
local nOldPlayer = PlayerIndex; 
local i, j, nGroupID; 
local idx, pidx; 
idx = 0; 
local nCount = FE_SMALLMAPCOUNT * 2; 
for i = 1, nCount do 
if (GetMSPlayerCount(nMissionID, i) > 0) then 
idx = 0; 
for j = 1, 400 do 
idx, pidx = GetNextPlayer(nMissionID, idx, i); 
if (pidx > 0) then 
PlayerIndex = pidx; 
nGroupID = GetTask(TK_FE_GROUPID); 
if (nGroupID <= FE_SMALLMAPCOUNT) then 
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

function festival_give_Item(tabItem, nTotal) -- script viet hoa By http://tranhba.com  b�nh th��ng nh� ch�i ph�t ��o c� 
if ("table" ~= type(tabItem)) then 
return 
end; 

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
