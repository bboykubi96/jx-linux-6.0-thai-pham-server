Include([[\script\missions\tong\collectgoods\head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

SetMissionV(COLLG_MS_TIMERSTATE, 1); 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(COLLG_MAPID[2]); 

StartMissionTimer(COLLG_MISSIONID, COLLG_RUNTIMERID, COLLG_RUNINTERVER); -- script viet hoa By http://tranhba.com  
StartMissionTimer(COLLG_MISSIONID, COLLG_SMALLTIMERID, COLLG_INTERVER); -- script viet hoa By http://tranhba.com  
end; 

function EndMission() 
local i; 
for i = 1, COLLG_SMALLMAPCOUNT do 
if (GetMSPlayerCount(COLLG_MISSIONID, i) > 0) then 
groupsort(i); 
end; 
end; 
collg_clearfairy(); -- script viet hoa By http://tranhba.com  thanh trõ n¬i chèn bªn trong tÊt c¶ tr¸ch 
collg_gameover(COLLG_MAPID[2], COLLG_MISSIONID); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ nhµ ch¬i thanh trõ ra b¶n ®å 
local nTime = tonumber(GetLocalDate("%H%M")); 
local strGlbNews = " c¸c vÞ hiÖp kh¸ch ®i t×m hµng hãa ®¹i trë l¹i ." 
AddGlobalNews(strGlbNews); 

StopMissionTimer(COLLG_MISSIONID, COLLG_SMALLTIMERID); 
StopMissionTimer(COLLG_MISSIONID, COLLG_RUNTIMERID); 
SetGlbValue(GLB_COLLG_PHASE, 3); 
gb_SetTask(COLLG_NAME, 1, 3); 
end; 

function OnLeave() 
SetLogoutRV(0); 
end 

-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù hµm sè ( c¨n cø ®iÓm kÝch c¸ ®Õm tõ nhiÒu ®Õn thiÓu x¸c ®Þnh ®em mét tæ thµnh viªn ®Ých h¹ng )# 
function groupsort(nGroupId) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(COLLG_MAPID[2]); 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local idx = 0; 
local pidx; 

local i; 
for i = 1, COLLG_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(COLLG_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(COLLG_COUNT_ONETIME); 
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
szMsg = szMsg.."<enter> <color=green>"..i.." "..GetName()..", ®¹t ®­îc "..tabPlayer[i][2].." hµng hãa ®¹i " 
end 
end 
-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù sau tõ tr­íc ®Õn sau chÝnh lµ h¹ng ®Ých tr­íc sau 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
SetTask(COLLG_TK_RANK, i); 
if (szMsg ~= nil and szMsg ~= "") then 
Msg2Player(szMsg) 
end 
if (GetTask(COLLG_COUNT_ONETIME) == 0) then 
Msg2Player("ThËt lµ tiÕc nuèi , ng­¬i kh«ng cã hµng hãa ®¹i !"); 
else 
Msg2Player("Ng­¬i ®øng hµng thø <color=yellow>"..i.."<color>, cã thÓ tíi thÊy <color=yellow> ho¹t ®éng ph­êng tæng qu¶n <color> dÉn t­ëng !"); 
end; 
end; 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 
