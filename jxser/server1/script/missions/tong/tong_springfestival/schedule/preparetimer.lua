Include("\\script\\missions\\tong\\tong_springfestival\\head.lua");

function OnTimer() 
	local nNewsValue = GetMissionV(MS_SF_PREPARENEWSVALUE) + 1;
SetMissionV(MS_SF_PREPARENEWSVALUE, nNewsValue); 

local nRemain = 5 - floor(nNewsValue / 2); 
if (10 == nNewsValue) then -- script viet hoa By http://tranhba.com 5 phót , ®Ó cho nhµ ch¬i vµo trµng 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(SF_MAPID[2]); 
OpenMission(SF_MISSIONID) 
SetGlbValue(GLB_SF_PHASE, 2); -- script viet hoa By http://tranhba.com  cÊm chØ ®i vµo n÷a ghi danh 
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
Msg2MSAll(SF_PREPAREMISSIONID, format("Ho¹t ®éng ®em b¾t ®Çu , ë %d phót sau !",nRemain)); 
end; 
elseif (9 == nNewsValue) then 
Msg2MSAll(SF_PREPAREMISSIONID,"ChØ cã 30 gi©y ho¹t ®éng ®em b¾t ®Çu !"); 
end; 
end; 

-- script viet hoa By http://tranhba.com  mét c¸i hµm sè chØ ë c¸i nµy v¨n kiÖn dïng ®Õn cho nªn , kh«ng viÕt ®Õn head trong 
function players_entrance() -- script viet hoa By http://tranhba.com  ngÉu nhiªn ®Ó cho nhµ ch¬i tiÕn vµo ®Õn n¬i chèn # 
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
-- script viet hoa By http://tranhba.com  tiÕn hµnh hçn lo¹n 
local tabSubTeam = chaos(tabPlayerIdx, SF_MAXPLAYERCOUNT); 
local nBeginMap = random(1, SF_SMALLMAPCOUNT); 
SetMissionV(MS_BEGINGMAPID, nBeginMap); 
SetMissionV(MS_SF_GAMECOUNT, getn(tabSubTeam)); 

-- script viet hoa By http://tranhba.com tabParam = { chuÈn bÞ trµng ID, { cÇn ®é cèng hiÕn , täa ®é v¨n kiÖn }, { thiÕt trÝ lµ sè kh«ng ®Ých nhiÖm vô thay ®æi l­îng ...}, {group trÞ gi¸ , b¾t ®Çu b¶n ®å map, MissionID, ho¹t ®éng chç ë map}} 
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
