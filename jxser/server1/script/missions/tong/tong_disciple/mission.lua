Include([[\script\missions\tong\tong_disciple\head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

SetMissionV(MS_TIMERSTATE, 1); 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(DIS_MAPID[2]); 

StartMissionTimer(DIS_MISSIONID, DIS_RUNTIMERID, DIS_RUNINTERVER); -- script viet hoa By http://tranhba.com  
StartMissionTimer(DIS_MISSIONID, DIS_SMALLTIMERID, DIS_INTERVER); -- script viet hoa By http://tranhba.com  më ra tÝnh giê khÝ 
end; 

function EndMission() 
local i; 
for i = 1, DIS_SMALLMAPCOUNT do 
if (GetMSPlayerCount(DIS_MISSIONID, i) > 0) then 
groupsort(i); 
end; 
end; 
clearfairy(); -- script viet hoa By http://tranhba.com  thanh trõ n¬i chèn bªn trong tÊt c¶ tr¸ch 
gameover(DIS_MAPID[2], DIS_MISSIONID); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ nhµ ch¬i thanh trõ ra b¶n ®å 
strGlbNews = " chiªu mé ®Ö tö ng­êi cña sÜ ®· trë l¹i , c¸c vÞ trÎ tuæi c­êng tr¸ng ®Ö tö ®Ó cho mäi ng­êi l¹i nghÜ tíi m×nh anh dòng qu¸ khø cña , còng v× bang héi ®Ých t­¬ng lai mµ cao høng ." 
AddGlobalNews(strGlbNews); 

StopMissionTimer(DIS_MISSIONID, DIS_SMALLTIMERID); 
StopMissionTimer(DIS_MISSIONID, DIS_RUNTIMERID); 
gb_SetTask(CHRISMAS_SHREWMOUSE, 1, 0); 
SetGlbValue(GLB_DIS_PHASE, 0); 
end; 

function OnLeave() 
SetLogoutRV(0); 
end 

-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù hµm sè ( c¨n cø ®iÓm kÝch c¸ ®Õm tõ nhiÒu ®Õn thiÓu x¸c ®Þnh ®em mét tæ thµnh viªn ®Ých h¹ng )# 
function groupsort(nGroupId) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(DIS_MAPID[2]); 

local OldPlayer = PlayerIndex; 
local tabPlayer = {}; 
local idx = 0; 
local pidx; 

local i; 
for i = 1, DIS_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(DIS_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(DIS_COUNT_ONETIME); 
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
szMsg = szMsg.."<enter> <color=green>"..i.." "..GetName()..", chiªu mé ®Õn "..tabPlayer[i][2].." c¸ "..DIS_MOUSENAME 
end 
end 
-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù sau tõ tr­íc ®Õn sau chÝnh lµ h¹ng ®Ých tr­íc sau 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
SetTask(DIS_TK_RANK, i); 
if (szMsg ~= nil and szMsg ~= "") then 
Msg2Player(szMsg) 
end 
Msg2Player("Ng­¬i ®øng hµng thø <color=yellow>"..i.."<color>, cã thÓ tíi thÊy <color=yellow> ho¹t ®éng ph­êng tæng qu¶n <color> dÉn t­ëng !"); 
end; 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 
