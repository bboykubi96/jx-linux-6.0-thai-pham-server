-- script viet hoa By http://tranhba.com  thèi lui ra trß ch¬i sau ®Ých sèng l¹i ®iÓm ID, còng chÝnh lµ ghi danh ®Ých chç ®ã ®i 
CS_RevId = 2 
CS_RevData = 72; 

-- script viet hoa By http://tranhba.com  gia nhËp song ph­¬ng trËn doanh lóc ®Ých vÞ trÝ 
CS_CampPos1 = {212, 1819, 2992}; -- script viet hoa By http://tranhba.com  mµu vµng 
CS_CampPos2 = {212, 1568, 3079}; -- script viet hoa By http://tranhba.com  mµu tÝm 
FRAME2TIME = 18; 
-- script viet hoa By http://tranhba.com  trß ch¬i lín nhÊt nh©n sè 
MAX_MEMBER_COUNT = 200; 
MS_STATE = 1; 
MS_TONG1ID = 10;-- script viet hoa By http://tranhba.com  hai bang héi ®Ých bang héi ID 
MS_TONG2ID = 11; 

MS_SIGN_MONEY = 5000000; -- script viet hoa By http://tranhba.com  tiÒn ghi danh 
MS_WIN_MONEY = 8000000; -- script viet hoa By http://tranhba.com  mçi lÇn th¾ng lîi lóc , ®¹t ®­îc ®Ých thu vµo 
WIN_TONGEXP = 12000; 
LOSE_TONGEXP = 14000; 

MS_TOTALPK = 250;-- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®¸nh chÕt kú tha nhµ ch¬i ®Ých tæng sè lÇn 
MS_TOTALKO = 251;-- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ë PK chiÕn dÞch trung bÞ ®¸nh chÕt ®Ých tæng sè lÇn 

MS_TONG1VALUE = 13; -- script viet hoa By http://tranhba.com  ghi chÐp bang héi 1 ®Ých tranh tµi tr­íc mÆt ®Ých tÝch ph©n 
MS_TONG2VALUE = 14; 

PKWINBONUS = 3; 
LOSEBONUS = 1; 

TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi©y c«ng bè mét c¸i chiÕn huèng 
TIMER_2 = 60 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chiÕn tæng thêi gian lµ 1Hour 
GO_TIME = 600 * FRAME2TIME / TIMER_1; -- script viet hoa By http://tranhba.com  ghi danh thêi gian lµ 10 giê 

MS_NEWSVALUE = 9; -- script viet hoa By http://tranhba.com  nhiÖm vô trung cÊt gi÷ tin tøc thay ®æi l­îng ®Ých ®Þa ph­¬ng 
JOINSTATE = 242; 
MISSIONID = 7; 

function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nhµ ch¬i yªu cÇu rêi ®i trß ch¬i 
function LeaveGame() 
-- script viet hoa By http://tranhba.com leavetype = 0 bµy tá , ®em vÞ trÝ thiÕt trªn ®Êt ®å ®Ých bªn ngoµi s©n khu vùc # kh«ng ph¶i lµ chiÕn ®Êu khu vùc # 
-- script viet hoa By http://tranhba.com leavetype = 1 bµy tá , ®em vÞ trÝ thiÕt ë mét chç kh¸c ®å , tøc hoµn toµn rêi ®i chiÕn tr­êng 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh«i phôc nguyªn thñy trËn doanh 
SetRevPos(CS_RevId, CS_RevData) 
SetFightState(0) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 

SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
NewWorld(GetLeavePos()); 
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
-- script viet hoa By http://tranhba.com  ë thø hai Mission bªn trong thªm tr­íc mÆt nhµ ch¬i 

LeaveTeam() 
if (GetMSPlayerCount(MISSIONID,Camp) >= MAX_MEMBER_COUNT) then 
Say("Vèn ®æi phiªn nh©n sè ®· ®ñ , kh«ng thÓ gia nhËp liÔu !",0) 
return 
end; 

AddMSPlayer(MISSIONID, Camp); 
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
SetRevPos(CS_RevId, CS_RevData); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ tr­íc mÆt nhµ ch¬i ®Ých tö vong ch©n vèn 
	SetDeathScript("\\script\\missions\\hsbattle\\hsbattledeath.lua");

-- script viet hoa By http://tranhba.com  thiÕt trÝ lÇn sau tö vong sèng l¹i ®iÓm 
if (Camp == 1) then 
SetTempRevPos(GetTask(300), GetTask(301) * 32, GetTask(302)* 32); 
str = GetName().."<#> ®· tiÕn vµo "..GetMissionS(1).."<#> 1 bªn , tr­íc m¾t thµnh viªn nh©n sè v× "..GetMSPlayerCount(MISSIONID,1); 
NewWorld(CS_CampPos1[1], CS_CampPos1[2], CS_CampPos1[3]) 
elseif (Camp == 2) then 
SetTempRevPos(GetTask(300), GetTask(301) * 32, GetTask(302)* 32); 
str = GetName().."<#> ®· tiÕn vµo "..GetMissionS(2).."<#> 1 bªn , tr­íc m¾t thµnh viªn nh©n sè v× "..GetMSPlayerCount(MISSIONID,2); 
NewWorld(CS_CampPos2[1], CS_CampPos2[2], CS_CampPos2[3]) 
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
-- script viet hoa By http://tranhba.com  AddTongExp(GetMissionS(1), WIN_TONGEXP ) 
AddTongMoney(GetMissionS(1), MS_WIN_MONEY); 
-- script viet hoa By http://tranhba.com  SubTongExp(GetMissionS(2), LOSE_TONGEXP) 
MoveTongExp(WIN_TONGEXP, GetMissionS(1), GetMissionS(2)) 
else 
-- script viet hoa By http://tranhba.com  AddTongExp(GetMissionS(2), WIN_TONGEXP ) 
AddTongMoney(GetMissionS(2), MS_WIN_MONEY); 
-- script viet hoa By http://tranhba.com  SubTongExp(GetMissionS(1), LOSE_TONGEXP) 
MoveTongExp(WIN_TONGEXP, GetMissionS(2), GetMissionS(1)) 
end; 
end;
