Include("\\script\\missions\\racegame\\lib.lua")

if not tbMission then 

tbMission = 
{ 
nMissionId = 0, 
tbTimer = {}, 
tbMissionV = {MISSION_STATE = 1,}, 
tbMissionS = {}, 
nMapId = 0, 
} 

end 
function tbMission:Init() 
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

function tbMission:OnInit() 
SetMissionV(self.tbMissionV.MISSION_STATE, 1) 
end 

function tbMission:OnClose() 
print("tbMission:OnClose()") 
end 

function tbMission:Close() 
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

-- script viet hoa By http://tranhba.com  
function tbMission:PlayerJoin(nPlayerIndex, nGroupId) 
if doFunByPlayer(nPlayerIndex, self.OnPlayerJoin, self ) == 1 then 
doFunByPlayer(nPlayerIndex, AddMSPlayer, self.nMissionId, nGroupId) 
return 1; 
end 
return 0; 
end 

function tbMission:OnPlayerJoin() 
print("tbMission:OnPlayerJoin()") 
end 


function tbMission:OnLeave() 
print("tbMission:OnLeave()") 
end 

function tbMission:OnTimer() 
print("tbMission:OnTimer()") 
end 

function tbMission:OnRun() 
print("tbMission:OnRun()") 
end 

function tbMission:output(szMsg) 
print(szMsg) 
end 

function tbMission:Debug(szMsg) 
print(szMsg) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  b�n ngo�i �i�u d�ng , c�n b�o v� tr��c m�t ��ch SubWorld 

-- script viet hoa By http://tranhba.com  m� ra 
function tbMission:StartGame() 

local nMapIndex = SubWorldID2Idx(self.nMapId) 

if nMapIndex >= 0 then 
if self:GetMissionV(self.tbMissionV.MISSION_STATE) ~= 0 then 
self:Debug(" l�n tr��c kh�ng quan ") 
self:CloseGame() 
end 
doFunInWorld(nMapIndex, OpenMission, self.nMissionId) 
return 1 
else 
self:output(format("[mission start fail]:map %d is not load", self.nMapId)) 
return 0 
end 
end 

-- script viet hoa By http://tranhba.com  t�t 
function tbMission:CloseGame() 
local nMapIndex = SubWorldID2Idx(self.nMapId) 

if nMapIndex >= 0 then 
doFunInWorld(nMapIndex, CloseMission, self.nMissionId ) 
end 
end 

-- script viet hoa By http://tranhba.com  �� cho m�t nh� ch�i gia nh�p 
function tbMission:JoinGame(nPlayerIndex, nGroupId) 
local nMapIndex = SubWorldID2Idx(self.nMapId) 
if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, self.PlayerJoin, self, nPlayerIndex, nGroupId) 
end 
return -1; 
end 

-- script viet hoa By http://tranhba.com  r�i �i tr� ch�i 
function tbMission:LeaveGame() 
local nMapIndex = SubWorldID2Idx(self.nMapId) 
if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, self.OnLeave, self) 
end 
return -1 
end 


function tbMission:Run() 

local nMapIndex = SubWorldID2Idx(self.nMapId) 

if nMapIndex >= 0 then 
doFunInWorld(nMapIndex, self.OnRun, self) 
end 
end 


function tbMission:GetMissionV(nVId) 
local nMapIndex = SubWorldID2Idx(self.nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, GetMissionV, nVId) 
end 
return 0 
end 

function tbMission:GetMissionS(nSId) 
local nMapIndex = SubWorldID2Idx(self.nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, GetMissionS, nSId) 
end 
return "" 
end 

function tbMission:SetMissionV(nVId, nValue) 
local nMapIndex = SubWorldID2Idx(self.nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, SetMissionV, nVId, nValue) 
end 
return 0 
end 

function tbMission:SetMissionS(nSId, szValue) 
local nMapIndex = SubWorldID2Idx(self.nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, SetMissionS, nSId, szValue) 
end 
return "" 
end 

function tbMission:GetMissionState() 
return self:GetMissionV(self.tbMissionV.MISSION_STATE) 
end 

function tbMission:GetMSPlayerCount(nGroupId) 

local nMapIndex = SubWorldID2Idx(self.nMapId) 
if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, GetMSPlayerCount, self.nMissionId, nGroupId) 
end 
return -1; 
end
