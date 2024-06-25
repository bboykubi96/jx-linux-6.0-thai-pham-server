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
racegame_tbMission.nLatencyTime = 60*14 -- script viet hoa By http://tranhba.com  ch� ��i th�i gian 14 ph�t 

racegame_tbMission.nMapId = 863 -- script viet hoa By http://tranhba.com  b�n �� Id 

racegame_tbMission.tbNpcList = 
{ 
	[1] = {szName = "�ϰ����Ц", nNpcId = 228, szScriptPath = "\\script\\missions\\racegame\\npcsaichanglaoban.lua"},
	[2] = {szName = "��������", nNpcId = 1288,szScriptPath = "\\script\\missions\\racegame\\npctoolitem.lua"},
} 

racegame_tbMission.tbItemList = 
{ 
{szName=" gia t�c ho�n ", tbProp={6, 1, 978, 1, 0, 0} }, 
{szName=" l�i t�c ho�n ", tbProp={6, 1, 990, 1, 0, 0} }, 
{szName=" huy�n thi�n b�y r�p ", tbProp={6, 1, 982, 1, 0, 0} }, 
{szName=" ��ng b�ng b�y r�p ", tbProp={6, 1, 984, 1, 0, 0} }, 
{szName=" h�n m� b�y r�p ", tbProp={6, 1, 981, 1, 0, 0} }, 
{szName=" s��ng xu�ng b�y r�p ", tbProp={6, 1, 983, 1, 0, 0} }, 
{szName=" b�ng s��ng k�n hi�u ", tbProp={6, 1, 979, 1, 0, 0} }, 
{szName=" b�o l�i k�n hi�u ", tbProp={6, 1, 980, 1, 0, 0}}, 
{szName=" l� ch�n ��a ph� ", tbProp={6, 1, 987, 1, 0, 0} }, 
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
-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,1); 
-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
-- script viet hoa By http://tranhba.com  SetFightState(1); 
-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetLogoutRV(1); 

-- script viet hoa By http://tranhba.com  c�m ch� h�o quang 
ForbitAura(1) 
SetFightState(1); 
-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(0); 
-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(0); 
-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 

-- script viet hoa By http://tranhba.com  thi�t tr� th� gi�t 
ForbidEnmity( 1 ) 
-- script viet hoa By http://tranhba.com  b�t ��u h�n c�ng kh�ng th� PK 
SetPKFlag(1) 
-- script viet hoa By http://tranhba.com  c�m ch� giao d�ch ; 
DisabledStall(1); 
ForbitTrade(0); 

ForbidChangePK(1); 
SetCurCamp(4); -- script viet hoa By http://tranhba.com  thi�t tr� t�m th�i tr�n doanh 
DisabledUseTownP(1); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 

local nTimerCount = GetMissionV(self.tbMissionV.SECOND_COUNTER) 
local szMsg = format("Tranh t�i b�t ��u , c�n th�a l�i th�i gian l� <color=yellow>%d<color> gi�y .", self.nLatencyTime - nTimerCount) 
Msg2Player(szMsg) 
return 1 
end 

function racegame_tbMission:OnLeave() 
self:DelItem() 

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

function racegame_tbMission:OnClose() 
gb_SetTask(self.G_TSK_NAME, self.MissionState, 0) 
Msg2MSAll(self.nMissionId,"Tranh t�i th�i gian �� d�ng xong , tranh t�i k�t th�c .") 
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
local szMsg = format("C�n th�a l�i th�i gian l� <color=yellow>%d<color> gi�y .", self.nLatencyTime - nTimerCount) 

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
