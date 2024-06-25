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
racegame_tbReadyMission.nLatencyTime = 60 -- script viet hoa By http://tranhba.com  ch� ��i th�i gian 60 gi�y 
racegame_tbReadyMission.nSignUpTime = 50 -- script viet hoa By http://tranhba.com  50 gi�y sau kh�ng th� ghi danh 
racegame_tbReadyMission.nMapId = 582 -- script viet hoa By http://tranhba.com  b�n �� Id 
racegame_tbReadyMission.nPlayerCountLimit = 120 -- script viet hoa By http://tranhba.com  nhi�u nh�t 120 ng��i tham gia 
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
local szMsg = format("C�n th�a l�i th�i gian l� <color=yellow>%d<color> gi�y .", self.nLatencyTime - nTimerCount) 

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
doFunByPlayer(tbPlayer[i], Msg2Player,"Tr��c m�t ���ng kh�ng th�ng , xin ch� ch�t cu�c tranh t�i .") 
else 
			local nX, nY = getadata("\\settings\\battles\\maps\\river\\��Ӫ2.txt")
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
-- script viet hoa By http://tranhba.com  truy�n t�ng ��n cu�c so t�i tr�ng 
local nPlayerCount = GetMSPlayerCount(self.nMissionId, 0) 
if nPlayerCount >= self.nPlayerCountLimit or GetLevel() < self.nLevelLimit then 
jiefang_0804_ResetTask() 
local nPlayerMapId = GetTask(jiefang_0804_TSK_MapId) 
if nPlayerMapId == 0 then 
nPlayerMapId = 524 
end 
NewWorld(nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2]) 
if nPlayerCount >= self.nPlayerCountLimit then 
Msg2Player("Tham gia ho�t ��ng nh�n s� �� �� r�i , ng��i tham gia cu�c k� ti�p �i !") 
Say("Tham gia ho�t ��ng nh�n s� �� �� r�i , ng��i tham gia cu�c k� ti�p �i !", 0) 
elseif GetLevel() < self.nLevelLimit then 
Msg2Player(format("C�p b�c ch�a �� %s, kh�ng th� tham gia ho�t ��ng .", self.nLevelLimit)) 
Say(format("C�p b�c ch�a �� %s, kh�ng th� tham gia ho�t ��ng .", self.nLevelLimit), 0) 
end 
return 0 
end 

ForbitSkill(1); 
SetMoveSpeed(18); 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,1); 
-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
SetFightState(0); 
-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetLogoutRV(1); 
-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(0); 
-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(0); 

-- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbitAura(1) 
-- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
ForbidEnmity( 1 ) 
-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 
-- script viet hoa By http://tranhba.com  b�t ��u h�n c�ng kh�ng th� PK 
SetPKFlag(0) 
-- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
DisabledStall(1); 
ForbitTrade(0); 
ForbidChangePK(1); 
DisabledUseTownP(1); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 

return 1; 
end 

function racegame_tbReadyMission:OnLeave() 
ForbitSkill(0); 
SetMoveSpeed(-1); 

-- script viet hoa By http://tranhba.com  t�t c�m ch� h�o quang 
ForbitAura(0) 
-- script viet hoa By http://tranhba.com  t�t thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,0); 
-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
SetFightState(0); 
-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
-- script viet hoa By http://tranhba.com SetLogoutRV(0); 
-- script viet hoa By http://tranhba.com  t� vong tr�ng ph�t 
SetPunish(1); 
-- script viet hoa By http://tranhba.com  m� ra h�p th�nh ��i ch�c n�ng 
SetCreateTeam(0); 
-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 

-- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
ForbidEnmity( 0 ) 
-- script viet hoa By http://tranhba.com  b�t ��u h�n c�ng kh�ng th� PK 
SetPKFlag(0) 
-- script viet hoa By http://tranhba.com  t�t c�m ch� giao d�ch ; 
DisabledStall(0); 
ForbitTrade(0); 

local nCamp = GetCamp(); 
SetCurCamp(nCamp); 

ForbidChangePK(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  t�t c�m ch� s� d�ng h�i tr�nh # 

end
