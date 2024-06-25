Include([[\script\missions\chrismas\ch_head.lua]]); 

function OnTimer() 
	local nNewsValue = GetMissionV(MS_NEWSVALUE) + 1;
SetMissionV(MS_NEWSVALUE, nNewsValue); 

gb_SetTask("Gi¸ng sinh ho¹t ®éng ", 1, 2); 
if (20 == nNewsValue) then 
CloseMission(CH_MISSIONID); 
return 
end; 

local i; 
for i = 1, CH_SMALLMAPCOUNT do 
if (nNewsValue >= 18) then 
groupsort(i, 1); 
else 
groupsort(i, 0); 
end; 
end; 

if (0 == mod(nNewsValue, 2)) then 
local nTime = floor(nNewsValue / 2); 
nTime = 10 - nTime; 
if (nTime > 0) then 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CH_MAPID[2]); 
Msg2MSAll(CH_MISSIONID,"Ho¹t ®éng cßn cã <color=yellow>"..nTime.."<color> ph©n kÕt thóc !"); 
SubWorld = OldSubWorld; 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù hµm sè ( c¨n cø ®iÓm kÝch c¸ ®Õm tõ nhiÒu ®Õn thiÓu x¸c ®Þnh ®em mét tæ thµnh viªn ®Ých h¹ng )# 
function groupsort(nGroupId, bSave) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CH_MAPID[2]); 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local idx = 0; 
local pidx; 

local i; 
for i = 1, CH_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(CH_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(TK_COUNT_ONETIME); 
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
szMsg = szMsg.."<enter> <color=green>"..i.." "..GetName()..", t×m ®­îc "..tabPlayer[i][2].." lÔ vËt " 
end 
end 
-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù sau tõ tr­íc ®Õn sau chÝnh lµ h¹ng ®Ých tr­íc sau 
nCount = nCount; 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
if (bSave == 1) then 
SetTask(TK_RANK, i); 
end; 
if (szMsg ~= nil and szMsg ~= "") then 
Msg2Player(szMsg) 
end 
Msg2Player("B©y giê ng­¬i t×m ®­îc <color=yellow>"..GetTask(TK_COUNT_ONETIME).."<color> lÔ vËt , b©y giê ®øng hµng <color=yellow>"..i.."<color>, tiÕp tôc cè g¾ng lªn !"); 
end; 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 
