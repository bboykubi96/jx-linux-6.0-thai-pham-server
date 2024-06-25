if racegame_tbMission then 
return 
end 

Include("\\script\\missions\\racegame\\base\\head.lua")
Include("\\script\\missions\\racegame\\lib.lua")
Include("\\script\\lib\\mem.lua")
Include("\\script\\event\\jiefang_jieri\\200804\\taskctrl.lua")
Include("\\script\\lib\\gb_taskfuncs.lua")
racegame_tbMission = new(tbMission) 

racegame_tbMission.nMissionId = 53 
racegame_tbMission.tbTimer = { {91, 18*10}} 
racegame_tbMission.nLatencyTime = 60*14 -- script viet hoa By http://tranhba.com  chê ®îi thêi gian 14 phót 

racegame_tbMission.nMapId = 863 -- script viet hoa By http://tranhba.com  b¶n ®å Id 

racegame_tbMission.tbNpcList = 
{ 
	[1] = {szName = "ÀÏ°å±ð¿ªÍæÐ¦", nNpcId = 228, szScriptPath = "\\script\\missions\\racegame\\npcsaichanglaoban.lua"},
	[2] = {szName = "¸¨ÖúµÀ¾ß", nNpcId = 1288,szScriptPath = "\\script\\missions\\racegame\\npctoolitem.lua"},
} 

racegame_tbMission.tbItemList = 
{ 
{szName=" gia tèc hoµn ", tbProp={6, 1, 978, 1, 0, 0} }, 
{szName=" l«i tèc hoµn ", tbProp={6, 1, 990, 1, 0, 0} }, 
{szName=" huyÒn thiªn bÉy rËp ", tbProp={6, 1, 982, 1, 0, 0} }, 
{szName=" ®ãng b¨ng bÉy rËp ", tbProp={6, 1, 984, 1, 0, 0} }, 
{szName=" h«n mª bÉy rËp ", tbProp={6, 1, 981, 1, 0, 0} }, 
{szName=" s­¬ng xuèng bÉy rËp ", tbProp={6, 1, 983, 1, 0, 0} }, 
{szName=" b¨ng s­¬ng kÌn hiÖu ", tbProp={6, 1, 979, 1, 0, 0} }, 
{szName=" b¹o l«i kÌn hiÖu ", tbProp={6, 1, 980, 1, 0, 0}}, 
{szName=" l¸ ch¾n ®Þa phï ", tbProp={6, 1, 987, 1, 0, 0} }, 
} 



racegame_tbMission.G_TSK_NAME = "racegame" 
racegame_tbMission.ReadyMissionState = 1 
racegame_tbMission.MissionState = 2 




racegame_tbMission.tbSignUpPos = {1592+4,3264+8}
racegame_tbMission.tbMissionV = 
{ 
MISSION_STATE = 1, 
SECOND_COUNTER = 2, 
RANK_COUNTER = 3, 
} 

racegame_tbMission.tbMissionS = 
{ 

} 





function racegame_tbMission:OnInit() 
SetMissionV(self.tbMissionV.MISSION_STATE, 1) 

gb_SetTask(self.G_TSK_NAME, self.MissionState, 1) 
self:AddGoalNpc() 
end 



function racegame_tbMission:OnPlayerJoin() 
ForbitSkill(1); 
SetMoveSpeed(5); 
jiefang_0804_ResetTask() 
SetTask(jiefang_0804_TSK_AwardState, 0) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,1); 
-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
-- script viet hoa By http://tranhba.com  SetFightState(1); 
-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
SetLogoutRV(1); 

-- script viet hoa By http://tranhba.com  cÊm chØ hµo quang 
ForbitAura(1) 
SetFightState(1); 
-- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetPunish(0); 
-- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
SetCreateTeam(0); 
-- script viet hoa By http://tranhba.com  më ra PK chèt më 

-- script viet hoa By http://tranhba.com  thiÕt trÝ thï giÕt 
ForbidEnmity( 1 ) 
-- script viet hoa By http://tranhba.com  b¾t ®Çu h¼n còng kh«ng thÓ PK 
SetPKFlag(1) 
-- script viet hoa By http://tranhba.com  cÊm chØ giao dÞch ; 
DisabledStall(1); 
ForbitTrade(0); 

ForbidChangePK(1); 
SetCurCamp(4); -- script viet hoa By http://tranhba.com  thiÕt trÝ t¹m thêi trËn doanh 
DisabledUseTownP(1); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 

local nTimerCount = GetMissionV(self.tbMissionV.SECOND_COUNTER) 
local szMsg = format("Tranh tµi b¾t ®Çu , cßn thõa l¹i thêi gian lµ <color=yellow>%d<color> gi©y .", self.nLatencyTime - nTimerCount) 
Msg2Player(szMsg) 
return 1 
end 

function racegame_tbMission:OnLeave() 
self:DelItem() 

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

function racegame_tbMission:OnClose() 
gb_SetTask(self.G_TSK_NAME, self.MissionState, 0) 
Msg2MSAll(self.nMissionId,"Tranh tµi thêi gian ®· dïng xong , tranh tµi kÕt thóc .") 
self:ClearGoalNpc() 
self:ClearItemNpc() 
local nPlayerCount = GetMSPlayerCount(self.nMissionId, 0) 
local tbPlayer = {} 
if (nPlayerCount <= 0) then 
return 
end; 
local idx, pidx = 0, 0; 
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
doFunByPlayer(tbPlayer[i], jiefang_0804_ResetTask) 
local nPlayerMapId = doFunByPlayer(tbPlayer[i], GetTask, jiefang_0804_TSK_MapId) 
if nPlayerMapId == 0 then 
nPlayerMapId = 524 
end 
doFunByPlayer(tbPlayer[i], NewWorld, nPlayerMapId, self.tbSignUpPos[1], self.tbSignUpPos[2]) 
end 

end 

function racegame_tbMission:AddGoalNpc() 
local nX, nY = 1568*32, 2507*32 
racegame_CallNpc(self.tbNpcList[1], self.nMapId, nX, nY) 
end 

function racegame_tbMission:ClearGoalNpc() 

ClearMapNpcWithName(self.nMapId, self.tbNpcList[1].szName); 
end 

function racegame_tbMission:ClearItemNpc() 

ClearMapNpcWithName(self.nMapId, self.tbNpcList[2].szName); 
end 

function racegame_tbMission:AddItemNpc() 

	local tbPosList = getndata("\\settings\\battles\\maps\\river\\outside.txt", 400)
for i = 1, getn(tbPosList) do 
racegame_CallNpc(self.tbNpcList[2], self.nMapId, tbPosList[i][1], tbPosList[i][2]) 
end 
end 

function racegame_tbMission:OnTimer() 
local nTimerCount = GetMissionV(self.tbMissionV.SECOND_COUNTER) 
	nTimerCount = nTimerCount + 10
local szMsg = format("Cßn thõa l¹i thêi gian lµ <color=yellow>%d<color> gi©y .", self.nLatencyTime - nTimerCount) 

if mod(nTimerCount, 100) == 10 then 
self:AddItemNpc() 

end 

if mod(nTimerCount, 100) == 20 then 
self:ClearItemNpc() 
end 
if mod(nTimerCount, 60) == 0 or nTimerCount == self.nLatencyTime - 10 then 
Msg2MSAll(self.nMissionId, szMsg) 
end 
if nTimerCount >= self.nLatencyTime then 
self:CloseGame() 
return 
end 

SetMissionV(self.tbMissionV.SECOND_COUNTER, nTimerCount) 
end 

function racegame_tbMission:DelItem() 
for i= 1, getn(self.tbItemList) do 
local tbProp = self.tbItemList[i].tbProp 
local nItemCount = CalcItemCount(-1,tbProp[1],tbProp[2],tbProp[3],-1) 
ConsumeItem(-1,nItemCount,tbProp[1],tbProp[2],tbProp[3],-1) 
end 

end
