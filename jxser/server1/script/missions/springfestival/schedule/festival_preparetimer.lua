Include([[\script\missions\springfestival\festival_head.lua]]); 
fest_head_MISSIONID = FE_MISSIONID; 
fest_head_GameMapID = FE_MAPID[2]; 
fest_head_PrepareMapID = FE_MAPID[1]; 

function OnTimer() 
	local nNewsValue = GetMissionV(MS_FE_PREPARENEWSVALUE) + 1;
SetMissionV(MS_FE_PREPARENEWSVALUE, nNewsValue); 

local nRemain = 5 - floor(nNewsValue / 2); 
if (10 == nNewsValue) then -- script viet hoa By http://tranhba.com 5 phót , ®Ó cho nhµ ch¬i vµo trµng 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(fest_head_GameMapID); 
OpenMission(FE_MISSIONID) 
players_entrance(fest_head_PrepareMapID, FE_PREPAREMISSIONID, FE_MAXPLAYERCOUNT, MS_FE_BEGINGMAPID, FE_SMALLMAPCOUNT) 
SubWorld = SubWorldID2Idx(fest_head_PrepareMapID); 
CloseMission(FE_PREPAREMISSIONID); 
gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 2); 
SubWorld = OldSubWorld; 
return 
elseif (0 == mod(nNewsValue, 2)) then 
if (nRemain > 0) then 
Msg2MSAll(FE_PREPAREMISSIONID,"Cßn l¹i "..nRemain.." phót b¾t ®Çu tranh tµi !"); 
end; 
elseif (9 == nNewsValue) then 
Msg2MSAll(FE_PREPAREMISSIONID,"Cßn cã 30 phót míi cã thÓ b¾t ®Çu !"); 
end; 
end; 

-- script viet hoa By http://tranhba.com  mét c¸i hµm sè chØ ë c¸i nµy v¨n kiÖn dïng ®Õn cho nªn , kh«ng viÕt ®Õn head trong 
function players_entrance(nPrePareMapID, nPrePareMissionID, nMaxPlayerCount, nMIDBeginMapID, nGameCount) -- script viet hoa By http://tranhba.com  ngÉu nhiªn ®Ó cho nhµ ch¬i tiÕn vµo ®Õn n¬i chèn # 
local tabPlayerIdx = {}; 
local pidx = 0; 
local idx = 0; 
local i; 
local j = 1; 


local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(nPrePareMapID); 
if (0 >= GetMSPlayerCount(nPrePareMissionID, 0)) then 
return 
end; 

for i = 1, 500 do 
idx, pidx = GetNextPlayer(nPrePareMissionID, idx, 0); 

if (pidx > 0) then 
tabPlayerIdx[j] = pidx; 
			j = j + 1;
end; 

if (idx == 0) then 
break; 
end; 
end; 
SubWorld = OldSubWorld; 

-- script viet hoa By http://tranhba.com  tiÕn hµnh hçn lo¹n 
local tabSubTeam = chaos(tabPlayerIdx, FE_MAXPLAYERCOUNT); 
j = getn(tabSubTeam); 
if (nMaxPlayerCount < 1) then 
nMaxPlayerCount = 1; 
end; 
local nBeginMap = random(1, nGameCount); 
SetMissionV(nMIDBeginMapID, nBeginMap); 
for i = 1, j do 
local nGroup = i; 
		local nMap = nBeginMap + i - 1;
		nMap = mod(nMap, nGameCount) + 1;
gogamemap(tabSubTeam[i], nGroup, nMap); 
end; 
end; 

function chr_rand_tab(tab) 
local tab_size = getn(tab) 
for i = 1, tab_size do 
m1 = random(1,tab_size) 
m2 = random(1,tab_size) 
m = tab[m1] ; 
tab[m1] = tab[m2] 
tab[m2] = m 
end 
end 

function chaos(tabPlayerIdx, nMaxPlayerCount) -- script viet hoa By http://tranhba.com  ®¸nh lo¹n nhµ ch¬i ®Ých thø tù , chia lµm 10 ng­êi ®Ých mét tiÓu ph©n ®éi 
if ("table" ~= type(tabPlayerIdx)) then 
error("tabPlayerIdx is not a table value!"); 
end; 
chr_rand_tab(tabPlayerIdx) 
local nPCount = getn(tabPlayerIdx); 
local subTabCount = floor(nPCount / nMaxPlayerCount); 
local tabSubTeam = {}; 
local i, j; 
local nIndex; 
local nBeginPlayer = random(1, nPCount); 

-- script viet hoa By http://tranhba.com  ®em cã thÓ trï ®ñ 10 ng­êi ®Ých vµo trµng 
for i = 1, subTabCount do 
tabSubTeam[i] = {} 
for j = 1, nMaxPlayerCount do 
			local nIndex = subTabCount * (j - 1) + i + nBeginPlayer - 1;
			nIndex = mod(nIndex - 1, nPCount) + 1
tabSubTeam[i][j] = tabPlayerIdx[nIndex]; 
end; 
end; 
-- script viet hoa By http://tranhba.com  ch­a ®ñ 10 ng­êi ®Ých tiÕn hµnh ®æi phiªn v« Ých 
	tabSubTeam[subTabCount + 1] = {};
j = 1; 
	local nBegin = nMaxPlayerCount * subTabCount + 1;
for i = nBegin, nPCount do 
		nIndex = i  + nBeginPlayer - 1; 
		nIndex = mod(nIndex - 1, nPCount) + 1;
		tabSubTeam[subTabCount + 1][j] = tabPlayerIdx[nIndex];
		j = j + 1;
end; 
SetMissionV(MS_FE_GAMECOUNT, getn(tabSubTeam)); 
return tabSubTeam; 
end; 

function gogamemap(tabPlayerIdx, nGroupId, nBeginMap) -- script viet hoa By http://tranhba.com  
if ("table" ~= type(tabPlayerIdx)) then 
return 
end; 
local OldSubWorld = SubWorld; 
local nPCount = getn(tabPlayerIdx); 
local OldPlayer = PlayerIndex; 
local i, j; 
SubWorld = SubWorldID2Idx(fest_head_PrepareMapID); 
for i = 1, nPCount do 
PlayerIndex = tabPlayerIdx[i]; 
if (PlayerIndex > 0) then 
SetTask(TK_FE_COUNT_ONETIME, 0); -- script viet hoa By http://tranhba.com  ®em mét cuéc so tµi c¸ ®Õm thanh 0# 
SetTask(TK_FE_RANK, 0); -- script viet hoa By http://tranhba.com  ®em ®øng hµng thanh 0 
SetTask(TK_FE_ATTACKED_TIMES, 0); 
SetTask(TK_FE_ATTACKED_INTERVER, 0); 
SetTask(TK_FE_GROUPID, nGroupId); -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých groupid 
local szFile = [[\settings\maps\]]..FE_MAPPOINTFLORDER..[[\player.txt]]; 
			local PosX, PosY = getadatabetween(szFile, 8 + 8 * nBeginMap, 15 + 8 * nBeginMap);
NewWorld(fest_head_GameMapID, floor(PosX / 32), floor(PosY / 32)); 
SubWorld = SubWorldID2Idx(fest_head_GameMapID); 
AddMSPlayer(fest_head_MISSIONID, nGroupId); 
end; 
end; 
PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end;
