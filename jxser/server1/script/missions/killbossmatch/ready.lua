Include("\\script\\lib\\pay.lua")
Include("\\script\\missions\\basemission\\class.lua")
Include("\\script\\lib\\gb_taskfuncs.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\missions\\killbossmatch\\class.lua")

local tbMissionData = 
{ 
nMissionId = 68,-- script viet hoa By http://tranhba.com  
tbTimer = {{112,18*5}},-- script viet hoa By http://tranhba.com  t�nh gi� kh� Id98 1 gi�y m�t l�n 
tbMapId = {906},-- script viet hoa By http://tranhba.com  cam ch�u b�n �� 
nReadyTime = 60*5, 
nMaxPlayerCount = 200, 
nMinLevel = 120, 

nPlayerCountPerGroup = 20, 
TSK_nCountPerDay = 1864, 
TSK_IsUsePerDay = 1914 
} 

tbMissionData.tbMissionV = 
{ 
MISSION_STATE = 1, 
SECOND_COUNTER = 2, 
CUR_MAPID = 3, 
} 

tbMissionData.tbMissionS = {} 


if not tbKillBossMatch_ready then 
tbKillBossMatch_ready = tbBaseMission:new(tbMissionData) 
end 

function tbKillBossMatch_ready:OnInit() 

SetMissionV(self.tbMissionV.MISSION_STATE, 1) 
local nMapId = SubWorldIdx2ID(SubWorld) 
SetMissionV(self.tbMissionV.CUR_MAPID, nMapId) 
end 


function tbKillBossMatch_ready:GotoReadyScene() 
local nMapId = self.tbMapId[1] 
for i=1, getn(self.tbMapId) do 
if SubWorldID2Idx(self.tbMapId[i]) >= 0 then 
nMapId = self.tbMapId[i] 
break 
end 
end 

self:SetLastPos(GetWorldPos()) 

	nPosX, nPosY = getadatatow("\\settings\\maps\\chrismas\\player.txt", 2, 15);
NewWorld(nMapId, floor(nPosX/32), floor(nPosY/32)) 
end 

function tbKillBossMatch_ready:_CheckMission() 
local nMissionState = GetMissionV(self.tbMissionV.MISSION_STATE) 
local nPlayerCount = GetMSPlayerCount(self.nMissionId, 0) 
print(nMissionState) 
if nMissionState ~= 1 then 
Msg2Player("<color=yellow> tr��c m�t kh�ng ph�i l� ghi danh th�i gian <color>") 
return 
end 
if self.nMaxPlayerCount and nPlayerCount > self.nMaxPlayerCount then 
Msg2Player("Tham gia ho�t ��ng nh�n s� c�a �� �� , xin ch� ch�t m�t v�ng �i !") 
return 
end 
return 1 
end 

function tbKillBossMatch_ready:OnPlayerJoin() 


if self:_CheckMission() ~= 1 or self:IsPlayerEligible() ~= 1 then 
self:GotoSignUpPlace() 
return 0 
end 

SetTaskTemp(200, 1); -- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetLogoutRV(1); -- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetPunish(0); -- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetCreateTeam(0); -- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
ForbidEnmity(1) -- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
DisabledStall(1); -- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
ForbitTrade(0); 
ForbidChangePK(1); 
DisabledUseTownP(1); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
SetFightState(0); 
SetPKFlag(0) 
SetCurCamp(1); 

return 1 
end 


function tbKillBossMatch_ready:OnLeave() 

SetTaskTemp(200,0); 
SetFightState(0); 
SetPunish(1); 
SetCreateTeam(1); 
ForbidEnmity( 0 ) 
SetPKFlag(0) 
DisabledStall(0); 
ForbitTrade(0); 
SetCurCamp(GetCamp()); 
ForbidChangePK(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
end 




function tbKillBossMatch_ready:OnTimer() 
local nMapId = GetMissionV(self.tbMissionV.CUR_MAPID) 
local nTimerCount = GetMissionV(self.tbMissionV.SECOND_COUNTER) 
local nMissionState = GetMissionV(self.tbMissionV.MISSION_STATE) 
	nTimerCount = nTimerCount + 5
SetMissionV(self.tbMissionV.SECOND_COUNTER, nTimerCount) 


local nPlayerCount = GetMSPlayerCount(self.nMissionId, 0) 


if nTimerCount < self.nReadyTime then 
local szMsg = format("Chu�n b� th�i gian c�n c� <color=yellow>%d<color> gi�y ", self.nReadyTime - nTimerCount) 
if mod(nTimerCount, 10) == 0 then 
Msg2MSAll(self.nMissionId, szMsg); 
end 
return 
end 

if nTimerCount >= self.nReadyTime then 
if tbKillBossMatch:StartGame() == 1 then 
self:GroupingPlayer() 
end 
return self:CloseGameInMap(nMapId) 
end 
end 



function tbKillBossMatch_ready:_GetPlayerTable(nGroupId) 
local pidx = 0 
local idx = 0 
local tbPlayer = {} 
nGroupId = nGroupId or 0 
local nPlayerCount = GetMSPlayerCount(self.nMissionId, nGroupId) 

for i = 1, nPlayerCount do 
idx, pidx = GetNextPlayer(self.nMissionId, idx, nGroupId); 
if (pidx > 0) then 
tbPlayer[i] = {} 
tbPlayer[i].nIndex = pidx 
end; 

if (idx == 0) then 
break; 
end; 
end 
return tbPlayer 
end 


function tbKillBossMatch_ready:GroupingPlayer() 
local tbPlayer = self:_GetPlayerTable(0) 
self:ChaosTable(tbPlayer) 
local j = 1; 
for i=1, getn(tbPlayer) do 
doFunByPlayer(tbPlayer[i].nIndex, self.GotoMarchScene, self, j) 
if mod(i, self.nPlayerCountPerGroup) == 0 then 
			j = j + 1
end 
end 
end 

function tbKillBossMatch_ready:KickAllPlayer() 
local tbPlayer = self:_GetPlayerTable(0) 
for i=1, getn(tbPlayer) do 
doFunByPlayer(tbPlayer[i].nIndex, self.GotoSignUpPlace, self) 
end 
end 

function tbKillBossMatch_ready:OnClose() 
SetMissionV(self.tbMissionV.MISSION_STATE, 3) 
Msg2MSAll(self.nMisssionId,"Kh�ng th� di ��ng ��n nh�ng kh�c b�n �� .") 
self:KickAllPlayer() 
end 

function tbKillBossMatch_ready:GotoMarchScene(nGroupId) 

tbKillBossMatch:GotoMarchScene(nGroupId) 

end 

function tbKillBossMatch_ready:GotoSignUpPlace() 
local nMapId, nPosX, nPosY = self:GetLastPos() 
if nMapId == 0 or nPosX == 0 or nPosY == 0 then 
nMapId = 11 
nPosX = 3143 
nPosY = 5065 
end 
NewWorld(nMapId, nPosX, nPosY) 
end 

function tbKillBossMatch_ready:ChaosTable(tb) 
local nCount = getn(tb) 
for i = 1, nCount do 
local j = random(1,nCount) 
tb[i], tb[j] = tb[j], tb[i]; 
end 
end 

function tbKillBossMatch_ready:IsPlayerEligible() 

if PlayerFunLib:CheckIsTransLife("") ~= 1 and PlayerFunLib:CheckLevel(self.nMinLevel, "", ">=") ~= 1 then 
Msg2Player(format("C�n %d c�p tr� l�n ho�c l� nh�n v�t �� chuy�n sinh m�i c� th� tham gia ho�t ��ng ", self.nMinLevel)) 
return 
end 

if PlayerFunLib:IsCharged("C�n sung tr� gi� m�i c� th� tham gia ") ~= 1 then 
return 
end 

-- script viet hoa By http://tranhba.com TSK_IsUsePerDay 

	if PlayerFunLib:GetTaskDailyCount(self.TSK_nCountPerDay) >= 1 + PlayerFunLib:GetTaskDailyCount(self.TSK_IsUsePerDay) then

Msg2Player("M�i ng�y m�i nh�n v�t ch� c� th� tham gia m�t l�n b�nh an qu� ho�t ��ng ") 
return 
end 


return 1 
end 

function tbKillBossMatch_ready:WriteLog(szMsg) 

WriteLog(format("[%s]\t%s\t%s.", "wabao mission",GetLocalDate("%Y-%m-%d %H:%M"), szMsg)) 
end
