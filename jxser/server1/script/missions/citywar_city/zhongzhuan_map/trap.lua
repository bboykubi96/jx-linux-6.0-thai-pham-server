-- script viet hoa By http://tranhba.com  c«ng thµnh chiÕn trung chuyÓn b¶n ®å to thµnh chiÕn ®Þa ®å # c«ng thµnh ph­¬ng # 
-- script viet hoa By http://tranhba.com Trap ID# c«ng thµnh chiÕn 
Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_city\\head.lua");
Include("\\script\\missions\\citywar_city\\camper.lua");

function main() 
SubWorldOld = SubWorld-- script viet hoa By http://tranhba.com  ghi chÐp nguyªn thñy ®Ých SubWorld 
WorldID = SubWorldIdx2ID(SubWorld); -- script viet hoa By http://tranhba.com  ®¹t ®­îc tr­íc mÆt b¶n ®å ®Ých ID sè 

idx = SubWorldID2Idx(221); -- script viet hoa By http://tranhba.com  ®¹t ®­îc chñ chiÕn trµng chÝnh lµ hay kh«ng ë vèn phôc vô khÝ trung 

if (idx < 0) then 
return -- script viet hoa By http://tranhba.com  kh«ng tån t¹i lµ trë vÒ 
end; 

SubWorld = idx; 
if (GetMissionV(MS_STATE) == 0) then 
Say("Phe ta b©y giê ®ang chuÈn bÞ ra chiÕn tr­êng ! xin mäi ng­êi d­ìng tinh sóc duÖ # an t©m mét chót chí nãng !", 0); 
SubWorld = SubWorldOld; 
return 
end 


if (WorldID == 222) then -- script viet hoa By http://tranhba.com  nÕu nh­ tr­íc mÆt vÞ trÝ lµ ë thñ ph­¬ng ®Ých phÝa sau , lµ bµy tá gia nhËp phÝa sau 
CheckAndJoin(1) 
SubWorld = SubWorldOld; 
else -- script viet hoa By http://tranhba.com  nÕu nh­ tr­íc mÆt vÞ trÝ lµ ë c«ng ph­¬ng ®Ých phÝa sau , lµ bµy tá muèn gia nhËp c«ng ph­¬ng 
-- script viet hoa By http://tranhba.com T = GetMissionV(MS_NEWSVALUE); 

-- script viet hoa By http://tranhba.com  thñ ph­¬ng tr­íc c«ng ph­¬ng 5 phót vµo trµng 
-- script viet hoa By http://tranhba.com if (T < 5) then 
-- script viet hoa By http://tranhba.com  Say("Tr­íc m¾t phe ta qu©n ®éi ®ang tô tËp , lËp tøc cã thÓ tiÕn vµo chiÕn tr­êng , xin mäi ng­êi d­ìng tinh sóc duÖ # an t©m mét chót chí nãng #",0) 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com end; 

CheckAndJoin(2) 
SubWorld = SubWorldOld; 
end; 
end; 

function CheckAndJoin(Camp) 
if (GetTongName() == GetMissionS(Camp)) then -- script viet hoa By http://tranhba.com  thuéc vÒ nªn bang héi lµ bµy tá nhµ ch¬i v× qu©n ch¸nh quy , cho phÐp tiÕn vµo 
if (GetJoinTongTime() >= 7200) then 
-- if 1==1 then
if (GetTask(TV_TASKKEY) ~= GetMissionV(MS_KEY)) then 
BT_SetData(PL_KEYNUMBER, 0) 
BT_SetData(PL_TOTALPOINT, 0) 
SetTask(1017, 0) 
SetTask(TV_SERIESKILL_REALY,0) 
BT_SetData(PL_BATTLECAMP, 0) 
SetTask(TV_TASKKEY , GetMissionV(MS_KEY)); 
BT_LeaveBattle() 
BT_ClearPlayerData() 
end; 
JoinCamp(Camp, 1); 
else 
if (JoinWithCard(Camp, 0) == 0) then 
Say("Ng­¬i gia nhËp bang héi ®Ých thêi gian qu¸ ng¾n , kh«ng thÓ tham gia chiÕn ®Êu !", 0); 
end; 
end; 
else 
JoinWithCard(Camp, 1) 
end; 
end; 

-- script viet hoa By http://tranhba.com return 0 bµy tá t¹p ®Òu kh«ng cã , 1 bµy tá cã t¹p 
function JoinWithCard(Camp, UI) 
CityID = GetWarOfCity(); 
-- script viet hoa By http://tranhba.com  nÕu nh­ ®· sö dông qu¸ phiÕu vµo trµng qu¸ , lµ trùc tiÕp cho ®i 
if (GetTask(TV_TASKKEY) == GetMissionV(MS_KEY) and GetTask(TV_TASKVALUE) == Camp) then 
JoinCamp(Camp,2) 
else 
if (CityID == 0) then 
print("Error! CityID == 0"); 
return 0 
end; 

-- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng cã phiÕu lµ kh«ng cho vµo 
CardItemID = 0; 
Camp = 1; 
if (GetItemCountEx(CardTab[CityID * 2 - 1]) >= 1) then 
CardItemID = CardTab[CityID * 2 - 1]; 
Camp = 2; 
elseif (GetItemCountEx(CardTab[CityID * 2]) >= 1) then 
CardItemID = CardTab[CityID * 2]; 
Camp = 1; 
else 
if (UI == 1) then 
Say("Ng­¬i kh«ng cã lÖnh bµi lµm sao cã thÓ ®i vµo ®©y ! ®i mét chót !", 0); 
end 

SetPos(OuterPos[1][2], OuterPos[1][3]) 
return 0 
end; 

life = GetItemLife(CardItemID); 
life = floor(life / 1440); 
if (life > 5) then 
DelItemEx(CardItemID); 
Say(format(" lÖnh bµi nµy tõ %d ngµy khëi mÊt ®i hiÖu lùc , kh«ng thÓ sö dông ", life), 0); 
SetPos(OuterPos[1][2], OuterPos[1][3]) 
else 
DelItemEx(CardItemID); 
BT_SetData(PL_KEYNUMBER, 0) 
BT_SetData(PL_TOTALPOINT, 0) 
SetTask(1017, 0) 
SetTask(TV_SERIESKILL_REALY,0) 
SetTask(TV_TASKID, MISSIONID) 
SetTask(TV_TASKKEY , GetMissionV(MS_KEY)); 
SetTask(TV_TASKVALUE, Camp) 
SetTask(TV_CITYID, CityID) 
BT_LeaveBattle() 
BT_ClearPlayerData() 
JoinCamp(Camp,2) 
end 
end; 
return 1 
end; 
