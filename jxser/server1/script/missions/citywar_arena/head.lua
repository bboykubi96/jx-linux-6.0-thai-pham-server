-- script viet hoa By http://tranhba.com  thèi lui ra trß ch¬i sau ®Ých sèng l¹i ®iÓm ID, còng chÝnh lµ ghi danh ®Ých chç ®ã ®i 
CS_RevId = 20 
CS_RevData = 10; 

-- script viet hoa By http://tranhba.com  gia nhËp song ph­¬ng trËn doanh lóc ®Ých vÞ trÝ 
CampPos1 = {1536 , 3223 }; -- script viet hoa By http://tranhba.com  mµu vµng 
CampPos2 = {1563 , 3195 }; -- script viet hoa By http://tranhba.com  mµu tÝm 
CampPos0 = {1633 , 3292 }; -- script viet hoa By http://tranhba.com  tiÕn vµo cuéc so tµi trµng lóc ®Ých täa ®é 

FRAME2TIME = 18; 
-- script viet hoa By http://tranhba.com  trß ch¬i lín nhÊt nh©n sè 
MAX_MEMBER_COUNT = 16; 
MS_STATE = 1; 
MS_TONG1ID = 10;-- script viet hoa By http://tranhba.com  hai bang héi ®Ých bang héi ID 
MS_TONG2ID = 11; 

WIN_TONGEXP = 1200; 
LOSE_TONGEXP = 1400; 

MS_TOTALPK = 250;-- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®¸nh chÕt kú tha nhµ ch¬i ®Ých tæng sè lÇn 
MS_TOTALKO = 251;-- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ë PK chiÕn dÞch trung bÞ ®¸nh chÕt ®Ých tæng sè lÇn 

MS_TONG1VALUE = 13; -- script viet hoa By http://tranhba.com  ghi chÐp bang héi 1 ®Ých tranh tµi tr­íc mÆt ®Ých tÝch ph©n 
MS_TONG2VALUE = 14; 
MS_ARENAID = 15; 

PKWINBONUS = 3; 
LOSEBONUS = 1; 

TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi©y c«ng bè mét c¸i chiÕn huèng 
TIMER_2 = 25 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chiÕn tæng thêi gian lµ 1Hour 
GO_TIME = 480 * FRAME2TIME / TIMER_1; -- script viet hoa By http://tranhba.com  ghi danh thêi gian lµ 10 

MS_NEWSVALUE = 9; -- script viet hoa By http://tranhba.com  nhiÖm vô trung cÊt gi÷ tin tøc thay ®æi l­îng ®Ých ®Þa ph­¬ng 
JOINSTATE = 242; 
MISSIONID = 5; 
WORLDIDXBEGIN = 213; 

function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nhµ ch¬i yªu cÇu rêi ®i trß ch¬i 
function LeaveGame() 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh«i phôc nguyªn thñy trËn doanh 
SetRevPos(CS_RevId, CS_RevData) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
SetFightState(0); 

SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
NewWorld(GetLeavePos()) 
end; 

function GameOver() 
PTab = {}; 
for i = 1, 500 do 
idx , pidx = GetNextPlayer(MISSIONID, idx, 0); 
if (idx == 0 ) then 
break 
end 
PTab[i] = pidx; 
end 

PCount = getn(PTab); 
OldPlayer = PlayerIndex; 
for i = 1, PCount do 
PlayerIndex = PTab[i] 
LeaveGame() 
end; 
PlayerIndex = OldPlayer; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function JoinCamp(Camp) 
SetFightState(0) 
LeaveTeam() 
if (GetMSPlayerCount(MISSIONID, Camp) >= MAX_MEMBER_COUNT) then 
Say("Ph­¬ng nµy b©y giê sè ng­êi ®· ®ñ , kh«ng thÓ gia nhËp !",0) 
return 
end; 

AddMSPlayer(MISSIONID, Camp); 
SetTaskTemp(JOINSTATE, 1); 
SetCurCamp(Camp); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë chiÕn tr­êng trung söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200, 1); 

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
SetRevPos(CS_RevId, CS_RevData); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ tr­íc mÆt nhµ ch¬i ®Ých tö vong ch©n vèn 
	SetDeathScript("\\script\\missions\\citywar_arena\\death.lua");
W,X,Y = GetWorldPos(); 
-- script viet hoa By http://tranhba.com  thiÕt trÝ lÇn sau tö vong t¹m thêi sèng l¹i ®iÓm 
if (Camp == 1) then 
SetTempRevPos(GetLeavePos()); 
str = GetName().."<#> ®· tiÕn vµo "..GetMissionS(1).."<#> 1 ph­¬ng , b©y giê thµnh viªn ®Õm lµ "..GetMSPlayerCount(MISSIONID,1); 
SetPos(CampPos1[1], CampPos1[2]) 
elseif (Camp == 2) then 
SetTempRevPos(GetLeavePos()); 
str = GetName().."<#> ®· tiÕn vµo "..GetMissionS(2).."<#> 1 ph­¬ng , b©y giê thµnh viªn ®Õm lµ "..GetMSPlayerCount(MISSIONID,2); 
SetPos(CampPos2[1], CampPos2[2]) 
else 
return 
end; 

Msg2MSAll(MISSIONID, str); 
end; 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ®em gi©y truyÖn ®æi thµnh ph©n cïng gi©y , tû nh­ 62s = 1m2s 
function GetMinAndSec(nSec) 
nRestMin = floor(nSec / 60); 
nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  phe th¾ng lîi ®¹t ®­îc 1800 v¹n kim tiÒn , ®¹t ®­îc 12000 bang héi kinh nghiÖm # phe thÊt b¹i gi¶m bít 14000 bang héi kinh nghiÖm 
function WinBonus(camp) 
if (camp == 1) then 
NotifyArenaResult(GetMissionV(MS_ARENAID), 1); -- script viet hoa By http://tranhba.com  th«ng b¸o thø nhÊt ph­¬ng th¾ng lîi 
AddTongExp(GetMissionS(1), WIN_TONGEXP ) 
-- script viet hoa By http://tranhba.com  SubTongExp(GetMissionS(2), LOSE_TONGEXP) 
else 
NotifyArenaResult(GetMissionV(MS_ARENAID), 0); -- script viet hoa By http://tranhba.com  th«ng b¸o thø hai ph­¬ng th¾ng lîi 
AddTongExp(GetMissionS(2), WIN_TONGEXP ) 
-- script viet hoa By http://tranhba.com  SubTongExp(GetMissionS(1), LOSE_TONGEXP) 
end; 
end;
