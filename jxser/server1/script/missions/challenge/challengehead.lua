-- script viet hoa By http://tranhba.com  khiªu chiÕn cuéc so tµi m« thøc 

-- script viet hoa By http://tranhba.com 1# tõ GM cho c¸c khu ®Ých cao gi¸o ng­êi phô tr¸ch . sè tr­¬ng môc thªm phô thªm ®iÓm 
-- script viet hoa By http://tranhba.com 2# cao gi¸o ng­êi phô tr¸ch ë tranh tµi ghi danh giai ®o¹n ®Õn cuéc so tµi trµng , cïng Npc ®èi tho¹i ®¹t ®­îc ®¹o cô , theo thø tù lµ ®ang # tµ # b¹ch # ba trËn doanh bÊt ®ång m«n bµi . 
-- script viet hoa By http://tranhba.com 3# ng­êi phô tr¸ch b¾t ®­îc ®¹o cô sau giao cho tranh tµi song ph­¬ng ®éi tr­ëng . 
-- script viet hoa By http://tranhba.com 4# ®éi tr­ëng lÊy ®­îc ®¹o cô sau , häp thµnh ®éi m×nh ®Ých 5 ng­êi ®éi ngò . sau ®ã cÇm phiÕu vµo trµng . 
-- script viet hoa By http://tranhba.com 5# vµo trµng sau , lµm cuéc so tµi chuÈn bÞ tr­íc . 
-- script viet hoa By http://tranhba.com 6# sau khi cuéc tranh tµi kÕt thóc . ng­êi phô tr¸ch ghi chÐp tranh tµi thµnh tÝch , h­íng quan ph­¬ng th«ng b¸o . 


-- script viet hoa By http://tranhba.com  b¶o tån tr­íc mÆt kÝch sèng nhiÖm vô thuéc vÒ lo¹i nµo nhiÖm vô MissionV thay ®æi l­îng index , bëi v× diÔn vâ tr­êng n¬i chèn tr­íc m¾t dïng cho b×nh th­êng diÔn vâ tr­êng cïng cao gi¸o khiªu chiÕn cuéc so tµi trung , 
-- script viet hoa By http://tranhba.com  cïng lóc ®o¹n chØ cã thÓ cã mét chç dïng . cho nªn dïng c¸i nµy thay ®æi l­îng tíi khu ph©n . 
-- script viet hoa By http://tranhba.com 0 bµy tá kh«ng cã nhiÖm vô nhiÖm vô kÝch ho¹t , 1 bµy tá b×nh th­êng diÔn vâ tr­êng , 2 bµy tá cao gi¸o khiªu chiÕn cuéc so tµi 

ACTIVEMISSION = 40; 

FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 

TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi©y c«ng bè mét c¸i chiÕn huèng 
TIMER_2 = 20 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chiÕn tæng thêi gian lµ 20 phót 
GO_TIME = 300 * FRAME2TIME / TIMER_1; -- script viet hoa By http://tranhba.com  ghi danh thêi gian lµ nöa giê 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp nhiÖm vô tr¹ng th¸i thay ®æi l­îng ID 
-- script viet hoa By http://tranhba.com  nªn thay ®æi l­îng chØ h­íng ®Ých tr¹ng th¸i trÞ gi¸ 0 bµy tá chiÕn dÞch v× më ra , 1 bµy tá chiÕn dÞch ghi danh trung , 2 bµy tá chiÕn dÞch chiÕn ®Êu tiÕn hµnh trung , 3 bµy tá chiÕn dÞch míi võa kÕt thóc 

MS_STORETASKID = 240; 
MS_S_DEATHCOUNT = 3; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp 1 nhµ ch¬i sè th­¬ng vong l­îng ®Ých thay ®æi l­îng ID 
MS_J_DEATHCOUNT = 4; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp 2 nhµ ch¬i sè th­¬ng vong l­îng ®Ých thay ®æi l­îng ID 

MS_S_SIGHCOUNT = 5;-- script viet hoa By http://tranhba.com  nhiÖm vô trung tèng ph­¬ng céng ghi danh nh©n sè cña 
MS_J_SIGHCOUNT = 6;-- script viet hoa By http://tranhba.com  nhiÖm vô trung kim ph­¬ng céng ghi danh nh©n sè cña 
MS_S_JOINED = 7; -- script viet hoa By http://tranhba.com  nhiÖm vô trung tèng ph­¬ng ®· tiÕn vµo n¬i so tµi thay ®æi l­îng ID 
MS_J_JOINED = 8; -- script viet hoa By http://tranhba.com  nhiÖm vô trung kim ph­¬ng ®· tiÕn vµo n¬i so tµi thay ®æi l­îng ID 

MS_NEWSVALUE = 10; -- script viet hoa By http://tranhba.com  nhiÖm vô trung cÊt gi÷ tin tøc thay ®æi l­îng ®Ých ®Þa ph­¬ng 
PLAYER_KILLCOUNT = 240; -- script viet hoa By http://tranhba.com  t¹m thêi thay ®æi l­îng ,temptask 
PLAYER_DEATHCOUNT = 241; 
JOINSTATE = 242; 
MISSIONID = 4; 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nhµ ch¬i yªu cÇu rêi ®i trß ch¬i 
function LeaveGame(leavetype) 
-- script viet hoa By http://tranhba.com leavetype = 0 bµy tá , ®em vÞ trÝ thiÕt trªn ®Êt ®å ®Ých bªn ngoµi s©n khu vùc # kh«ng ph¶i lµ chiÕn ®Êu khu vùc # 
-- script viet hoa By http://tranhba.com leavetype = 1 bµy tá , ®em vÞ trÝ thiÕt ë mét chç kh¸c ®å , tøc hoµn toµn rêi ®i chiÕn tr­êng 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh«i phôc nguyªn thñy trËn doanh 
SetRevPos(CS_RevId, CS_RevData) 
SetFightState(1) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
SetCreateTeam(1); 
if (leavetype == 0) then 
SetCurCamp(camp) 
SetFightState(0) 
SetPos(CS_OuterPos[2], CS_OuterPos[3]); 
else 
SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
NewWorld(GetLeavePos()); 
end; 
end; 

function GameOver() 
idx = 0; 
OldPlayer = PlayerIndex; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 
if (idx == 0) then 
break 
end; 
PlayerIndex = pidx; 
LeaveGame(0); 
end; 
PlayerIndex = OldPlayer; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function JoinCamp(Camp) 
-- script viet hoa By http://tranhba.com  ë thø hai Mission bªn trong thªm tr­íc mÆt nhµ ch¬i 
LeaveTeam() 
if (GetMSPlayerCount(MISSIONID,Camp) >= MAX_MEMBER_COUNT) then 
Say("Ph­¬ng nµy b©y giê ng­êi ®· ®ñ , kh«ng thÓ gia nhËp !",0) 
return 
end; 

AddMSPlayer(MISSIONID, Camp); 
SetTaskTemp(JOINSTATE, 1); 
SetCurCamp(Camp); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,1); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
SetFightState(0); 

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
-- script viet hoa By http://tranhba.com  nhµ ch¬i tö vong sau , sèng l¹i ®Ých ®Þa ph­¬ng liÒn thiÕt ®ang ®ïa nhµ muèn thèi lui ra ®Ých ®Þa ®iÓm # ë bæn ®Þa ®å th­îng kh«ng ph¶i lµ chiÕn ®Êu khu vùc ) 
W,X,Y = GetWorldPos(); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ tr­íc mÆt nhµ ch¬i ®Ých tö vong ch©n vèn 
if (Camp == 1) then 
		SetDeathScript("\\script\\missions\\challenge\\challengedeath.lua");
elseif (Camp == 2) then 
		SetDeathScript("\\script\\missions\\challenge\\challengedeath1.lua");
end 


-- script viet hoa By http://tranhba.com  thiÕt trÝ lÇn sau tö vong sèng l¹i ®iÓm 
if (Camp == 1) then 
SetTempRevPos(W, CS_OuterPos[2] * 32, CS_OuterPos[3] * 32); 
str = GetName().."<#> gia nhËp hoµng ph­¬ng , b©y giê nh©n sè lµ "..GetMSPlayerCount(MISSIONID,1); 
SetPos(CS_CampPos1[2], CS_CampPos1[3]) 
elseif (Camp == 2) then 
SetTempRevPos(W, CS_OuterPos[2] * 32, CS_OuterPos[3] * 32); 
str = GetName().."<#> gia nhËp tö ph­¬ng , b©y giê nh©n sè lµ "..GetMSPlayerCount(MISSIONID,2); 
SetPos(CS_CampPos2[2], CS_CampPos2[3]) 
elseif (Camp == 6) then 
SetTempRevPos(GetTask(300), GetTask(301) * 32, GetTask(302)* 32); 
str = GetName().."<#> tham gia qu©n chiÕn , b©y giê nh©n sè lµ "..GetMSPlayerCount(MISSIONID,6); 
SetPos(CS_CampPos0[2], CS_CampPos0[3]) 
end; 

-- script viet hoa By http://tranhba.com  h­íng tÊt c¶ tè víi ng­êi ph¸t tin tøc 
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

-- script viet hoa By http://tranhba.com  thèi lui ra trß ch¬i sau ®Ých sèng l¹i ®iÓm ID, còng chÝnh lµ ghi danh ®Ých chç ®ã ®i 
CS_RevId = 80; 
CS_RevData = 36; 

-- script viet hoa By http://tranhba.com  rêi ®i lÇn nµy trß ch¬i sau ®Ých vÞ trÝ worldid, x, y, mét lo¹i chÝnh lµ ghi danh ®iÓm 
-- script viet hoa By http://tranhba.com CS_LeavePos = {20, 3546, 6226}; 

-- script viet hoa By http://tranhba.com  bªn ngoµi héi tr­êng ®Ých vÞ trÝ 
CS_OuterPos = {209, 1548, 3297}; 


-- script viet hoa By http://tranhba.com  gia nhËp song ph­¬ng trËn doanh lóc ®Ých vÞ trÝ 
CS_CampPos0 = {209, 1631, 3203}; -- script viet hoa By http://tranhba.com  mµu tr¾ng 
CS_CampPos1 = {209, 1608, 3167}; -- script viet hoa By http://tranhba.com  mµu vµng 
CS_CampPos2 = {209, 1674, 3246}; -- script viet hoa By http://tranhba.com  mµu ®á 


-- script viet hoa By http://tranhba.com  trß ch¬i mçi mét trËn doanh ®Ých lín nhÊt nh©n sè 
MAX_MEMBER_COUNT = 5; 

MS_CAMP1 = 1; -- script viet hoa By http://tranhba.com  song ph­¬ng trËn doanh sè 
MS_CAMP2 = 2; 

function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 
