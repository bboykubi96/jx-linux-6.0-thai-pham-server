Include([[\script\missions\chrismas\ch_head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

SetMissionV(MS_TIMERSTATE, 1); 
SetMissionS(MSS_MOUSENAME,"MÊt m¸c ®Ých lÔ vËt "); -- script viet hoa By http://tranhba.com  cµ ra qu¸i vËt ®Ých tªn 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(CH_MAPID[2]); 

StartMissionTimer(CH_MISSIONID, CH_RUNTIMERID, CH_RUNINTERVER); -- script viet hoa By http://tranhba.com  
StartMissionTimer(CH_MISSIONID, CH_SMALLTIMERID, CH_INTERVER); -- script viet hoa By http://tranhba.com  më ra tÝnh giê khÝ 
end; 

function EndMission() 
local i; 
for i = 1, CH_SMALLMAPCOUNT do 
if (GetMSPlayerCount(CH_MISSIONID, i) > 0) then 
groupsort(i); 
end; 
end; 
clearfairy(); -- script viet hoa By http://tranhba.com  thanh trõ n¬i chèn bªn trong tÊt c¶ tr¸ch 
gameover(); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ nhµ ch¬i thanh trõ ra b¶n ®å 
strGlbNews = " c¸c vÞ ®· quay trë vÒ ." 
AddGlobalNews(strGlbNews); 

StopMissionTimer(CH_MISSIONID, CH_SMALLTIMERID); 
StopMissionTimer(CH_MISSIONID, CH_RUNTIMERID); 
end; 

function OnLeave() 
SetLogoutRV(0); 
end 

-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù hµm sè ( c¨n cø ®iÓm kÝch c¸ ®Õm tõ nhiÒu ®Õn thiÓu x¸c ®Þnh ®em mét tæ thµnh viªn ®Ých h¹ng )# 
function groupsort(nGroupId) 
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
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
SetTask(TK_RANK, i); 
if (szMsg ~= nil and szMsg ~= "") then 
Msg2Player(szMsg) 
end 
Msg2Player("Ng­¬i ®øng hµng thø <color=yellow>"..i.."<color>, cã thÓ ®i thÊy <color=yellow> «ng giµ n« en <color> dÉn t­ëng !"); 
end; 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 
