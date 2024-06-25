Include("\\script\\missions\\tong\\tong_springfestival\\head.lua");

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

SetMissionV(MS_SF_TIMERSTATE, 1); 

local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(SF_MAPID[2]); 

StartMissionTimer(SF_MISSIONID, SF_FAIRY_SMALLTIMERID, SF_INTERVER); -- script viet hoa By http://tranhba.com  cµ tr¸ch tÝnh giê khÝ 
StartMissionTimer(SF_MISSIONID, SF_REPORT_SMALLTIMERID, SF_RUNINTERVER); -- script viet hoa By http://tranhba.com  b¸o c¸o tÝnh giê khÝ 
end; 

function EndMission() 
local i; 
for i = 1, SF_SMALLMAPCOUNT do 
		if (GetMSPlayerCount(SF_MISSIONID, i + SF_SMALLMAPCOUNT) > 0 or
GetMSPlayerCount(SF_MISSIONID, i) > 0) then 
groupsort(i); 
end; 
end; 
festival_gameover(SF_MAPID[2], SF_MISSIONID); -- script viet hoa By http://tranhba.com  ®em tÊt c¶ nhµ ch¬i thanh trõ ra b¶n ®å 
strGlbNews = format("Bang héi dòng sÜ ®uæi theo bé %s ®· trë l¹i , lÇn nµy mÆc dï tiªu diÖt %s, nh­ng lµ , nã tµ khÝ vÉn tån t¹i .", SF_ANIMALNAME, SF_ANIMALNAME); 
AddGlobalNews(strGlbNews); 

ClearMapObj(SF_MAPID[2]); 

StopMissionTimer(SF_MISSIONID, SF_FAIRY_SMALLTIMERID); 
StopMissionTimer(SF_MISSIONID, SF_REPORT_SMALLTIMERID); 
SetGlbValue(GLB_SF_PHASE, 0); 
gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 0); 
end; 

function OnLeave() 
SetLogoutRV(0); 
end 

-- script viet hoa By http://tranhba.com  s¾p xÕp thø tù hµm sè ( c¨n cø ®iÓm kÝch c¸ ®Õm tõ nhiÒu ®Õn thiÓu x¸c ®Þnh ®em mét tæ thµnh viªn ®Ých h¹ng )# 
function groupsort(nGroupId) 
local OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(SF_MAPID[2]); 

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
for i = 1, SF_MAXPLAYERCOUNT do 
idx, pidx = GetNextPlayer(SF_MISSIONID, idx, nGroupId); 

if (pidx > 0) then 
tabPlayer[i] = {}; 
tabPlayer[i][1] = pidx; 
PlayerIndex = pidx; 
tabPlayer[i][2] = GetTask(SF_COUNT_ONETIME); 
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
if (nGroupId > SF_SMALLMAPCOUNT) then 
			    tabMsg[i + nMsgCount] = format("<color=green>ÅÅÃû %d: %s, ×¥µ½%d %s", i, GetName(), tabPlayer[i][2], SF_MOUSENAME);
else 
			    tabMsg[i + nMsgCount] = format("<color=orange>ÅÅÃû %d: %s, ´òÖÐ%s %d ´Î",i,GetName(),SF_ANIMALNAME, tabPlayer[i][2]);
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
SetTask(SF_TK_RANK, i); 
for j = 1, nMsgCount do 
Msg2Player(tabMsg[j]); 
end; 
if (GetTask(TK_GROUPID) > SF_SMALLMAPCOUNT) then 
Msg2Player("Ng­¬i lµ thø <color=yellow>"..i.."<color> nh©n sÜ b¾t ®­îc n¨m thó , cã thÓ ®Õn <color=yellow> ho¹t ®éng ph­êng tæng qu¶n <color> dÉn t­ëng !"); 
else 
Msg2Player("Ng­¬i lµ thø <color=yellow> c¸ ®¸nh tróng qu¸i thó ng­êi "..i.."<color>, cã thÓ ®i thÊy <color=yellow> ho¹t ®éng ph­êng tæng qu¶n <color> dÉn t­ëng !"); 
end; 
end; 
end;
