Include([[\script\missions\tong\collectgoods\head.lua]]); 

function OnTimer() 
	local nNewsValue = GetMissionV(COLLG_MS_PREPARENEWSVALUE) + 1;
SetMissionV(COLLG_MS_PREPARENEWSVALUE, nNewsValue); 

local nRemain = 5 - floor(nNewsValue / 2); 
if (10 == nNewsValue) then -- script viet hoa By http://tranhba.com 5 ph�t , �� cho nh� ch�i v�o tr�ng 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(COLLG_MAPID[2]); 
OpenMission(COLLG_MISSIONID) 
if (players_entrance() == 0) then 
SubWorld = SubWorldID2Idx(COLLG_MAPID[2]); 
CloseMission(COLLG_MISSIONID); 
end; 
SubWorld = SubWorldID2Idx(COLLG_MAPID[1]); 
CloseMission(COLLG_PREPAREMISSIONID); 
SubWorld = OldSubWorld; 
return 
elseif (0 == mod(nNewsValue, 2)) then 
if (nRemain > 0) then 
Msg2MSAll(COLLG_PREPAREMISSIONID,"C�n l�i "..nRemain.." ph�t sau ho�t ��ng b�t ��u !"); 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  m�t c�i h�m s� ch� � c�i n�y v�n ki�n d�ng ��n cho n�n , kh�ng vi�t ��n head trong 
function players_entrance() -- script viet hoa By http://tranhba.com  ng�u nhi�n �� cho nh� ch�i ti�n v�o ��n n�i ch�n # 
local tabPlayerIdx = {}; 
local pidx = 0 
local idx = 0 
local i; 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(COLLG_MAPID[1]); 
for i = 1, 500 do 
idx, pidx = GetNextPlayer(COLLG_PREPAREMISSIONID, idx, 0); 
if (pidx > 0) then 
tinsert(tabPlayerIdx, pidx); 
end; 

if (idx == 0) then 
break; 
end; 
end; 
SubWorld = OldSubWorld; 
if (getn(tabPlayerIdx) < 5) then 
cancelgame(COLLG_MAPID[1], COLLG_PREPAREMISSIONID); 
return 0; 
end; 
-- script viet hoa By http://tranhba.com  ti�n h�nh h�n lo�n 
local tabSubTeam = chaos(tabPlayerIdx, COLLG_MAXPLAYERCOUNT); 
local nBeginMap = random(1, COLLG_SMALLMAPCOUNT); 
SetMissionV(MS_BEGINGMAPID, nBeginMap); 
SetMissionV(COLLG_MS_GAMECOUNT, getn(tabSubTeam)); 

-- script viet hoa By http://tranhba.com tabParam = { chu�n b� tr�ng ID, { c�n �� c�ng hi�n , t�a �� v�n ki�n }, { thi�t tr� l� s� kh�ng ��ch nhi�m v� thay ��i l��ng ...}, {group tr� gi� , b�t ��u b�n �� map, MissionID, ho�t ��ng ch� � map}} 
local tabParam = {}; 
for i = 1, getn(tabSubTeam) do 
local nGroup = i; 
		local nMap = nBeginMap + i - 1;
		nMap = mod(nMap, COLLG_SMALLMAPCOUNT) + 1;
tabParam = {COLLG_MAPID[1], {TONGGXD[1][1], [[\settings\maps\dragonboatfestival_06\player.txt]]}, {COLLG_COUNT_ONETIME, COLLG_TK_RANK}, {nGroup, nMap, COLLG_MISSIONID, COLLG_MAPID[2]}}; 
gogamemap(tabSubTeam[i], tabParam); 
end; 
return 1; 
end; 
