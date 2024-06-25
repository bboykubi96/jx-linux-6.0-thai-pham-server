Include("\\script\\lib\\baseclass.lua")
Include("\\script\\missions\\basemission\\lib.lua")
IncludeLib("SETTING") 
if not tbBaseMission then 
tbBaseMission = tbBaseClass:new() 
end 


-- script viet hoa By http://tranhba.com  lo�i m�i b�t ��u h�a , c�n c� tbMissionData d�m key c�ng value , thi�t tr� t��ng �ng key c�ng value 
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




-- script viet hoa By http://tranhba.com Mission ��ch m�i b�t ��u h�a , ch� c� th� c�ng ch� � InitMission trung s� d�ng 
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

-- script viet hoa By http://tranhba.com  c�n c� b�t ��ng Mission ti�n h�nh n�ng t�i , nh�t ��nh ph�i thi�t tr� Mission_state ��ch tr� gi� 
function tbBaseMission:OnInit() 
SetMissionV(self.tbMissionV.MISSION_STATE, 1) 
end 

-- script viet hoa By http://tranhba.com Mission ��ch thi h�nh , t� tr�nh t� th�ng qua RunMission �i�u d�ng , ch�n v�n kh�ng �i�u d�ng 
function tbBaseMission:Run() 

-- script viet hoa By http://tranhba.com  local nMapIndex = SubWorldID2Idx(self.nMapId) 
-- script viet hoa By http://tranhba.com  ��i th�nh l�y tr��c m�t subworld t�i thi h�nh 
if SubWorld >= 0 then 
doFunInWorld(SubWorld, self.OnRun, self) 
end 
end 

-- script viet hoa By http://tranhba.com  r�i �i tr� ch�i , t� tr�nh t� th�ng qua Mission trung ��ch OnLeave �i�u d�ng , 
function tbBaseMission:LeaveGame() 

-- script viet hoa By http://tranhba.com  local nMapIndex = SubWorldID2Idx(self.nMapId) 
-- script viet hoa By http://tranhba.com  ��i th�nh l�y tr��c m�t subworld t�i thi h�nh 
if SubWorld >= 0 then 
return doFunInWorld(SubWorld, self.OnLeave, self) 
end 
return -1 
end 

-- script viet hoa By http://tranhba.com Mission t�t l�c ��ch x� l� , c�n c� c�n n�ng t�i 
function tbBaseMission:OnClose() 
print("tbBaseMission:OnClose()") 
end 

-- script viet hoa By http://tranhba.com  kh�ng c�n n�ng t�i 
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

-- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p 
function tbBaseMission:PlayerJoin(nPlayerIndex, nGroupId) 
if doFunByPlayer(nPlayerIndex, self.OnPlayerJoin, self ) == 1 then 
doFunByPlayer(nPlayerIndex, AddMSPlayer, self.nMissionId, nGroupId) 
return 1; 
end 
return 0; 
end 

-- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p mission l�c c�n l�m x� l� , c�n c� c�n n�ng t�i 
function tbBaseMission:OnPlayerJoin() 
print("tbBaseMission:OnPlayerJoin()") 
end 


-- script viet hoa By http://tranhba.com  l�y ���c nh� ch�i ch� � GroupId, c�n c�n c� c�n n�ng t�i 
function tbBaseMission:GetGroupId() 
return 0 
end 
-- script viet hoa By http://tranhba.com  nh� ch�i r�i �i Mission ��ch x� l� , c�n c� c�n n�ng t�i 
function tbBaseMission:OnLeave() 
print("tbBaseMission:OnLeave()") 
end 

-- script viet hoa By http://tranhba.com  t�nh gi� kh� , c�n c� c�n n�ng t�i 
function tbBaseMission:OnTimer() 
print("tbBaseMission:OnTimer()") 
end 

-- script viet hoa By http://tranhba.com  thi h�nh l�c , c�n c� c�n c� th� n�ng t�i 
function tbBaseMission:OnRun() 
print("tbBaseMission:OnRun()") 
end 

function tbBaseMission:output(szMsg) 
print(szMsg) 
end 

function tbBaseMission:Debug(...) 
call(print,arg) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  b�n ngo�i �i�u d�ng , c�n b�o v� tr��c m�t ��ch SubWorld 

-- script viet hoa By http://tranhba.com  m� ra t�t c� b�n �� ��ch Mission 
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
-- script viet hoa By http://tranhba.com  m� ra m�t b�n �� ��ch Mission 
function tbBaseMission:StartGameInMap(nMapId) 


local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 



if self:GetMissionV(self.tbMissionV.MISSION_STATE, nMapId) ~= 0 then 
self:Debug("B# #"..nMapId.." ��ch Mission l�n tr��c kh�ng c� t�t ") 
self:CloseGameInMap(nMapId) 
end 
doFunInWorld(nMapIndex, OpenMission, self.nMissionId) 
return 1 
else 
return 0 
end 
end 


-- script viet hoa By http://tranhba.com  t�t t�t c� tr�n b�n �� ��ch Mission 
function tbBaseMission:CloseGame() 
if self.tbMapId then 
for i=1, getn(self.tbMapId) do 
self:CloseGameInMap(self.tbMapId[i]) 
end 
elseif self.nMapId and not self.tbMapId then 
self:CloseGameInMap(self.nMapId) 
end 
end 

-- script viet hoa By http://tranhba.com  t�t m�t tr�n b�n �� ��ch Mission 
function tbBaseMission:CloseGameInMap(nMapId) 
local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 
doFunInWorld(nMapIndex, CloseMission, self.nMissionId ) 
end 
end 

-- script viet hoa By http://tranhba.com  �� cho m�t nh� ch�i gia nh�p m�t b�n �� ��ch Mission , 
-- script viet hoa By http://tranhba.com  n�u nh� nMapId l� v� �ch ��ch , nh� v�y cam ch�u v� self.nMapId, 
-- script viet hoa By http://tranhba.com  n�u nh� l� nhi�u b�n �� c� c�i n�y mission nh� v�y nh�t ��nh ph�i c� nMapId c�i n�y tham s� 
function tbBaseMission:JoinGame(nPlayerIndex, nGroupId, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 
if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, self.PlayerJoin, self, nPlayerIndex, nGroupId) 
end 
return -1; 
end 

-- script viet hoa By http://tranhba.com  ��t ���c m�t b�n �� ��ch Mission Value , 
-- script viet hoa By http://tranhba.com  n�u nh� nMapId l� v� �ch ��ch , nh� v�y cam ch�u v� self.nMapId, 
-- script viet hoa By http://tranhba.com  n�u nh� l� nhi�u b�n �� c� c�i n�y mission nh� v�y nh�t ��nh ph�i c� nMapId c�i n�y tham s� 
function tbBaseMission:GetMissionV(nVId, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, GetMissionV, nVId) 
end 
return 0 
end 
-- script viet hoa By http://tranhba.com  ��t ���c m�t b�n �� ��ch Mission String , 
-- script viet hoa By http://tranhba.com  n�u nh� nMapId l� v� �ch ��ch , nh� v�y cam ch�u v� self.nMapId, 
-- script viet hoa By http://tranhba.com  n�u nh� l� nhi�u b�n �� c� c�i n�y mission nh� v�y nh�t ��nh ph�i c� nMapId c�i n�y tham s� 
function tbBaseMission:GetMissionS(nSId, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, GetMissionS, nSId) 
end 
return "" 
end 
-- script viet hoa By http://tranhba.com  thi�t tr� m�t b�n �� ��ch Mission Value , 
-- script viet hoa By http://tranhba.com  n�u nh� nMapId l� v� �ch ��ch , nh� v�y cam ch�u v� self.nMapId, 
-- script viet hoa By http://tranhba.com  n�u nh� l� nhi�u b�n �� c� c�i n�y mission nh� v�y nh�t ��nh ph�i c� nMapId c�i n�y tham s� 
function tbBaseMission:SetMissionV(nVId, nValue, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, SetMissionV, nVId, nValue) 
end 
return 0 
end 
-- script viet hoa By http://tranhba.com  thi�t tr� m�t b�n �� ��ch Mission String , 
-- script viet hoa By http://tranhba.com  n�u nh� nMapId l� v� �ch ��ch , nh� v�y cam ch�u v� self.nMapId, 
-- script viet hoa By http://tranhba.com  n�u nh� l� nhi�u b�n �� c� c�i n�y mission nh� v�y nh�t ��nh ph�i c� nMapId c�i n�y tham s� 
function tbBaseMission:SetMissionS(nSId, szValue, nMapId) 
nMapId = nMapId or self.nMapId 
local nMapIndex = SubWorldID2Idx(nMapId) 

if nMapIndex >= 0 then 
return doFunInWorld(nMapIndex, SetMissionS, nSId, szValue) 
end 
return "" 
end 
-- script viet hoa By http://tranhba.com  l�y ���c m�t tr�n b�n �� Mission ��ch tr�ng th�i 
-- script viet hoa By http://tranhba.com  n�u nh� nMapId l� v� �ch ��ch , nh� v�y cam ch�u v� self.nMapId, 
-- script viet hoa By http://tranhba.com  n�u nh� l� nhi�u b�n �� c� c�i n�y mission nh� v�y nh�t ��nh ph�i c� nMapId c�i n�y tham s� 
function tbBaseMission:GetMissionState(nMapId) 
return self:GetMissionV(self.tbMissionV.MISSION_STATE, nMapId) 
end 
-- script viet hoa By http://tranhba.com  l�y ���c m�t b�n �� ��ch m�t t� nh�n s� 
-- script viet hoa By http://tranhba.com  n�u nh� nMapId l� v� �ch ��ch , nh� v�y cam ch�u v� self.nMapId, 
-- script viet hoa By http://tranhba.com  n�u nh� l� nhi�u b�n �� c� c�i n�y mission nh� v�y nh�t ��nh ph�i c� nMapId c�i n�y tham s� 
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
