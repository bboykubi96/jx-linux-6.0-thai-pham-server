if racegame_tbReadyMission then 
return 
end 
Include("\\script\\event\\jiefang_jieri\\200804\\taskctrl.lua")
Include("\\script\\missions\\racegame\\racegame.lua")
Include("\\script\\missions\\racegame\\base\\head.lua")
Include("\\script\\lib\\mem.lua")

racegame_tbReadyMission = new(tbMission) 

racegame_tbReadyMission.nMissionId = 52 
racegame_tbReadyMission.tbTimer = {{90, 18*1}} 
racegame_tbReadyMission.nLatencyTime = 60 -- script viet hoa By http://tranhba.com  chê ®îi thêi gian 60 gi©y 
racegame_tbReadyMission.nSignUpTime = 50 -- script viet hoa By http://tranhba.com  50 gi©y sau kh«ng thÓ ghi danh 
racegame_tbReadyMission.nMapId = 582 -- script viet hoa By http://tranhba.com  b¶n ®å Id 
racegame_tbReadyMission.nPlayerCountLimit = 120 -- script viet hoa By http://tranhba.com  nhiÒu nhÊt 120 ng­êi tham gia 
racegame_tbReadyMission.nLevelLimit = 50 
racegame_tbReadyMission.tbWaitPos = 
{ 
{1589, 3029}, 
{1595, 2964}, 
{1582, 2972}, 
{1562, 2946}, 
{1560, 2965}, 
{1558, 2989}, 
{1569, 3029}, 
} 
racegame_tbReadyMission.tbMissionV = 
{ 
MISSION_STATE = 1, 
SECOND_COUNTER = 2, 

} 

racegame_tbReadyMission.tbMissionS = 
{ 

} 


function racegame_tbReadyMission:OnTimer() 
local nTimerCount = GetMissionV(self.tbMissionV.SECOND_COUNTER) 

	nTimerCount = nTimerCount + 1
local szMsg = format("Cßn thõa l¹i thêi gian lµ <color=yellow>%d<color> gi©y .", self.nLatencyTime - nTimerCount) 

if nTimerCount >= self.nSignUpTime and GetMissionV(self.tbMissionV.MISSION_STATE) ~= 3 then 
SetMissionV(self.tbMissionV.MISSION_STATE, 3) 
gb_SetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.ReadyMissionState, 3) 
end 


if nTimerCount >= self.nLatencyTime then 
self:CloseGame() 
return 
elseif nTimerCount >= self.nLatencyTime - 10 or mod(nTimerCount, 10) == 0 or nTimerCount == 1 then 
Msg2MSAll(self.nMissionId, szMsg) 
end 

SetMissionV(self.tbMissionV.SECOND_COUNTER, nTimerCount) 
end 



function racegame_tbReadyMission:OnClose() 
gb_SetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.ReadyMissionState, 0) 
local pidx = 0 
local idx = 0 
local tbPlayer = {} 
local nPlayerCount = GetMSPlayerCount(self.nMissionId, 0) 
if (nPlayerCount <= 0) then 
return 
end; 
local bIsOpen = racegame_tbMission:StartGame() 
for i = 1, nPlayerCount do 
idx, pidx = GetNextPlayer(self.nMissionId, idx, 0); 
if (pidx > 0) then 
tinsert(tbPlayer, pidx) 

end; 

if (idx == 0) then 
break; 
end; 
end 
for i = 1, getn(tbPlayer) do 
if bIsOpen ~= 1 then 
doFunByPlayer(tbPlayer[i], jiefang_0804_ResetTask) 
local nPlayerMapId = doFunByPlayer(tbPlayer[i], GetTask, jiefang_0804_TSK_MapId) 
if nPlayerMapId == 0 then 
nPlayerMapId = 524 
end 
doFunByPlayer(tbPlayer[i], NewWorld, nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2]) 
doFunByPlayer(tbPlayer[i], Msg2Player,"Tr­íc mÆt ®­êng kh«ng th«ng , xin chê chót cuéc tranh tµi .") 
else 
			local nX, nY = getadata("\\settings\\battles\\maps\\river\\´óÓª2.txt")
doFunByPlayer(tbPlayer[i], NewWorld, racegame_tbMission.nMapId, nX/32, nY/32) 
end 

end 

end 


function racegame_tbReadyMission:OnInit() 
SetMissionV(self.tbMissionV.MISSION_STATE, 1) 
gb_SetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.ReadyMissionState, 1) 

end 

function racegame_tbReadyMission:OnRun() 
SetMissionV(self.tbMissionV.MISSION_STATE, 2) 
gb_SetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.ReadyMissionState, 2) 
end 

function racegame_tbReadyMission:OnPlayerJoin() 
-- script viet hoa By http://tranhba.com  truyÒn tèng ®Õn cuéc so tµi trµng 
local nPlayerCount = GetMSPlayerCount(self.nMissionId, 0) 
if nPlayerCount >= self.nPlayerCountLimit or GetLevel() < self.nLevelLimit then 
jiefang_0804_ResetTask() 
local nPlayerMapId = GetTask(jiefang_0804_TSK_MapId) 
if nPlayerMapId == 0 then 
nPlayerMapId = 524 
end 
NewWorld(nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2]) 
if nPlayerCount >= self.nPlayerCountLimit then 
Msg2Player("Tham gia ho¹t ®éng nh©n sè ®· ®ñ råi , ng­¬i tham gia cuéc kÕ tiÕp ®i !") 
Say("Tham gia ho¹t ®éng nh©n sè ®· ®ñ råi , ng­¬i tham gia cuéc kÕ tiÕp ®i !", 0) 
elseif GetLevel() < self.nLevelLimit then 
Msg2Player(format("CÊp bËc ch­a ®ñ %s, kh«ng thÓ tham gia ho¹t ®éng .", self.nLevelLimit)) 
Say(format("CÊp bËc ch­a ®ñ %s, kh«ng thÓ tham gia ho¹t ®éng .", self.nLevelLimit), 0) 
end 
return 0 
end 

ForbitSkill(1); 
SetMoveSpeed(18); 

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

-- script viet hoa By http://tranhba.com  cÊm chØ hµo quang 
ForbitAura(1) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
ForbidEnmity( 1 ) 
-- script viet hoa By http://tranhba.com  më ra PK chèt më 
-- script viet hoa By http://tranhba.com  b¾t ®Çu h¼n còng kh«ng thÓ PK 
SetPKFlag(0) 
-- script viet hoa By http://tranhba.com  cÊm chØ giao dÞch ; 
DisabledStall(1); 
ForbitTrade(0); 
ForbidChangePK(1); 
DisabledUseTownP(1); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 

return 1; 
end 

function racegame_tbReadyMission:OnLeave() 
ForbitSkill(0); 
SetMoveSpeed(-1); 

-- script viet hoa By http://tranhba.com  t¾t cÊm chØ hµo quang 
ForbitAura(0) 
-- script viet hoa By http://tranhba.com  t¾t thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,0); 
-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
SetFightState(0); 
-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
-- script viet hoa By http://tranhba.com SetLogoutRV(0); 
-- script viet hoa By http://tranhba.com  tö vong trõng ph¹t 
SetPunish(1); 
-- script viet hoa By http://tranhba.com  më ra häp thµnh ®éi chøc n¨ng 
SetCreateTeam(0); 
-- script viet hoa By http://tranhba.com  më ra PK chèt më 

-- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
ForbidEnmity( 0 ) 
-- script viet hoa By http://tranhba.com  b¾t ®Çu h¼n còng kh«ng thÓ PK 
SetPKFlag(0) 
-- script viet hoa By http://tranhba.com  t¾t cÊm chØ giao dÞch ; 
DisabledStall(0); 
ForbitTrade(0); 

local nCamp = GetCamp(); 
SetCurCamp(nCamp); 

ForbidChangePK(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  t¾t cÊm chØ sö dông håi tr×nh # 

end
