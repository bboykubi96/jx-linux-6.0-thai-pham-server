Include([[\script\missions\springfestival\festival_head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

SetMissionV(MS_FE_TIMERSTATE, 1); 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(FE_MAPID[2]); 

StartMissionTimer(FE_MISSIONID, FE_FAIRY_SMALLTIMERID, FE_INTERVER); -- script viet hoa By http://tranhba.com  cµ tr¸ch tÝnh giê khÝ 
StartMissionTimer(FE_MISSIONID, FE_REPORT_SMALLTIMERID, FE_RUNINTERVER); -- script viet hoa By http://tranhba.com  b¸o c¸o tÝnh giê khÝ 
end; 

function EndMission() 
local i; 
for i = 1, FE_SMALLMAPCOUNT do 
		if (GetMSPlayerCount(FE_MISSIONID, i + FE_SMALLMAPCOUNT) > 0 or
GetMSPlayerCount(FE_MISSIONID, i) > 0) then 
groupsort(i); 
end; 
end; 
festival_gameover(FE_MAPID[2], FE_MISSIONID); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ nhµ ch¬i thanh trõ ra b¶n ®å 
strGlbNews = " c¸c vÞ hiÖp sÜ ®i t×m "..FE_MOUSENAME.." # ®· trë vÒ "; 
AddGlobalNews(strGlbNews); 

ClearMapObj(FE_MAPID[2]); 

StopMissionTimer(FE_MISSIONID, FE_FAIRY_SMALLTIMERID); 
StopMissionTimer(FE_MISSIONID, FE_REPORT_SMALLTIMERID); 
end; 

function OnLeave() 
SetLogoutRV(0); 
end 

-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù hµm sè ( c¨n cø ®iÓm kÝch c¸ ®Õm tõ nhiÒu ®Õn thiÓu x¸c ®Þnh ®em mét tæ thµnh viªn ®Ých h¹ng )# 
function groupsort(nGroupId) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(FE_MAPID[2]); 

local nGroupId_nianshou = festival_getgroupid(nGroupId); 

local OldPlayer = PlayerIndex; 
local tabNormalPlayer = {}; 
tabNormalPlayer = festival_sort(nGroupId); 
local tabMsg = {} 
local nMsgCount; 
tabMsg, nMsgCount = festival_getsz(tabMsg, 0, tabNormalPlayer, nGroupId); 

local tabNianshouPlayer = {}; 
tabNianshouPlayer = festival_sort(nGroupId_nianshou); 
tabMsg, nMsgCount = festival_getsz(tabMsg, nMsgCount, tabNianshouPlayer, nGroupId_nianshou); 

festival_broadcast(tabMsg, nMsgCount, tabNormalPlayer); 
festival_broadcast(tabMsg, nMsgCount, tabNianshouPlayer); 

PlayerIndex = OldPlayer; 
SubWorld = OldSubWorld; 
end; 

function festival_sort(nGroupId) 
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
return tabPlayer; 
end; 

function festival_getsz(tabMsg, nMsgCount, tabPlayer, nGroupId) 
local nRankCount = getn(tabPlayer); 
if (nRankCount > 3) then 
nRankCount = 3; 
end; 
local i; 
for i=1,nRankCount do 
if ( tabPlayer[i][1] ~= nil ) then 
PlayerIndex = tabPlayer[i][1]; 
if (nGroupId > FE_SMALLMAPCOUNT) then 
			    tabMsg[i + nMsgCount] = "<color=green>´Î"..i.." "..GetName()..", ×¥µ½"..tabPlayer[i][2].."¸ö"..FE_MOUSENAME;
else 
			    tabMsg[i + nMsgCount] = "<color=orange>´Î"..i.." "..GetName()..", ´òÖÐ"..FE_ANIMALNAME..tabPlayer[i][2].."´Î";
end; 
end 
end 
nMsgCount = getn(tabMsg); 
if (nMsgCount > 0) then 
tabMsg[nMsgCount] = tabMsg[nMsgCount]; 
end; 
return tabMsg, nMsgCount; 
end; 

function festival_broadcast(tabMsg, nMsgCount, tabPlayer) 
nCount = getn(tabPlayer); 
local i, j; 
-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù sau tõ tr­íc ®Õn sau chÝnh lµ h¹ng ®Ých tr­íc sau 
for i = 1, nCount do 
PlayerIndex = tabPlayer[i][1]; 
SetTask(TK_FE_RANK, i); 
for j = 1, nMsgCount do 
Msg2Player(tabMsg[j]); 
end; 
if (GetTask(TK_FE_GROUPID) > FE_SMALLMAPCOUNT) then 
Msg2Player("Ng­¬i lµ thø <color=yellow>"..i.."<color> tho¸t khái tiÕn vµo ng­¬i qu¸i vËt , cã thÓ ®i thÊy <color=yellow> nha m«n sai dÞch <color> nhËn lÊy ngoµi ý muèn t­ëng th­ëng "); 
else 
Msg2Player("Ng­¬i lµ ®¸nh tróng qu¸i vËt ®Ých thø <color=yellow>"..i.."<color> lÇn , cã thÓ ®i <color=yellow> nha m«n sai dÞch <color> dÉn t­ëng !"); 
end; 
end; 
end; 
