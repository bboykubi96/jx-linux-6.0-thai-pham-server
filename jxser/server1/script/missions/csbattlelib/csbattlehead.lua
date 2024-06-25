-- script viet hoa By http://tranhba.com cs s©n ®Êu m« thøc 
-- script viet hoa By http://tranhba.com  cã ng­êi ®Õm h¹n chÕ , sau ®ã tiÕn vµo sau , song ph­¬ng lùa chän ®éi ngò trËn doanh . ®¸nh , nÕu nh­ kh«ng chän v× b¹ch tªn , ng­êi ®øng xem 
-- script viet hoa By http://tranhba.com  ghi chÐp tÝch ph©n . tranh tµi trong qu¸ tr×nh cã thÓ biÕn ®æi trËn doanh . 
-- script viet hoa By http://tranhba.com  kh«ng thÓ häp thµnh ®éi 
-- script viet hoa By http://tranhba.com  tranh tµi kh«ng lóc nµo ®ang lóc h¹n chÕ , c¸i kû lôc nµy sÏ ghi chÐp ®ang ®ïa nhµ sè liÖu trung 
-- script viet hoa By http://tranhba.com  ®Õn lóc ®ã ®ang lóc , tù ®éng bÞ ®¸ n¬i xa . 
-- script viet hoa By http://tranhba.com  nÕu nh­ nh©n sè kh«ng v­ît qua nh©n sè th­îng h¹n , lµ cã thÓ ë tranh tµi trong qu¸ tr×nh cho phÐp kú tha nhµ ch¬i gia nhËp . 
-- script viet hoa By http://tranhba.com  nhµ ch¬i tö vong sÏ ë trong ®ã mét ®Þa ph­¬ng sèng l¹i . 
-- script viet hoa By http://tranhba.com  nhµ ch¬i nÕu nh­ ®o¹n tuyÕn lµ , sèng l¹i ®iÓm bªn ngoµi 

-- script viet hoa By http://tranhba.com  b¶o tån tr­íc mÆt kÝch sèng nhiÖm vô thuéc vÒ lo¹i nµo nhiÖm vô MissionV thay ®æi l­îng index , bëi v× diÔn vâ tr­êng n¬i chèn tr­íc m¾t dïng cho b×nh th­êng diÔn vâ tr­êng cïng cao gi¸o khiªu chiÕn cuéc so tµi trung , 
-- script viet hoa By http://tranhba.com  cïng lóc ®o¹n chØ cã thÓ cã mét chç dïng . cho nªn dïng c¸i nµy thay ®æi l­îng tíi khu ph©n . 
-- script viet hoa By http://tranhba.com 0 bµy tá kh«ng cã nhiÖm vô nhiÖm vô kÝch ho¹t , 1 bµy tá b×nh th­êng diÔn vâ tr­êng , 2 bµy tá cao gi¸o khiªu chiÕn cuéc so tµi 

ACTIVEMISSION = 40; 

FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 

TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi©y c«ng bè mét c¸i chiÕn huèng 
TIMER_2 = 60 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chiÕn thêi gian lµ 1 giê 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp nhiÖm vô tr¹ng th¸i thay ®æi l­îng ID 
-- script viet hoa By http://tranhba.com  nªn thay ®æi l­îng chØ h­íng ®Ých tr¹ng th¸i trÞ gi¸ 0 bµy tá chiÕn dÞch v× më ra , 1 bµy tá chiÕn dÞch ghi danh trung , 2 bµy tá chiÕn dÞch chiÕn ®Êu tiÕn hµnh trung , 3 bµy tá chiÕn dÞch míi võa kÕt thóc 

MS_STORETASKID = 240; 
MS_S_DEATHCOUNT = 3; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp 1 nhµ ch¬i sè th­¬ng vong l­îng ®Ých thay ®æi l­îng ID 
MS_J_DEATHCOUNT = 4; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp 2 nhµ ch¬i sè th­¬ng vong l­îng ®Ých thay ®æi l­îng ID 

MS_S_SIGHCOUNT = 5;-- script viet hoa By http://tranhba.com  nhiÖm vô trung tèng ph­¬ng céng ghi danh nh©n sè cña 
MS_J_SIGHCOUNT = 6;-- script viet hoa By http://tranhba.com  nhiÖm vô trung kim ph­¬ng céng ghi danh nh©n sè cña 

MS_NEWSVALUE = 10; -- script viet hoa By http://tranhba.com  nhiÖm vô trung cÊt gi÷ tin tøc thay ®æi l­îng ®Ých ®Þa ph­¬ng 
PLAYER_KILLCOUNT = 240; -- script viet hoa By http://tranhba.com  t¹m thêi thay ®æi l­îng ,temptask 
PLAYER_DEATHCOUNT = 241; 
JOINSTATE = 242; 

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

if (leavetype == 0) then 
SetCurCamp(0) 
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
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(2,idx, 0); 
if (idx == 0) then 
break 
end; 
PlayerIndex = pidx; 
LeaveGame(1); 
end; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function JoinCamp(Camp) 
-- script viet hoa By http://tranhba.com  ë thø hai Mission bªn trong thªm tr­íc mÆt nhµ ch¬i 
LeaveTeam() 
if (GetMSPlayerCount(2,Camp) >= MAX_MEMBER_COUNT) then 
Say("Ph­¬ng nµy hiÖn ®· ®Çy viªn , kh«ng thÓ gia nhËp !",0) 
return 
end; 
AddMSPlayer(2, Camp); 
SetTaskTemp(JOINSTATE, 1); 
SetCurCamp(Camp); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,1); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
SetFightState(1); 

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
	SetDeathScript("\\script\\missions\\cs¾º¼¼³¡\\csbattledeath.lua");

-- script viet hoa By http://tranhba.com  thiÕt trÝ lÇn sau tö vong sèng l¹i ®iÓm 
if (Camp == 1) then 
SetTempRevPos(W, CS_OuterPos[2] * 32, CS_OuterPos[3] * 32); 
str = GetName().."<#> gia nhËp hoµng ph­¬ng , b©y giê nh©n sè lµ "..GetMSPlayerCount(2,1); 
SetPos(CS_CampPos1[2], CS_CampPos1[3]) 
elseif (Camp == 2) then 
SetTempRevPos(W, CS_OuterPos[2] * 32, CS_OuterPos[3] * 32); 
str = GetName().."<#> gia nhËp tö ph­¬ng , b©y giê nh©n sè lµ "..GetMSPlayerCount(2,2); 
SetPos(CS_CampPos2[2], CS_CampPos2[3]) 
elseif (Camp == 4) then 
SetTempRevPos(GetTaskTemp(300), GetTaskTemp(301) * 32, GetTaskTemp(302)* 32); 
str = GetName().."<#> gia nhËp chiÕn ®Êu , b©y giê nh©n sè lµ "..GetMSPlayerCount(2,4); 
SetPos(CS_CampPos4[2], CS_CampPos4[3]) 
		SetDeathScript("\\script\\missions\\hsbattle\\hsbattledeath.lua");
end; 

-- script viet hoa By http://tranhba.com  h­íng thø 2 c¸ Mission( còng chÝnh lµ diÔn vâ tr­êng ) ®Ých tÊt c¶ mäi ng­êi ph¸t tin tøc 
Msg2MSAll(2, str); 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ®em gi©y truyÖn ®æi thµnh ph©n cïng gi©y , tû nh­ 62s = 1m2s 
function GetMinAndSec(nSec) 
nRestMin = floor(nSec / 60); 
nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
