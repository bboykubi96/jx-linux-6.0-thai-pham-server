Include("\\script\\lib\\baseclass.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\missions\\dungeon\\dungeon.lua")
Include("\\script\\missions\\dungeon\\dungeonmanager.lua")

if not sltDungeon then 
sltDungeon = tbDungeonClass:new({}); 
end 

-- script viet hoa By http://tranhba.com  phã b¶n m« b¶n tin tøc , sè liÖu sÏ kh«ng thay ®æi , mçi phã b¶n còng mét d¹ng 
sltDungeon.strDungeon = " thö luyÖn ®­êng "; 
sltDungeon.nMapTemplet = 925; 
sltDungeon.nTimerInterval = 10; 
sltDungeon.tbTrapPos = {51456, 102848}; 
sltDungeon.MONSTER_LIMIT = 100; 
sltDungeon.TOWER_CALL_DISTANCE_LIMIT = 5; 
sltDungeon.PREPARE_TIME = 60*3; 
sltDungeon.SPAWN_INTERVAL = 2*18; 
sltDungeon.CHECK_POS_INTERVAL = 1*18 
sltDungeon.SPAWN_LEVEL_INTERVAL = 1*60*18; 
sltDungeon.SERVER_FREE_NPC_LIMIT = 200; -- script viet hoa By http://tranhba.com  khi phôc vô khÝ nh­ng t¨ng thªm ®Ých NPC sè l­îng lín h¬n 200 míi cã thÓ më ra phã b¶n 
sltDungeon.MONSTER_TEMPLETE = 
{ 
1559, 
1560, 
1561, 
1562, 
1563, 
1564, 
1565, 
1566, 
1567, 
1568, 
} 
sltDungeon.SHOOTER_TEMPLETE = 1557 

sltDungeon.REGION_LIMIT = 2; 

sltDungeon.tbWayPoint = 
{ 
{1651,3168}, 
{1628,3186}, 
{1609,3179}, 
{1597,3177}, 
{1585,3198}, 
{1582,3213}, 
{1582,3231}, 
{1592,3245}, 
{1604,3259}, 
{1617,3257}, 
{1632,3234}, 
{1632,3214}, 
{1628,3186}, 
{1651,3168}, 
} 

sltDungeon.tbAwardList = 
{ 
[1] = 
{ 
nMin = 100, 
tbAward= 
{ 
{szName=" b¹ch kim b¶o r­¬ng ", tbProp={6,1,2322,1,0,0}, nBindState = -2}, 
} 
}, 
[2] = 
{ 
nMin = 90, 
tbAward= 
{ 
{szName=" hoµng kim b¶o hép ", tbProp={6,1,2321,1,0,0}, nBindState = -2}, 
} 
}, 
[3] = 
{ 
nMin = 70, 
tbAward= 
{ 
{szName=" ng©n chÊt b¶o hép ", tbProp={6,1,2320,1,0,0}, nBindState = -2}, 
} 
}, 
[4] = 
{ 
nMin = 50, 
tbAward= 
{ 
{szName=" ®ång chÊt b¶o hép ", tbProp={6,1,2319,1,0,0}, nBindState = -2}, 
} 
}, 
[5] = 
{ 
nMin = 0, 
tbAward= 
{ 
{szName=" b»ng gç b¶o hép ", tbProp={6,1,2318,1,0,0}, nBindState = -2}, 
} 
}, 
} 

-- script viet hoa By http://tranhba.com  phã b¶n dÞch biÕn sè theo , mçi phã b¶n ®Òu kh«ng mét d¹ng 
sltDungeon.tbData = {}; 

sltDungeon.tbData.tbTower = 
{ 
{tbPos = {50528/32,102016/32}, nNpcIdx = 0,}, 
{tbPos = {51168/32,102016/32}, nNpcIdx = 0,}, 
{tbPos = {50880/32,102976/32}, nNpcIdx = 0,}, 
{tbPos = {50720/32,104128/32}, nNpcIdx = 0,}, 
{tbPos = {51616/32,101344/32}, nNpcIdx = 0,}, 
{tbPos = {51488/32,103904/32}, nNpcIdx = 0,}, 
{tbPos = {51840/32,102208/32}, nNpcIdx = 0,}, 
{tbPos = {51904/32,103264/32}, nNpcIdx = 0,}, 
{tbPos = {52000/32,104448/32}, nNpcIdx = 0,}, 
{tbPos = {52480/32,102656/32}, nNpcIdx = 0,}, 
} 

function sltDungeon.getDistance(tbPosOrigin, tbPosTarget) 
local nX = tbPosOrigin[2] - tbPosTarget[2]; 
local nY = tbPosTarget[1] - tbPosOrigin[1]; 
-- script viet hoa By http://tranhba.com  cô thÓ kho¶ng c¸ch , lÊy chØnh sæ 
	local nDistance = floor(sqrt(nX*nX + nY*nY));

return nDistance; 
end 

function sltDungeon:OnMonsterTimer(nInterval, nNpcIndex) 
local nX, nY,nMapId = GetNpcPos(nNpcIndex); 
local nRetInterval = nInterval; 
-- script viet hoa By http://tranhba.com  npc biÕn mÊt 
if (nMapId == 0) then 
return 0; 
end 

nX = nX/32; 
nY = nY/32; 

nMapId = SubWorldIdx2ID(nMapId); 

-- script viet hoa By http://tranhba.com  c¸i nµy NPC kh«ng ph¶i lµ vèn tÊm b¶n ®å ®Ých 
if (nMapId ~= self.nDungeonId) then 
return 0; 
end 

local nNextPos = GetNpcParam(nNpcIndex, 1) 

if (nNextPos == nil or self.tbWayPoint[nNextPos] == nil) then 
nRetInterval = 0; 
else 
local nDistance = self.getDistance({nX, nY}, {self.tbWayPoint[nNextPos][1], self.tbWayPoint[nNextPos][2]}); 

if (nDistance <= self.REGION_LIMIT) then -- script viet hoa By http://tranhba.com  tíi 
			nNextPos = nNextPos + 1;
if (nNextPos > getn(self.tbWayPoint)) then 
DelNpc(nNpcIndex); 
nRetInterval = 0 
				self.nFinishCount = self.nFinishCount + 1;
				RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "AddMonsterCount",1});
-- script viet hoa By http://tranhba.com self.nMonsterOnStage = self.nMonsterOnStage - 1; 

-- script viet hoa By http://tranhba.com  ng­êi cuèi cïng qu¸i vËt 
if (self.nFinishCount >= self.MONSTER_LIMIT) then 
self.bPrepareClose = 1; 
self.bBattleOver = 1; 
for i=1,getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
doFunByPlayer(self.tbMember[i].nIndex, Msg2Player,"ThÝch kh¸ch t¹m thêi bÞ c¸c h¹ gi¶i quyÕt , b©y giê cã thÓ ®Õn thö luyÖn ®­êng tr­ëng l·o chç dÉn t­ëng ."); 
end 
end 
end 
return nRetInterval; 
end 
SetNpcParam(nNpcIndex, 1, nNextPos); 
end 
if (self.tbWayPoint[nNextPos] ~= nil) then 
NpcWalk(nNpcIndex, self.tbWayPoint[nNextPos][1], self.tbWayPoint[nNextPos][2]); 
else 
nRetInterval = 0; 
end 
end 

return nRetInterval; 
end 

function sltDungeon:SpawnMonster(nInterval) 
WriteLog(format("[%s] in [%s] dungeon(%0.f) spwan monster timer. total count %d. finish count %d.", self.strOwner,"Thö luyÖn ®­êng ", self.nDungeonId, self.nSpawnCount, self.nFinishCount)); 

local nRetInterval = nInterval; 
	local nLevel = floor(self.nSpawnCount/10)+1;

-- script viet hoa By http://tranhba.com if (self.bPause == 1 and self.nMonsterOnStage == 0) then 
-- script viet hoa By http://tranhba.com  self.bPause = 0; 
-- script viet hoa By http://tranhba.com  nRetInterval = self.SPAWN_LEVEL_INTERVAL 
-- script viet hoa By http://tranhba.com  for i = 1, getn(self.tbMember) do 
-- script viet hoa By http://tranhba.com  if (self.tbMember[i].bInDungeon == 1) then 
-- script viet hoa By http://tranhba.com  doFunByPlayer(self.tbMember[i].nIndex, Msg2Player, format("H¹ mét nhãm thÝch kh¸ch ®em ë <color=green>%d<color> gi©y sau ®¸nh tíi ",nRetInterval/18)); 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  return nRetInterval; 
-- script viet hoa By http://tranhba.com end 

if(self.bPause == 1) then 
return nRetInterval; 
end 

if (self.nSpawnCount < self.MONSTER_LIMIT) then 
		-- script viet hoa By http://tranhba.com self.nMonsterOnStage = self.nMonsterOnStage + 1;
		self.nSpawnCount = self.nSpawnCount + 1;

local nNpcIdx = AddNpcEx(self.MONSTER_TEMPLETE[nLevel], 95, random(1,5), SubWorldID2Idx(self.nDungeonId),1651*32,3168*32, 1,"ThÝch kh¸ch ", 0) 

-- script viet hoa By http://tranhba.com  t¨ng thªm NPC thÊt b¹i lÇn n÷a t¨ng thªm 
if (nNpcIdx == nil or nNpcIdx <= 0) then 
self.nSpawnCount = self.nSpawnCount - 1; 
WriteLog(format("[%s] in [%s] dungeon(%0.f) spwan monster failed.", self.strOwner,"Thö luyÖn ®­êng ", self.nDungeonId)); 
return self.SPAWN_INTERVAL; 
end 

WriteLog(format("[%s] [%s] in [%s] dungeon(%0.f) spwan monster(No.%d) npcidx=%d", GetLocalDate("%Y-%m-%d %H:%M:%S"), self.strOwner,"Thö luyÖn ®­êng ", self.nDungeonId, self.nSpawnCount, nNpcIdx)); 

		SetNpcScript(nNpcIdx, "\\script\\missions\\dungeon\\dungeons\\shiliantang\\chuangtangzei.lua");
SetNpcActiveRegion(nNpcIdx, 1); 
SetNpcParam(nNpcIdx, 1, 2); 
SetNpcParam(nNpcIdx, 2, self.nDungeonId); 
SetNpcParam(nNpcIdx, 3, self.nSpawnCount); 
SetNpcTimer(nNpcIdx, self.CHECK_POS_INTERVAL) 
-- script viet hoa By http://tranhba.com local tbMonsterTimer = clone(tbTimerClass); 
-- script viet hoa By http://tranhba.com tbMonsterTimer.nDungeonId = self.nDungeonId; 
-- script viet hoa By http://tranhba.com tbMonsterTimer.nInterval = self.CHECK_POS_INTERVAL; -- script viet hoa By http://tranhba.com  tr¸nh 
-- script viet hoa By http://tranhba.com tbMonsterTimer.pFunction = self.OnMonsterTimer; 
-- script viet hoa By http://tranhba.com tbMonsterTimer.tbParam = {nNpcIdx} 
-- script viet hoa By http://tranhba.com tbMonsterTimer.nTimerId = tbTimerList:AddTimer(self.nDungeonId, tbMonsterTimer); 

-- script viet hoa By http://tranhba.com AddTimer(1 * 18, "OnMonsterTimer", nNpcIdx) 

NpcWalk(nNpcIdx, self.tbWayPoint[2][1], self.tbWayPoint[2][2]); 

if (nLevel ~= 10 and mod(self.nSpawnCount,10) == 0) then 
nRetInterval = self.SPAWN_LEVEL_INTERVAL; 
for i = 1, getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
doFunByPlayer(self.tbMember[i].nIndex, Msg2Player, format("H¹ ®æi phiªn thÝch kh¸ch ®em chê mét chót xuÊt hiÖn <color=green>%d<color> ",nRetInterval/18)); 
end 
end 
return nRetInterval; 
else 
if (mod(self.nSpawnCount,10) == 1) then 
for i = 1, getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
doFunByPlayer(self.tbMember[i].nIndex, Msg2Player, format("Thø tiÕn c«ng <color=green>%d<color>",nLevel)); 
end 
end 
end 
nRetInterval = self.SPAWN_INTERVAL; 
end 

return nRetInterval; 
end 

return 0; 
end 

-- script viet hoa By http://tranhba.com  theo nh­ cÇn nÆng t¸i 
function sltDungeon:OnEnterMap() 
local strName = GetName(); 

if (self.strOwner ~= strName) then 
Talk(1,"","Ng­êi kh«ng ph¶i lµ <color=red> thö luyÖn ®­êng <color> tõ c¸c h¹ më ra "); 
return 0; 
end 

for i = 1, getn(self.tbMember) do 
if (self.tbMember[i].strName == strName) then 
self.tbMember[i].nIndex = PlayerIndex; 

if (self.tbMember[i].nKillMonster == nil) then 
self.tbMember[i].nKillMonster = 0; 
end 

if (self.tbMember[i].nMedal == nil) then 
self.tbMember[i].nMedal = 0; 
end 

if (self.tbMember[i].nCallTower == nil) then 
self.tbMember[i].nCallTower = 1; 
doFunByPlayer(self.tbMember[i].nIndex, Msg2Player, format("§¹t ®­îc <color=green>%d<color> lÇn miÔn phÝ cho gäi cung tiÕn thñ ®Ých c¬ héi ", self.tbMember[i].nCallTower)); 
				RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "AddShooterCount",1});
end 

-- script viet hoa By http://tranhba.com  ghi chÐp vµo phã b¶n tr­íc ®Ých vÞ trÝ 
if (self.tbMember[i].tbLastPos == nil) then 
self.tbMember[i].tbLastPos = {}; 
end 

local nMapId,nPosX16,nPosY16 = GetWorldPos(); 
if (nMapId ~= self.nDungeonId) then 
self.tbMember[i].tbLastPos.nMapId = nMapId; 
self.tbMember[i].tbLastPos.nPosX16 = nPosX16; 
self.tbMember[i].tbLastPos.nPosY16 = nPosY16; 
end 

end 
end 

NewWorld(self.nMapId, 1608, 3219) 
SetFightState(0); 
SetTaskTemp(200, 1); -- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
ForbidChangePK(1); 
DisabledUseTownP(1); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
SetPKFlag(0); 
DisabledStall(1); -- script viet hoa By http://tranhba.com  cÊm chØ bµy s¹p 
ForbidEnmity(1); -- script viet hoa By http://tranhba.com  cÊm chØ thï giÕt 
SetCurCamp(3); 

return 1; 
end 

function sltDungeon:OnLeaveMap() 

self:OnLeaveSetState(); 

self:OnLeaveTrans(); 

-- script viet hoa By http://tranhba.com  dÉn hoµn phÇn th­ëng , tÊt c¶ mäi ng­êi ra khái phã b¶n , lµ lËp tøc t¾t phã b¶n 
if (self.bCanClose == 1) then 
local bAnyOneIn = 0; 
for i=1,getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
bAnyOneIn = 1; 
end 
end 

if (bAnyOneIn ~= 1) then 
tbDungeonManager:CloseDungeon(self.nDungeonId); 
end 
end 
return 1; 
end 

-- script viet hoa By http://tranhba.com  nhµ ch¬i lóc rêi ®i thiÕt trÝ nhµ ch¬i tr¹ng th¸i cam chÞu tham sæ 
function sltDungeon:OnLeaveSetState() 

SetFightState(0); 
SetTaskTemp(200, 0); -- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
ForbidChangePK(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  cÊm chØ sö dông håi tr×nh # 
SetPKFlag(0); 
SetCurCamp(GetCamp()); 
DisabledStall(0); 
ForbidEnmity(0); 
end 

-- script viet hoa By http://tranhba.com  nhµ ch¬i lóc rêi ®i thiÕt trÝ nhµ ch¬i tr¹ng th¸i cam chÞu truyÒn tèng 
function sltDungeon:OnLeaveTrans() 

-- script viet hoa By http://tranhba.com  cam chÞu ®em nhµ ch¬i truyÒn vÒ vµo phã b¶n tr­íc ®Ých vÞ trÝ 
local strName = GetName(); 
local nMapId , nPosX, nPosY = 0, 0, 0; 
if (self.tbMember ~= nil) then 
for i = 1, getn(self.tbMember) do 
if (self.tbMember[i].strName == strName) then 
if (self.tbMember[i].tbLastPos == nil or 
self.tbMember[i].tbLastPos.nMapId == nil or 
self.tbMember[i].tbLastPos.nPosX16 == nil or 
self.tbMember[i].tbLastPos.nPosY16 == nil) then 
nMapId = 0; 
nPosX = 0; 
nPosY = 0; 
else 
nMapId = self.tbMember[i].tbLastPos.nMapId; 
nPosX = self.tbMember[i].tbLastPos.nPosX16; 
nPosY = self.tbMember[i].tbLastPos.nPosY16; 
end 

break; 
end 
end 
end 

if nMapId == 0 or nPosX == 0 or nPosY == 0 then 
nMapId = 11; 
nPosX = 3143; 
nPosY = 5065; 
WriteLog(format("[%s] cant find last position when [%s] enter the [%s]'s [%s] dungeon(id:[%0.f]).Transport to (11,3143,5065)", 
GetLocalDate("%Y-%m-%d %H:%M:%S"), strName, self.strOwner or "", self.strDungeon or " thö luyÖn ®­êng ", self.nDungeonId or 0)); 
end 

NewWorld(nMapId, nPosX, nPosY); 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra phôc vô khÝ cã hay kh«ng cã thÓ l¸i ®­îc mét míi phã b¶n , nh­ng nÆng t¸i 
function sltDungeon:CheckOpenDungeonServerLimit() 
local nFree = GetNpcFreeCount(); 
if (nFree < self.SERVER_FREE_NPC_LIMIT) then 
return 0; 
end 

local bFreeMap = IsGSHaveFreeMap() 

if (bFreeMap ~= 1) then 
WriteLog(format("create [%s] dungeon failed because Game Server have no free map.current %s dungeon count is %d", self.strDungeon, self.strDungeon, getn(tbDungeonInfo:GetDungeonList(self.strDungeon)))); 
return 0; 
end 

return 1; 
end 

function sltDungeon:OnDungeonOpen(tbDungeonData) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ cßn thõa l¹i thêi gian 
self.nOpenMapId = SubWorldIdx2ID(SubWorld); 
self.nLifeTime = 5 * 60; -- script viet hoa By http://tranhba.com 5 phót 
self.nIdelTime = 0; -- script viet hoa By http://tranhba.com  b¶n ®å ë kh«ng thêi gian 
self.bPrepareTime = 1; 
self.nSpawnCount = 0; 
self.nFinishCount = 0; 
self.bPause = 0; 
self.bStartLevel = 0; 
self.bBattleOver = 0; 
-- script viet hoa By http://tranhba.com self.nMonsterOnStage = 0; 

-- script viet hoa By http://tranhba.com  t¨ng thªm truyÒn tèng bia ®¸ 
local nnpcidx = AddNpc(309, 1, SubWorldID2Idx(self.nDungeonId), self.tbTrapPos[1], self.tbTrapPos[2],1,"Thö luyÖn ®­êng tr­ëng l·o "); 
		SetNpcScript(nnpcidx, "\\script\\missions\\dungeon\\dungeons\\shiliantang\\zhanglao.lua");

self.tbTimer = clone(tbTimerClass); 
self.tbTimer.nDungeonId = self.nDungeonId; 
self.tbTimer.nInterval = self.nTimerInterval*18; -- script viet hoa By http://tranhba.com  tr¸nh 
self.tbTimer.pFunction = self.OnTimer; 
self.tbTimer.nTimerId = tbTimerList:AddTimer(self.nDungeonId, self.tbTimer); 

if (self.tbTimer.nTimerId == nil or self.tbTimer.nTimerId <= 0) then 
WriteLog(format("[%s]\trole:%s\taccount:%s\tCant Add dungeon timer, open dungeon failed.",self.strDungeon, GetName(), GetAccount())); 
return 0; 
end 

if (tbDungeonData ~= nil) then 
if (type(tbDungeonData.nMonsterCount) == "number") then 
self.nSpawnCount = tbDungeonData.nMonsterCount; 
self.nFinishCount = tbDungeonData.nMonsterCount; 
if (self.nFinishCount >= self.MONSTER_LIMIT) then 
self.bPrepareClose = 1; 
self.bBattleOver = 1; 
self.bPrepareTime = 0; 
end 
end 
local tbMember = tbDungeonManager:GetMember(self.nDungeonId, self.strOwner); 
if (tbMember ~= nil) then 
if (type(tbDungeonData.nShooterCount) == "number") then 
tbMember.nCallTower = tbDungeonData.nShooterCount; 
end 
if (type(tbDungeonData.nMedalCount) == "number") then 
tbMember.nMedal = tbDungeonData.nMedalCount; 
end 
if (type(tbDungeonData.nKillCount) == "number") then 
tbMember.nKillMonster = tbDungeonData.nKillCount; 
end 
if (type(tbDungeonData.tbAwardMark) == "table" and tbDungeonData.tbAwardMark[self.strOwner] ~= nil) then 
tbMember.bAward = tbDungeonData.tbAwardMark[self.strOwner]; 
if (tbMember.bAward) then 
self.bCanClose = 1; 
end 
end 
end 
Talk(1,"",format(" lÇn tr­íc ng­¬i t¾t phã b¶n kh«ng b×nh th­êng , b©y giê ng­¬i tiÕp tôc më ra .")); 
else 
if ConsumeEquiproomItem(1, 6, 1, 2317, -1) ~= 1 then 
Talk(1,""," lÇn nµy lùa chän cùc kú träng yÕu , xin lÊy ra thö luyÖn t¹p míi cã thÓ tham gia "); 
return 0; 
end 
AddStatData("shiliantiexiaohao_kaiqishiliantang", 1) -- script viet hoa By http://tranhba.com  sè liÖu ch«n ®iÓm thø nhÊt kú 
end 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh­ cÇn nÆng t¸i 
function sltDungeon:OnTimer(nInterval) 
	RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:DungeonBreath", {self.nMapTemplet, self.nDungeonId, self.strOwner});

	self.nTimerCount = self.nTimerCount + nInterval/18;

for i = 1, getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
			self.tbMember[i].nTime = self.tbMember[i].nTime + nInterval/18;
end 
end 

if (self.bPrepareTime == 1 and (self.nTimerCount >= self.PREPARE_TIME or self.bSkipPrepare == 1)) then -- script viet hoa By http://tranhba.com  gi©y lµm ®¬n vÞ 
for i=1,getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
doFunByPlayer(self.tbMember[i].nIndex, Msg2Player,"Thö luyÖn b¾t ®Çu ."); 
end 
end 
self.bPrepareTime = 0; 

-- script viet hoa By http://tranhba.com  cµ tr¸ch tÝnh giê khÝ 
self.tbMonsterTimer = clone(tbTimerClass); 
self.tbMonsterTimer.nDungeonId = self.nDungeonId; 
self.tbMonsterTimer.nInterval = self.SPAWN_INTERVAL; -- script viet hoa By http://tranhba.com  tr¸nh 
self.tbMonsterTimer.pFunction = self.SpawnMonster; 
self.tbMonsterTimer.nTimerId = tbTimerList:AddTimer(self.nDungeonId, self.tbMonsterTimer); 
end 

if (self.bPrepareTime == 1) then 
for i=1,getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
doFunByPlayer(self.tbMember[i].nIndex, Msg2Player, format("Thö luyÖn ®em ë %0.f gi©y sau b¾t ®Çu ", self.PREPARE_TIME - self.nTimerCount)); 
end 
end 
else 
if (self.bPrepareClose == 1) then 
self.nLifeTime = self.nLifeTime - nInterval/18; 

for i=1,getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
if (self.nLifeTime < 300 and self.nLifeTime > 0) then -- script viet hoa By http://tranhba.com  s¾p t¾t th«ng b¸o 
doFunByPlayer(self.tbMember[i].nIndex, Msg2Player, format("B¶n ®å ®em ë %0.f gi©y sau t¾t .", self.nLifeTime)); 
end 
end 
end 
end 

end 

local bAnyOneIn = 0; 
for i=1,getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
bAnyOneIn = 1; 
end 
end 

if (bAnyOneIn ~= 1) then 
		self.nIdelTime = self.nIdelTime + self.nTimerInterval;
if (self.nIdelTime > 900) then -- script viet hoa By http://tranhba.com  ë kh«ng 15 phót tù ®éng ®ãng l¹i 
-- script viet hoa By http://tranhba.com tbDungeonManager:CloseDungeon(self.nDungeonId); 
end 
else 
self.nIdelTime = 0; 
end 

if (self.nLifeTime <= 0) then 
-- script viet hoa By http://tranhba.com  ®· ®Õn giê t¾t phã b¶n 
self.bCanClose = 0; 
tbDungeonManager:CloseDungeon(self.nDungeonId); 
end 
return nInterval; 
end 

function sltDungeon:OnDungeonClose() 
if (self.tbTimer ~= nil and self.tbTimer.nTimerId ~= nil) then 
tbTimerList:DelTimer(self.tbTimer.nTimerId); 
end 

if (self.tbMonsterTimer ~= nil and self.tbMonsterTimer.nTimerId ~= nil) then 
tbTimerList:DelTimer(self.tbMonsterTimer.nTimerId); 
end 
end 

function sltDungeon:CheckOwnerInDungeon() 
local tbDungeon = tbDungeonManager:GetMineDungeon(self.strDungeon, 1); 
local nMapId = SubWorldIdx2ID(SubWorld); 
if (tbDungeon == nil) then 
Talk(1,"","C¸c h¹ cßn ch­a më ra <color=red> thö luyÖn ®­êng <color>!"); 
return nil; 
end 
if (nMapId ~= tbDungeon.nDungeonId) then 
Talk(1,"","C¸c h¹ kh«ng cã ë ®©y <color=red> thö luyÖn ®­êng <color>, hoÆc lµ më ra color=red> thö luyÖn ®­êng <color> ng­êi cña kh«ng ph¶i lµ c¸c h¹ , kh«ng thÓ sö dông nªn thao t¸c !"); 
return nil; 
end 
return 1; 
end 

function sltDungeon:MonsterDead(nNpcIndex) 
for i=1,getn(self.tbMember) do 
		self.tbMember[i].nKillMonster = self.tbMember[i].nKillMonster + 1;
		self.tbMember[i].nMedal = self.tbMember[i].nMedal + 1;
if (self.tbMember[i].bInDungeon == 1) then 
doFunByPlayer(self.tbMember[i].nIndex, Msg2Player, format("§¸nh lui <color=green>%d<color> thÝch kh¸ch .", self.tbMember[i].nKillMonster)); 
end 
		RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "AddkillCount",1});
		RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "AddMedalCount",1});
		RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "AddMonsterCount",1});
end 

	self.nFinishCount = self.nFinishCount + 1;
-- script viet hoa By http://tranhba.com  self.nMonsterOnStage = self.nMonsterOnStage - 1; 

-- script viet hoa By http://tranhba.com  ng­êi cuèi cïng qu¸i vËt 
if (self.nFinishCount >= self.MONSTER_LIMIT) then 
self.bPrepareClose = 1; 
self.bBattleOver = 1; 
for i=1,getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
doFunByPlayer(self.tbMember[i].nIndex, Msg2Player,"Vèn ®æi phiªn thÝch kh¸ch bÞ ®¹i hiÖp gi¶i quyÕt , b©y giê cã thÓ ®Õn tr­ëng l·o chç dÉn t­ëng ."); 
end 
end 
end 
end 

function sltDungeon:CallTower() 
if (self:CheckOwnerInDungeon() == 1) then 
local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(SubWorldIdx2ID(SubWorld), strName); 
local tbDungeon = tbDungeonManager:GetMineDungeon(self.strDungeon, 1); 
local mapId, x, y = GetWorldPos(); 
local bFound = 0; 
local nNpcIdx = 0; 
local nTowerIdx = 0; 

for i=1,getn(tbDungeon.tbTower) do 
local nDistance = self.getDistance({x, y}, {tbDungeon.tbTower[i].tbPos[1], tbDungeon.tbTower[i].tbPos[2]}); 
if (nDistance <= self.TOWER_CALL_DISTANCE_LIMIT) then 
nTowerIdx = i; 
bFound = 1; 
nNpcIdx = tbDungeon.tbTower[i].nNpcIdx; 
break; 
end 
end 

if (bFound == 0) then 
Talk(1,"","N¬i nµy kh«ng thÓ t×m vÒ cung tiÕn thñ "); 
return 
end 

if (nNpcIdx ~= 0) then 
Talk(1,"","N¬i nµy ®· cã mét cung tiÕn thñ liÔu !"); 
return 
end 

if (tbMember == nil or tbMember.nCallTower <= 0) then 
Talk(1,"","C¸c h¹ ®· sö dông xong cho gäi cung tiÕn thñ ®Ých c¬ héi "); 
return 
end 

nNpcIdx = AddNpcEx(sltDungeon.SHOOTER_TEMPLETE, 95, random(1,5), SubWorldID2Idx(mapId),tbDungeon.tbTower[nTowerIdx].tbPos[1]*32,tbDungeon.tbTower[nTowerIdx].tbPos[2]*32, 1,"Cung tiÕn thñ ", 0); 
if(nNpcIdx == nil or nNpcIdx <= 0) then 
Talk(1,"","Cho gäi thÊt b¹i , xin/mêi thö l¹i !"); 
return 
end 
tbMember.nCallTower = tbMember.nCallTower - 1; 
doFunByPlayer(tbMember.nIndex, Msg2Player, format("Tr­íc m¾t c¸c h¹ cã <color=green>%d<color> c¬ héi cho gäi cung tiÕn thñ ", tbMember.nCallTower)); 
tbDungeon.tbTower[nTowerIdx].nNpcIdx = nNpcIdx; 
WriteLog(format("[%s] [%s] in [%s] dungeon(%0.f) call tower. Left call chance %d", GetLocalDate("%Y-%m-%d %H:%M:%S"), strName,"Thö luyÖn ®­êng ", tbDungeon.nDungeonId, tbMember.nCallTower)); 
SetNpcActiveRegion(nNpcIdx, 1); 
end 
end 

function sltDungeon:CallBackTower() 
if (self:CheckOwnerInDungeon() == 1) then 
local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(SubWorldIdx2ID(SubWorld), strName); 
local tbDungeon = tbDungeonManager:GetMineDungeon(self.strDungeon, 1); 
local mapId, x, y = GetWorldPos(); 
local bFound = 0; 
local nNpcIdx = 0; 
local nTowerIdx = 0; 

for i=1,getn(tbDungeon.tbTower) do 
local nDistance = self.getDistance({x, y}, {tbDungeon.tbTower[i].tbPos[1], tbDungeon.tbTower[i].tbPos[2]}); 
if (nDistance <= self.TOWER_CALL_DISTANCE_LIMIT) then 
nTowerIdx = i; 
bFound = 1; 
nNpcIdx = tbDungeon.tbTower[i].nNpcIdx; 
break; 
end 
end 

if (bFound == 0 or nNpcIdx == 0) then 
Talk(1,"","GÇn nhÊt kh«ng cã cung tiÕn thñ cã thÓ cho gäi !"); 
return 
end 

if (tbMember == nil) then 
Talk(1,"","Ng­¬i kh«ng thÓ cho gäi cung tiÕn thñ "); 
return 
end 

if (tbMember.nMedal < 2) then 
Talk(1,"","Tr­íc m¾t c¸c h¹ ch­a ®ñ 2 c¸ thö luyÖn huy ch­¬ng !"); 
return 
end 

tbMember.nMedal = tbMember.nMedal - 2; 
		tbMember.nCallTower = tbMember.nCallTower + 1;
doFunByPlayer(tbMember.nIndex, Msg2Player, format("Tr­íc m¾t c¸c h¹ cã <color=green>%d<color> thö luyÖn ®­êng huy ch­¬ng .", tbMember.nMedal)); 
doFunByPlayer(tbMember.nIndex, Msg2Player, format("Tr­íc m¾t c¸c h¹ cã <color=green>%d<color> c¬ héi cho gäi cung tiÕn thñ ", tbMember.nCallTower)); 

tbDungeon.tbTower[nTowerIdx].nNpcIdx = 0; 
DelNpc(nNpcIdx); 
WriteLog(format("[%s] [%s] in [%s] dungeon(%0.f) call back tower. Left call chance %d", GetLocalDate("%Y-%m-%d %H:%M:%S"), strName,"Thö luyÖn ®­êng ", tbDungeon.nDungeonId, tbMember.nCallTower)); 
end 
end 

function sltDungeon:AddCallTowerChance(nCount) 
if (self:CheckOwnerInDungeon() == 1) then 
local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(SubWorldIdx2ID(SubWorld), strName); 
if (tbMember ~= nil) then 
			tbMember.nCallTower = tbMember.nCallTower + nCount;
doFunByPlayer(tbMember.nIndex, Msg2Player, format("Tr­íc m¾t c¸c h¹ cã <color=green>%d<color> c¬ héi cho gäi cung tiÕn thñ ", tbMember.nCallTower)); 
			RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "AddShooterCount",nCount});
end 
end 
end 

function sltDungeon:GetMedal() 
local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(self.nDungeonId, strName); 
if (tbMember ~= nil) then 
return tbMember.nMedal; 
end 

return 0; 
end 

function sltDungeon:GetKillCount() 
local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(self.nDungeonId, strName); 
if (tbMember ~= nil) then 
return tbMember.nKillMonster; 
end 

return 0; 
end 

function sltDungeon:AddMedal(nCount) 
if (self:CheckOwnerInDungeon() == 1) then 
local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(SubWorldIdx2ID(SubWorld), strName); 
if (tbMember ~= nil) then 
			tbMember.nMedal = tbMember.nMedal + nCount;
doFunByPlayer(tbMember.nIndex, Msg2Player, format("Tr­íc m¾t c¸c h¹ cã <color=green>%d<color> thö luyÖn ®­êng huy ch­¬ng .", tbMember.nMedal)); 
			RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "AddMedalCount",nCount});
end 
end 
end 

function sltDungeon:AddKill(nCount) 
if (self:CheckOwnerInDungeon() == 1) then 
local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(SubWorldIdx2ID(SubWorld), strName); 
if (tbMember ~= nil) then 
			tbMember.nKillMonster = tbMember.nKillMonster + nCount;
doFunByPlayer(tbMember.nIndex, Msg2Player, format("§¸nh lïi <color=green>%d<color> thÝch kh¸ch .", tbMember.nKillMonster)); 
			RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "AddkillCount",nCount});
end 
end 
end 

function sltDungeon:SetKill(nCount) 
if (self:CheckOwnerInDungeon() == 1) then 
local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(SubWorldIdx2ID(SubWorld), strName); 
if (tbMember ~= nil) then 
tbMember.nKillMonster = nCount; 
doFunByPlayer(tbMember.nIndex, Msg2Player, format("§¸nh lïi <color=green>%d<color> thÝch kh¸ch .", tbMember.nKillMonster)); 
			RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "SetkillCount",nCount});
end 
end 
end 

function sltDungeon:SetAward(bAward) 
if (self:CheckOwnerInDungeon() == 1) then 
local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(SubWorldIdx2ID(SubWorld), strName); 
if (tbMember ~= nil) then 
tbMember.bAward = bAward; 
			RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, SubWorldIdx2ID(SubWorld), strName, "SetAwardMark",{strName,1}});
end 
end 
end 

function sltDungeon:BuyChance() 
local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(self.nDungeonId, strName); 

if (tbMember ~= nil) then 
if (tbMember.nMedal < 5) then 
Talk(1,"","Tr­íc m¾t c¸c h¹ ch­a ®ñ 5 c¸ thö luyÖn huy ch­¬ng !"); 
return 0; 
end 

local nEnergy = GetEnergy(); 

if nEnergy == nil or nEnergy < 100 then 
Talk(1,"",format("# tinh luyÖn th¹ch trÞ gi¸ ch­a ®ñ # %d!",100)); 
return 0; 
end 

if (ReduceEnergy(100) ~= 1) then 
Talk(1,"",format("# tinh luyÖn th¹ch trÞ gi¸ ch­a ®ñ # %d!",100)); 
return 0; 
end 

WriteLog(format("[%s] [%s] in [%s] dungeon Consume %d Energy buy 1 shooter.", GetLocalDate("%Y-%m-%d %H:%M:%S"), strName,"Thö luyÖn ®­êng ", 100)); 

tbMember.nMedal = tbMember.nMedal - 5; 
		tbMember.nCallTower = tbMember.nCallTower + 1;
doFunByPlayer(tbMember.nIndex, Msg2Player, format("Tr­íc m¾t c¸c h¹ cã <color=green>%d<color> thö luyÖn ®­êng huy ch­¬ng .", tbMember.nMedal)); 
doFunByPlayer(tbMember.nIndex, Msg2Player, format("Tr­íc m¾t c¸c h¹ cã <color=green>%d<color> c¬ héi cho gäi cung tiÕn thñ ", tbMember.nCallTower)); 
		RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "AddShooterCount",1});
		RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "AddMedalCount",-5});
return 1; 
end 

return 0; 
end 

function sltDungeon:IsBattleOver() 
if (self.bBattleOver == 1) then 
return 1; 
end 
return 0; 
end 

function sltDungeon:SetBattleOver(bOver) 
if (self:CheckOwnerInDungeon() == 1) then 
local tbDungeon = tbDungeonManager:GetMineDungeon(self.strDungeon, 1); 
if (tbDungeon ~= nil) then 
tbDungeon.bBattleOver = bOver; 
end 
end 
end 

function sltDungeon:IsPrepareTime() 
if (self.bPrepareTime == 1) then 
return 1; 
end 
return 0; 
end 

function sltDungeon:GetAward() 
if (self:IsBattleOver() ~= 1) then 
Talk(1,"","C¸c ®æi phiªn tiÕn c«ng cßn ch­a kÕt thóc , tr­íc m¾t kh«ng thÓ dÉn t­ëng !"); 
return 0; 
end 

local strName = GetName(); 
local tbMember = tbDungeonManager:GetMember(self.nDungeonId, strName); 
local tbDungeon = tbDungeonManager:GetMineDungeon(self.strDungeon, 1); 

if (tbMember ~= nil) then 
if (tbMember.bAward == 1) then 
Talk(1,"","Ng­¬i ®· dÉn t­ëng liÔu a "); 
return 0; 
end 

local nCallChance = 0; 

for i=1,getn(tbDungeon.tbTower) do 
if (tbDungeon.tbTower[i].nNpcIdx ~= 0) then 
				nCallChance = nCallChance + 1;
end 
end 

if (PlayerFunLib:CheckFreeBagCell(1, "default") == 1) then 
for i=1,getn(self.tbAwardList) do 
if (tbMember.nKillMonster >= self.tbAwardList[i].nMin) then 
tbAwardTemplet:GiveAwardByList(self.tbAwardList[i].tbAward,"Thö luyÖn ®­êng "); 
tbMember.bAward = 1; 
tbDungeon.bCanClose = 1; 
					nCallChance = nCallChance + tbMember.nCallTower;
WriteLog(format("[%s] [%s] in [%s] dungeon get award. call shooter chance %d, kill monster %d", GetLocalDate("%Y-%m-%d %H:%M:%S"), strName,"Thö luyÖn ®­êng ", nCallChance, tbMember.nKillMonster)); 
					RemoteExc("\\script\\mission\\dungeon\\datamanager.lua", "tbDDManager:CallFun", {self.nMapTemplet, self.nDungeonId, self.strOwner, "SetAwardMark",{strName,1}});
return 1; 
end 
end 
end 
end 

return 0; 
end 

function sltDungeon:SkipPrepare() 
if (self:CheckOwnerInDungeon() == 1) then 
local tbDungeon = tbDungeonManager:GetMineDungeon(self.strDungeon, 1); 
if (tbDungeon.bPrepareTime == 1) then 
self.bSkipPrepare = 1; 
self:OnTimer(0); 
end 
end 
end 

function sltDungeon:Pause(bPause) 
if (self:CheckOwnerInDungeon() == 1) then 
local tbDungeon = tbDungeonManager:GetMineDungeon(self.strDungeon, 1); 
self.bPause = bPause; 
end 
end 

function sltDungeon:CloseSlt() 
if (self:CheckOwnerInDungeon() == 1) then 
local tbDungeon = tbDungeonManager:GetMineDungeon(self.strDungeon, 1); 
tbDungeonManager:CloseDungeon(tbDungeon.nDungeonId); 
end 
end 

function sltDungeon:GetSltId() 
if (self:CheckOwnerInDungeon() == 1) then 
local tbDungeon = tbDungeonManager:GetMineDungeon(self.strDungeon, 1); 
return tbDungeon.nDungeonId; 
end 
end 
-- script viet hoa By http://tranhba.com  chó s¸ch phã b¶n m« b¶n 
tbDungeonManager:RegDungeon(sltDungeon); 
