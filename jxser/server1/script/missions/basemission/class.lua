Include("\\script\\lib\\baseclass.lua")
Include("\\script\\missions\\basemission\\lib.lua")
IncludeLib("SETTING") 
if not tbBaseMission then 
tbBaseMission = tbBaseClass:new() 
end 


-- script viet hoa By http://tranhba.com  lo¹i míi b¾t ®Çu hãa , c¨n cø tbMissionData dÆm key cïng value , thiÕt trÝ t­¬ng øng key cïng value 
function tbBaseMission:_init(tbMissionData) 
if not tbMissionData then 
return 
end 
for i,j in tbMissionData do 
self[i] = j 
end 

self.TSK_MAP_ID = 2323 
self.TSK_MAP_X = 2324 
self.TSK_MAP_Y = 2325 
end 




-- script viet hoa By http://tranhba.com Mission ®Ých míi b¾t ®Çu hãa , chØ cã thÓ còng chØ ë InitMission trung sö dông 
function tbBaseMission:Init() 
if GetMissionV(self.tbMissionV.MISSION_STATE) ~= 0 then 
self:Close() 
end 

for i = 1, getn(self.tbTimer) do 
StartMissionTimer(self.nMissionId, self.tbTimer[i][1], self.tbTimer[i][2]); -- script viet hoa By http://tranhba.com  
end 

if self.OnInit then 
self:OnInit() 
end 
end 

-- script viet hoa By http://tranhba.com  c¨n cø bÊt ®ång Mission tiÕn hµnh nÆng t¸i , nhÊt ®Þnh ph¶i thiÕt trÝ Mission_state ®Ých trÞ gi¸ 
function tbBaseMission:OnInit() 
SetMissionV(self.tbMissionV.MISSION_STATE, 1) 
end 

-- script viet hoa By http://tranhba.com Mission ®Ých thi hµnh , tõ tr×nh tù th«ng qua RunMission ®iÒu dông , ch©n vèn kh«ng ®iÒu dông 
function tbBaseMission:Run() 

-- script viet hoa By http://tranhba.com  local nMapIndex = SubWorldID2Idx(self.nMapId) 
-- script viet hoa By http://tranhba.com  ®æi thµnh lÊy tr­íc mÆt subworld tíi thi hµnh 
if SubWorld >= 0 then 
doFunInWorld(SubWorld, self.OnRun, self) 
end 
end 

-- script viet hoa By http://tranhba.com  rêi ®i trß ch¬i , tõ tr×nh tù th«ng qua Mission trung ®Ých OnLeave ®iÒu dông , 
function tbBaseMission:LeaveGame() 

-- script viet hoa By http://tranhba.com  local nMapIndex = SubWorldID2Idx(self.nMapId) 
-- script viet hoa By http://tranhba.com  ®æi thµnh lÊy tr­íc mÆt subworld tíi thi hµnh 
if SubWorld >= 0 then 
return doFunInWorld(SubWorld, self.OnLeave, self) 
end 
return -1 
end 

-- script viet hoa By http://tranhba.com Mission t¾t lóc ®Ých xö lý , c¨n cø cÇn nÆng t¸i 
function tbBaseMission:OnClose() 
print("tbBaseMission:OnClose()") 
end 

-- script viet hoa By http://tranhba.com  kh«ng cÇn nÆng t¸i 
function tbBaseMission:Close() 
if self.OnClose then 
self:OnClose() 
end 

for _, nMissionVId in self.tbMissionV do 
SetMissionV(nMissionVId, 0); 
end 

for _, nMissionSId in self.tbMissionS do 
SetMissionS(nMissionSId, "") 
end 

for i = 1, getn(self.tbTimer) do 
StopMissionTimer(self.nMissionId, self.tbTimer[i][1], self.tbTimer[i][2]); -- script viet hoa By http://tranhba.com  
end 
end 

-- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp 
function tbBaseMission:PlayerJoin(nPlayerIndex, nGroupId) 
if doFunByPlayer(nPlayerIndex, self.OnPlayerJoin, self ) == 1 then 
doFunByPlayer(nPlayerIndex, AddMSPlayer, self.nMissionId, nGroupId) 
return 1; 
end 
return 0; 
end 

-- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp mission lóc cÇn lµm xö lý , c¨n cø cÇn nÆng t¸i 
function tbBaseMission:OnPlayerJoin() 
print("tbBaseMission:OnPlayerJoin()") 
end 


-- script viet hoa By http://tranhba.com  lÊy ®­îc nhµ ch¬i chç ë GroupId, cÇn c¨n cø cÇn nÆng t¸i 
function tbBaseMission:GetGroupId() 
return 0 
end 
-- script viet hoa By http://tranhba.com  nhµ ch¬i rêi ®i Mission ®Ých xö lý , c¨n cø cÇn nÆng t¸i 
function tbBaseMission:OnLeave() 
print("tbBaseMission:OnLeave()") 
end 

-- script viet hoa By http://tranhba.com  tÝnh giê khÝ , c¨n cø cÇn nÆng t¸i 
function tbBaseMission:OnTimer() 
print("tbBaseMission:OnTimer()") 
end 

-- script viet hoa By http://tranhba.com  thi hµnh lóc , c¨n cø cÇn cã thÓ nÆng t¸i 
function tbBaseMission:OnRun() 
print("tbBaseMission:OnRun()") 
end 

function tbBaseMission:output(szMsg) 
print(szMsg) 
end 

function tbBaseMission:Debug(...) 
call(print,arg) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  bªn ngoµi ®iÒu dông , cÇn b¶o vÖ tr­íc mÆt ®Ých SubWorld 

-- script viet hoa By http://tranhba.com  më ra tÊt c¶ b¶n ®å ®Ých Mission 
function tbBaseMission:StartGame() 

if self.tbMapId then 
for i=1, getn(self.tbMapId) do 
self:StartGameInMap(self.tbMapId[i]) 
end 
elseif self.nMapId and not self.tbMapId then 
self:StartGameInMap(self.nMapId) 
end 
return 1 
end 
-- script viet hoa By http://tranhba.com  më ra mét b¶n ®å ®Ých Mission 
function tbBaseMission:StartGameInMap(nMapId) 


local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 



if self:GetMissionV(self.tbMissionV.MISSION_STATE, nMapId) ~= 0 then 
self:Debug("B# #"..nMapId.." ®Ých Mission lÇn tr­íc kh«ng cã t¾t ") 
self:CloseGameInMap(nMapId) 
end 
doFunInWorld(nMapIndex, OpenMission, self.nMissionId) 
return 1 
else 
return 0 
end 
end 


-- script viet hoa By http://tranhba.com  t¾t tÊt c¶ trªn b¶n ®å ®Ých Mission 
function tbBaseMission:CloseGame() 
if self.tbMapId then 
for i=1, getn(self.tbMapId) do 
self:CloseGameInMap(self.tbMapId[i]) 
end 
elseif self.nMapId and not self.tbMapId then 
self:CloseGameInMap(self.nMapId) 
end 
end 

-- script viet hoa By http://tranhba.com  t¾t mét trªn b¶n ®å ®Ých Mission 
function tbBaseMission:CloseGameInMap(nMapId) 
local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 
doFunInWorld(nMapIndex, CloseMission, self.nMissionId ) 
end 
end 

-- script viet hoa By http://tranhba.com  ®Ó cho mét nhµ ch¬i gia nhËp mét b¶n ®å ®Ých Mission , 
-- script viet hoa By http://tranhba.com  nÕu nh­ nMapId lµ v« Ých ®Ých , nh­ vËy cam chÞu v× self.nMapId, 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÒu b¶n ®å cã c¸i nµy mission nh­ vËy nhÊt ®Þnh ph¶i cã nMapId c¸i nµy tham sæ 
function tbBaseMission:JoinGame(nPlayerIndex, nGroupId, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 
if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, self.PlayerJoin, self, nPlayerIndex, nGroupId) 
end 
return -1; 
end 

-- script viet hoa By http://tranhba.com  ®¹t ®­îc mét b¶n ®å ®Ých Mission Value , 
-- script viet hoa By http://tranhba.com  nÕu nh­ nMapId lµ v« Ých ®Ých , nh­ vËy cam chÞu v× self.nMapId, 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÒu b¶n ®å cã c¸i nµy mission nh­ vËy nhÊt ®Þnh ph¶i cã nMapId c¸i nµy tham sæ 
function tbBaseMission:GetMissionV(nVId, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, GetMissionV, nVId) 
end 
return 0 
end 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc mét b¶n ®å ®Ých Mission String , 
-- script viet hoa By http://tranhba.com  nÕu nh­ nMapId lµ v« Ých ®Ých , nh­ vËy cam chÞu v× self.nMapId, 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÒu b¶n ®å cã c¸i nµy mission nh­ vËy nhÊt ®Þnh ph¶i cã nMapId c¸i nµy tham sæ 
function tbBaseMission:GetMissionS(nSId, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, GetMissionS, nSId) 
end 
return "" 
end 
-- script viet hoa By http://tranhba.com  thiÕt trÝ mét b¶n ®å ®Ých Mission Value , 
-- script viet hoa By http://tranhba.com  nÕu nh­ nMapId lµ v« Ých ®Ých , nh­ vËy cam chÞu v× self.nMapId, 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÒu b¶n ®å cã c¸i nµy mission nh­ vËy nhÊt ®Þnh ph¶i cã nMapId c¸i nµy tham sæ 
function tbBaseMission:SetMissionV(nVId, nValue, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, SetMissionV, nVId, nValue) 
end 
return 0 
end 
-- script viet hoa By http://tranhba.com  thiÕt trÝ mét b¶n ®å ®Ých Mission String , 
-- script viet hoa By http://tranhba.com  nÕu nh­ nMapId lµ v« Ých ®Ých , nh­ vËy cam chÞu v× self.nMapId, 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÒu b¶n ®å cã c¸i nµy mission nh­ vËy nhÊt ®Þnh ph¶i cã nMapId c¸i nµy tham sæ 
function tbBaseMission:SetMissionS(nSId, szValue, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, SetMissionS, nSId, szValue) 
end 
return "" 
end 
-- script viet hoa By http://tranhba.com  lÊy ®­îc mét trªn b¶n ®å Mission ®Ých tr¹ng th¸i 
-- script viet hoa By http://tranhba.com  nÕu nh­ nMapId lµ v« Ých ®Ých , nh­ vËy cam chÞu v× self.nMapId, 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÒu b¶n ®å cã c¸i nµy mission nh­ vËy nhÊt ®Þnh ph¶i cã nMapId c¸i nµy tham sæ 
function tbBaseMission:GetMissionState(nMapId) 
return self:GetMissionV(self.tbMissionV.MISSION_STATE, nMapId) 
end 
-- script viet hoa By http://tranhba.com  lÊy ®­îc mét b¶n ®å ®Ých mét tæ nh©n sè 
-- script viet hoa By http://tranhba.com  nÕu nh­ nMapId lµ v« Ých ®Ých , nh­ vËy cam chÞu v× self.nMapId, 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÒu b¶n ®å cã c¸i nµy mission nh­ vËy nhÊt ®Þnh ph¶i cã nMapId c¸i nµy tham sæ 
function tbBaseMission:GetMSPlayerCount(nGroupId, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 
if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, GetMSPlayerCount, self.nMissionId, nGroupId) 
end 
return -1; 
end 

function tbBaseMission:GetLastPos() 
return GetTask(self.TSK_MAP_ID), GetTask(self.TSK_MAP_X), GetTask(self.TSK_MAP_Y) 
end 

function tbBaseMission:SetLastPos(nMapId, nX, nY) 

SetTask(self.TSK_MAP_ID, nMapId) 
SetTask(self.TSK_MAP_X, nX) 
SetTask(self.TSK_MAP_Y, nY) 
end 
