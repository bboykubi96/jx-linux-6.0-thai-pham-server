-- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i lµ giao chiÕn hai bang héi mét trong lêi cña , lµ ë nh©n sè kh«ng cã ®¹t tíi th­îng h¹n ®Ých ®iÒu kiÖn tiªn quyÕt , ®Ó cho h¾n tiÕn vµo b¶n ®å 
-- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i kh«ng ph¶i lµ giao chiÕn hai bang héi mét trong lêi cña , nÕu nh­ trªn ng­êi cã hîp ph¸p phiÕu tho¹i , ®Ó cho h¾n tiÕn vµo b¶n ®å 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nhµ ch¬i yªu cÇu rêi ®i trß ch¬i 
function LeaveGame() 
curcamp= GetCurCamp(); 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh«i phôc nguyªn thñy trËn doanh 
SetRevPos(GetPlayerRev()) 
SetFightState(0) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
NewWorld(OuterPos[curcamp][1], OuterPos[curcamp][2], OuterPos[curcamp][3]) 
end; 

function GameOver() 
local OldPlayer = PlayerIndex; 
local PTab = {}; 
for i = 1, 1000 do 
idx , pidx = GetNextPlayer(MISSIONID, idx, 0); 
if (idx == 0 ) then 
break 
end 
PTab[i] = pidx; 
end 

local PCount = getn(PTab); 

-- script viet hoa By http://tranhba.com  t­ëng th­ëng ngÉu nhiªn 5 tªn nhµ ch¬i huy hoµng chi qu¶ hép quµ 
local tbRandPlayer = {}; 
local nRandCount = 0; 
for i =1, PCount do 
if (nRandCount >= 5) then 
break 
end 
local nrand = random(PCount); 
if (not tbRandPlayer[nrand]) then 
			nRandCount = nRandCount + 1;
tbRandPlayer[nrand] = nrand; 
end 
end 


-- script viet hoa By http://tranhba.com  t­ëng th­ëng trªn b¶ng xÕp h¹ng tr­íc 10 tªn 
for i = 1, 10 do 
local szName,nZhanGong = BT_GetTopTenInfo(i, PL_TOTALPOINT); 
if szName ~= nil and szName ~= "" then 
local nTopPlayerIdx = SearchPlayer(szName); 
if (nTopPlayerIdx > 0) then 
PlayerIndex = nTopPlayerIdx; 
AddOwnExp(CITYWAR_TOP10_EXP); 
local szLog = format("%d kinh nghiÖm ", CITYWAR_TOP10_EXP); 
szLog = format("Ng­¬i lÊy ®­îc c«ng thµnh chiÕn t­ëng th­ëng %s", szLog); 
Msg2Player(szLog); 
WriteLog(format("[citywar_award]\t%s\tName:%s\tAccount:%s\t%s", 
GetLocalDate("%Y-%m-%d_%H:%M"), 
szName, 
GetAccount(), 
szLog 
)); 
end 
end 
end 
OldPlayer = PlayerIndex; 


for i = 1, PCount do 
PlayerIndex = PTab[i] 

if (tbRandPlayer[i]) then 
citywar_awardplayer(); 
end 
LeaveGame() 
SetFightState(0) 
end; 
PlayerIndex = OldPlayer; 
end; 

function citywar_awardplayer() 
AddItem(6,1,1075,1,1,0); 
local szLog = format("Ng­¬i lÊy ®­îc c«ng thµnh chiÕn t­ëng th­ëng %s","Huy hoµng chi qu¶ hép quµ ") 
Msg2Player(szLog); 
WriteLog(format("[citywar_award]\t%s\tName:%s\tAccount:%s\t%s", 
GetLocalDate("%Y-%m-%d_%H:%M"), 
GetName(), 
GetAccount(), 
szLog 
)); 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function JoinCamp(Camp, Type) 
-- script viet hoa By http://tranhba.com type == 1 bµy tá lµ qu©n ch¸nh quy , 2 bµy tá lµ kh«ng ph¶i lµ qu©n ch¸nh quy tøc kh«ng ph¶i lµ bæn bang sÏ thµnh viªn 
LeaveTeam(); 
if (Type == 1) then 
if (Camp == 1) then 
if (GetMSPlayerCount(MISSIONID,Camp) >= MAX_CAMP1COUNT) then 
Say("B©y giê tham gia thñ thµnh bang héi nh©n sè cña ®· ®ñ råi , t¹m thêi kh«ng thÓ gia nhËp !",0) 
return 
end; 
else 
if (GetMSPlayerCount(MISSIONID, Camp) >= MAX_CAMP2COUNT) then 
Say("B©y giê tham gia thñ thµnh bang héi nh©n sè cña ®· ®ñ råi , t¹m thêi kh«ng thÓ gia nhËp !",0) 
return 
end 
end; 
else 
if (Camp == 1) then 
			if (GetMSPlayerCount(MISSIONID,Camp + 2 ) >= MAX_CAMP3COUNT) then
Say("B©y giê tham gia thñ thµnh bang héi nh©n sè cña ®· ®ñ råi , t¹m thêi kh«ng thÓ gia nhËp !",0) 
return 
end; 
else 
			if (GetMSPlayerCount(MISSIONID, Camp + 2) >= MAX_CAMP4COUNT) then
Say("B©y giê tham gia trî gióp thñ thµnh ®Ých nghÜa sÜ nh©n sè ®· ®ñ råi , t¹m thêi kh«ng thÓ gia nhËp !",0) 
return 
end 
end; 
end; 

if (Type == 1) then 
AddMSPlayer(MISSIONID, Camp); 
else 
		AddMSPlayer(MISSIONID, Camp + 2);
end; 

SetTaskTemp(JOINSTATE, 1); 
SetCurCamp(Camp); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,1); 

-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
SetLogoutRV(1); 

-- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetPunish(0); 

-- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
SetCreateTeam(0); 

-- script viet hoa By http://tranhba.com  më ra PK chèt më 
SetPKFlag(1) 
ForbidChangePK(1); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm , mét lo¹i lµ lùa chän tiÕn vµo nªn khu ®Ých thµnh phè 
SetRevPos(GetPlayerRev()) 

-- script viet hoa By http://tranhba.com  thiÕt trÝ tr­íc mÆt nhµ ch¬i ®Ých tö vong ch©n vèn 
	SetDeathScript("\\script\\missions\\citywar_city\\playerdeath.lua");

SetFightState(0) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ lÇn sau tö vong sèng l¹i ®iÓm 
if (Camp == 1) then 
SetTempRevPos(CS_CampPos1[1], CS_CampPos1[2]*32, CS_CampPos1[3]*32); 

NewWorld(CS_CampPos1[1], CS_CampPos1[2], CS_CampPos1[3]) 
elseif (Camp == 2) then 
SetTempRevPos(CS_CampPos2[1], CS_CampPos2[2]*32, CS_CampPos2[3]*32); 

NewWorld(CS_CampPos2[1], CS_CampPos2[2], CS_CampPos2[3]) 
else 
return 
end; 

-- script viet hoa By http://tranhba.com  biÓu hiÖn tÝnh giê bµi 
local gametime = floor(GetMSRestTime(MISSIONID, 13) / 18); 
BT_UpdateMemberCount(); 
BT_BroadView(); 
BT_BroadAllLadder(); 
BT_SetRestTime(gametime); 
BT_BroadGameData(); 
BT_SortLadder(); 
BT_BroadSelf() 
-- script viet hoa By http://tranhba.com  biÓu hiÖn tÝnh giê bµi 

-- script viet hoa By http://tranhba.com  quan hµm 
bt_JudgePLAddTitle() 
end; 
