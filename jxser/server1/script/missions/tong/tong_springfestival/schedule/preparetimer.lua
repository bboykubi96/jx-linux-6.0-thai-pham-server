Include("\\script\\missions\\tong\\tong_springfestival\\head.lua");

function OnTimer() 
	local nNewsValue = GetMissionV(MS_SF_PREPARENEWSVALUE) + 1;
SetMissionV(MS_SF_PREPARENEWSVALUE, nNewsValue); 

local nRemain = 5 - floor(nNewsValue / 2); 
if (10 == nNewsValue) then -- script viet hoa By http://tranhba.com 5 ph�t , �� cho nh� ch�i v�o tr�ng 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(SF_MAPID[2]); 
OpenMission(SF_MISSIONID) 
SetGlbValue(GLB_SF_PHASE, 2); -- script viet hoa By http://tranhba.com  c�m ch� �i v�o n�a ghi danh 
gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 2); 
if (players_entrance() == 0) then 
SubWorld = SubWorldID2Idx(SF_MAPID[2]); 
CloseMission(SF_MISSIONID); 
end; 
SubWorld = SubWorldID2Idx(SF_MAPID[1]); 
CloseMission(SF_PREPAREMISSIONID); 
SubWorld = OldSubWorld; 
return 
elseif (0 == mod(nNewsValue, 2)) then 
if (nRemain > 0) then 
Msg2MSAll(SF_PREPAREMISSIONID, format("Ho�t ��ng �em b�t ��u , � %d ph�t sau !",nRemain)); 
end; 
elseif (9 == nNewsValue) then 
Msg2MSAll(SF_PREPAREMISSIONID,"Ch� c� 30 gi�y ho�t ��ng �em b�t ��u !"); 
end; 
end; 

-- script viet hoa By http://tranhba.com  m�t c�i h�m s� ch� � c�i n�y v�n ki�n d�ng ��n cho n�n , kh�ng vi�t ��n head trong 
function players_entrance() -- script viet hoa By http://tranhba.com  ng�u nhi�n �� cho nh� ch�i ti�n v�o ��n n�i ch�n # 
local tabPlayerIdx = {}; 
local pidx = 0; 
local idx = 0; 
local i; 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(SF_MAPID[1]); 

for i = 1, 500 do 
idx, pidx = GetNextPlayer(SF_PREPAREMISSIONID, idx, 0); 
if (pidx > 0) then 
tinsert(tabPlayerIdx, pidx); 
end; 

if (idx == 0) then 
break; 
end; 
end; 
SubWorld = OldSubWorld; 
if (getn(tabPlayerIdx) < 5) then 
cancelgame(SF_MAPID[1], SF_PREPAREMISSIONID); 
return 0; 
end; 
-- script viet hoa By http://tranhba.com  ti�n h�nh h�n lo�n 
local tabSubTeam = chaos(tabPlayerIdx, SF_MAXPLAYERCOUNT); 
local nBeginMap = random(1, SF_SMALLMAPCOUNT); 
SetMissionV(MS_BEGINGMAPID, nBeginMap); 
SetMissionV(MS_SF_GAMECOUNT, getn(tabSubTeam)); 

-- script viet hoa By http://tranhba.com tabParam = { chu�n b� tr�ng ID, { c�n �� c�ng hi�n , t�a �� v�n ki�n }, { thi�t tr� l� s� kh�ng ��ch nhi�m v� thay ��i l��ng ...}, {group tr� gi� , b�t ��u b�n �� map, MissionID, ho�t ��ng ch� � map}} 
local tabParam = {}; 
for i = 1, getn(tabSubTeam) do 
local nGroup = i; 
		local nMap = nBeginMap + i - 1;
		nMap = mod(nMap, SF_SMALLMAPCOUNT) + 1;
tabParam = {SF_MAPID[1], {TONGGXD[2][1], [[\settings\maps\springfestival2006\player.txt]]}, {SF_COUNT_ONETIME, SF_TK_RANK, TK_ATTACKED_TIMES, TK_ATTACKED_INTERVER}, {nGroup, nMap, SF_MISSIONID, SF_MAPID[2]}}; 
gogamemap(tabSubTeam[i], tabParam); 
end; 
return 1; 
end; 
