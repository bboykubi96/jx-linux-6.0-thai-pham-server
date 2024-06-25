Include("\\script\\missions\\dungeon\\dungeoninfo.lua")
Include("\\script\\lib\\baseclass.lua")
Include("\\script\\global\\offlinelive.lua")
Include("\\script\\missions\\basemission\\lib.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\lib\\baseclass.lua")

if not tbDungeonClass then 
tbDungeonClass = tbBaseClass:new() 
end 

function tbDungeonClass:_init(tbDungeonData) 
if not tbDungeonData then 
return 
end 
for i,j in tbDungeonData do 
self[i] = j 
end 
end 

-- script viet hoa By http://tranhba.com  phã b¶n dÞch biÕn sè theo , mçi phã b¶n ®Òu kh«ng mét d¹ng 
tbDungeonClass.tbData = {}; 

if not tbTimerList then 
tbTimerList = {}; 
end 

if not tbTimerClass then 
tbTimerClass = {}; 
tbTimerClass.nDungeonId = 0; 
tbTimerClass.nInterval = 0; -- script viet hoa By http://tranhba.com  tr¸nh 
tbTimerClass.nTimerId = 0; 
tbTimerClass.pFunction = nil; 
tbTimerClass.tbParam = {} 
end 

function OnDungeonTimer(nTimerId) 
local timer = tbTimerList[nTimerId]; 
local nRetInterval = 0; 
if (timer ~= nil and timer.nDungeonId ~= nil and 
timer.pFunction ~= nil and type(timer.pFunction) == "function" and 
timer.nInterval ~= nil and timer.nInterval >= 1) then 

local tbD = tbDungeonInfo:GetDungeon(timer.nDungeonId); 
if (tbD ~= nil) then 
local tbParam = {tbD, timer.nInterval} 
if (timer.tbParam ~= nil and type(timer.tbParam) == "table") then 
for varKey, varValue in timer.tbParam do 
tinsert(tbParam, varValue); 
end 
end 
nRetInterval = call(timer.pFunction, tbParam); 
timer.nInterval = nRetInterval; 
-- script viet hoa By http://tranhba.com nRetInterval = timer.pFunction(tbD, timer.nInterval); 
end 
end 

if (nRetInterval == nil or nRetInterval < 1) then 
tbTimerList[nTimerId] = nil; 
nRetInterval = 0; 
end 
return nRetInterval, timer.nTimerId; 
end 

function tbTimerList:AddTimer(nDungeonId, tbTimer) 
if (tbTimer ~= nil and tbTimer.nInterval ~= nil and tbTimer.nInterval >= 1) then 
		tbTimer.nTimerId = getn(tbTimerList) + 1;
tbTimerList[tbTimer.nTimerId] = clone(tbTimer); 
AddTimer(tbTimer.nInterval, "OnDungeonTimer", tbTimer.nTimerId); 
return tbTimer.nTimerId; 
end 
return 0; 
end 

function tbTimerList:DelTimer(nTimerId) 
local timer = tbTimerList[nTimerId]; 
if (timer ~= nil) then 
timer.nInterval = 0; 
end 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra phôc vô khÝ cã hay kh«ng cã thÓ l¸i ®­îc mét míi phã b¶n , nh­ng nÆng t¸i 
function tbDungeonClass:CheckOpenDungeonServerLimit() 
return 1; 
end 

function tbDungeonClass:OpenDungeon(tbDungeonData) 
-- script viet hoa By http://tranhba.com self:StartGame(); 

-- script viet hoa By http://tranhba.com  thanh trõ npc cïng ®¹o cô 
ClearMapObj(self.nDungeonId); 
ClearMapNpc(self.nDungeonId); 

if (self.OnDungeonOpen) then 
return self:OnDungeonOpen(tbDungeonData); 
end 
return 1; 
end 

-- script viet hoa By http://tranhba.com  muèn ®em tÊt c¶ nhµ ch¬i truyÒn ra phã b¶n 
function tbDungeonClass:CloseDungeon() 
for i = 1, getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
doFunByPlayer(self.tbMember[i].nIndex, self.OnLeaveMap, self) 
end 
end 

if (self.OnDungeonClose) then 
self:OnDungeonClose(); 
end 

-- script viet hoa By http://tranhba.com  thanh trõ npc cïng ®¹o cô 
ClearMapObj(self.nDungeonId); 
ClearMapNpc(self.nDungeonId); 

-- script viet hoa By http://tranhba.com self:CloseGame(); 
return 1; 
end 

-- script viet hoa By http://tranhba.com function tbDungeonClass:Timer() 
-- script viet hoa By http://tranhba.com 	self.nTimerCount = self.nTimerCount + self.nTimerInterval;

-- script viet hoa By http://tranhba.com  for i = 1, getn(self.tbMember) do 
-- script viet hoa By http://tranhba.com  if (self.tbMember[i].bInDungeon == 1) then 
-- script viet hoa By http://tranhba.com 			self.tbMember[i].nTime = self.tbMember[i].nTime + self.nTimerInterval;
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  if (self.OnTimer) then 
-- script viet hoa By http://tranhba.com  self:OnTimer(); 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  return 1; 
-- script viet hoa By http://tranhba.com end 

-- script viet hoa By http://tranhba.com  theo nh­ cÇn nÆng t¸i 
function tbDungeonClass:OnDungeonOpen() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh­ cÇn nÆng t¸i 
function tbDungeonClass:OnDungeonClose() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh­ cÇn nÆng t¸i 
function tbDungeonClass:OnTimer() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh­ cÇn nÆng t¸i 
function tbDungeonClass:OnAddMember(strMemberName) 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh­ cÇn nÆng t¸i 
function tbDungeonClass:OnApplyJoin() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh­ cÇn nÆng t¸i 
function tbDungeonClass:OnDelMember() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh­ cÇn nÆng t¸i 
function tbDungeonClass:OnEnterMap() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh­ cÇn nÆng t¸i 
function tbDungeonClass:OnLeaveMap() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  phã b¶n m« b¶n tin tøc 
tbDungeonClass.strDungeon = "BaseDungeon" 
tbDungeonClass.nTimerInterval = 1 
tbDungeonClass.nTimerCount = 0 
tbDungeonClass.bHiden = 0 -- script viet hoa By http://tranhba.com  ng­êi kh¸c cã hay kh«ng cã thÓ thÊy ®­îc 

-- script viet hoa By http://tranhba.com  c¨n cø bÊt ®ång Mission tiÕn hµnh nÆng t¸i , nhÊt ®Þnh ph¶i thiÕt trÝ Mission_state ®Ých trÞ gi¸ 
function tbDungeonClass:OnInit() 
-- script viet hoa By http://tranhba.com SetMissionV(self.tbMissionV.MISSION_STATE, 1); 
end 

function tbDungeonClass:OnClose() 
return self:OnDungeonClose(); 
end 

function tbDungeonClass:CheckPlayerCanJoin() 
local strName = GetName(); 
if (self.tbMember ~= nil) then 
for i = 1, getn(self.tbMember) do 
if (self.tbMember[i].strName == strName) then 
return 1; 
end 
end 
end 
return 0; 
end 

-- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp mission lóc cÇn lµm xö lý , c¨n cø cÇn nÆng t¸i 
function tbDungeonClass:OnPlayerJoin() 
local strName = GetName(); 

if (self.tbMember ~= nil) then 
for i = 1, getn(self.tbMember) do 
if (self.tbMember[i].strName == strName) then 
if (self.tbMember[i].bInDungeon == 1) then 
return 1; 
end 

self.tbMember[i].bInDungeon = 1; 
if (self:OnEnterMap() == 1) then 
self.tbMember[i].bInDungeon = 1; 
return 1; 
else 
self.tbMember[i].bInDungeon = 0; 
end 
end 
end 
end 
WriteLog(format("[%s] [%s] enter [%s]'s %s dungeon(id:%0.f) failed.", GetLocalDate("%Y-%m-%d %H:%M:%S"), strName, 
self.strOwner, self.strDungeon, self.nDungeonId)); 
return 0; 
end 

-- script viet hoa By http://tranhba.com  nhµ ch¬i lóc rêi ®i thiÕt trÝ nhµ ch¬i tr¹ng th¸i cam chÞu tham sæ 
function tbDungeonClass:OnLeaveSetState() 

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
function tbDungeonClass:OnLeaveTrans() 

NewWorld(11, 3143, 5065); 
end 

-- script viet hoa By http://tranhba.com  nhµ ch¬i rêi ®i Mission ®Ých xö lý , c¨n cø cÇn nÆng t¸i 
function tbDungeonClass:OnLeave() 
local strName = GetName(); 

if (self.tbMember ~= nil) then 
for i = 1, getn(self.tbMember) do 
if (self.tbMember[i].strName == strName) then 
self.tbMember[i].bInDungeon = 0; 
if (self:OnLeaveMap() == 1) then 
self.tbMember[i].bInDungeon = 0; 
return 1; 
else 
self.tbMember[i].bInDungeon = 1; 
WriteLog(format("[%s] [%s] leave [%s]'s %s dungeon(id:%0.f) failed", GetLocalDate("%Y-%m-%d %H:%M:%S"), strName, 
self.strOwner, self.strDungeon, self.nDungeonId)); 
return 0; 
end 
end 

end 
end 

WriteLog(format("[%s] [%s] stuck in dungeon", GetLocalDate("%Y-%m-%d %H:%M:%S"), strName)); 

self:OnLeaveSetState(); 
self:OnLeaveTrans(); 

-- script viet hoa By http://tranhba.com WriteLog(format("[%s] [%s] leave %s dungeon failed", GetLocalDate("%Y-%m-%d %H:%M:%S"), strName, self.strDungeon)); 
return 0; 
end
