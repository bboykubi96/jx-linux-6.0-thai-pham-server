Include([[\script\missions\springfestival\festival_head.lua]]); 

function OnTimer() 
	local nNewsValue = GetMissionV(MS_FE_NEWSVALUE) + 1;
SetMissionV(MS_FE_NEWSVALUE, nNewsValue); 

if (20 == nNewsValue) then 
CloseMission(FE_MISSIONID); 
return 
end; 

local i; 
for i = 1, FE_SMALLMAPCOUNT do 
if (nNewsValue >= 18) then 
groupsort(i, 1, FE_ANIMALNAME); 
			groupsort(i + FE_SMALLMAPCOUNT, 1, FE_MOUSENAME);
else 
groupsort(i, 0, FE_ANIMALNAME); 
			groupsort(i + FE_SMALLMAPCOUNT, 0, FE_MOUSENAME);
end; 
end; 

if (0 == mod(nNewsValue, 2)) then 
local nTime = floor(nNewsValue / 2); 
nTime = 10 - nTime; 
if (nTime > 0) then 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(FE_MAPID[2]); 
Msg2MSAll(FE_MISSIONID,"Ho¹t ®éng cßn cã <color=yellow>"..nTime.."<color> ph©n kÕt thóc !"); 
SubWorld = OldSubWorld; 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù hµm sè ( c¨n cø ®iÓm kÝch c¸ ®Õm tõ nhiÒu ®Õn thiÓu x¸c ®Þnh ®em mét tæ thµnh viªn ®Ých h¹ng )# 
function groupsort(nGroupId, bSave, szAnimalName) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(FE_MAPID[2]); 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local idx = 0; 
local pidx; 

local i; 
for i = 1, FE_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(FE_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(TK_FE_COUNT_ONETIME); 
end; 

if (0 == idx) then 
break; 
end; 
end; 

local j; 
local temptab = {}; 
local nCount = getn(tabPlayer); 
for i = 2, nCount do -- script viet hoa By http://tranhba.com  ¸p dông mét m¹o phao s¾p xÕp thø tù 
for j = nCount, i, -1 do 
if (tabPlayer[j][2] > tabPlayer[j - 1][2]) then -- script viet hoa By http://tranhba.com  ¸p dông hµng tù s¾p xÕp thø tù 
temptab = tabPlayer[j]; 
tabPlayer[j] = tabPlayer[j - 1]; 
tabPlayer[j - 1] = temptab; 
end; 
end; 
end; 

local szMsg = "" 
local nRankCount = getn(tabPlayer); 
if (nRankCount > 3) then 
nRankCount = 3; 
end; 
for i=1,nRankCount do 
if ( tabPlayer[i][1] ~= nil ) then 
PlayerIndex = tabPlayer[i][1] 
if (nGroupId > FE_SMALLMAPCOUNT) then 
szMsg = szMsg.."<enter> <color=green>"..i.." "..GetName()..", b¾t ®­îc "..tabPlayer[i][2].." c¸ "..FE_MOUSENAME; 
else 
szMsg = szMsg.."<enter> <color=orange>"..i.." "..GetName()..", ®¸nh tróng "..FE_ANIMALNAME..tabPlayer[i][2].." lÇn "; 
end; 
end 
end 
-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù sau tõ tr­íc ®Õn sau chÝnh lµ h¹ng ®Ých tr­íc sau 
nCount = nCount; 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
if (bSave == 1) then 
SetTask(TK_FE_RANK, i); 
end; 
if (szMsg ~= nil and szMsg ~= "") then 
Msg2Player(szMsg) 
end 
if (nGroupId > FE_SMALLMAPCOUNT) then 
Msg2Player("Ng­¬i b¾t ®Õn <color=yellow>"..GetTask(TK_FE_COUNT_ONETIME).."<color> c¸ "..szAnimalName..", tr­íc m¾t ®øng hµng thø <color=yellow>"..i.."<color>."); 
else 
Msg2Player("Tr­íc m¾t ng­¬i ®¸nh tróng <color=yellow>"..szAnimalName..GetTask(TK_FE_COUNT_ONETIME).."<color> lÇn "..", tr­íc m¾t ®øng hµng thø <color=yellow>"..i.."<color>."); 
end; 
end; 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 
