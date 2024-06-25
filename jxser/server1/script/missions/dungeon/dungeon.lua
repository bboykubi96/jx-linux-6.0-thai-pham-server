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

-- script viet hoa By http://tranhba.com  ph� b�n d�ch bi�n s� theo , m�i ph� b�n ��u kh�ng m�t d�ng 
tbDungeonClass.tbData = {}; 

if not tbTimerList then 
tbTimerList = {}; 
end 

if not tbTimerClass then 
tbTimerClass = {}; 
tbTimerClass.nDungeonId = 0; 
tbTimerClass.nInterval = 0; -- script viet hoa By http://tranhba.com  tr�nh 
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

-- script viet hoa By http://tranhba.com  ki�m tra ph�c v� kh� c� hay kh�ng c� th� l�i ���c m�t m�i ph� b�n , nh�ng n�ng t�i 
function tbDungeonClass:CheckOpenDungeonServerLimit() 
return 1; 
end 

function tbDungeonClass:OpenDungeon(tbDungeonData) 
-- script viet hoa By http://tranhba.com self:StartGame(); 

-- script viet hoa By http://tranhba.com  thanh tr� npc c�ng ��o c� 
ClearMapObj(self.nDungeonId); 
ClearMapNpc(self.nDungeonId); 

if (self.OnDungeonOpen) then 
return self:OnDungeonOpen(tbDungeonData); 
end 
return 1; 
end 

-- script viet hoa By http://tranhba.com  mu�n �em t�t c� nh� ch�i truy�n ra ph� b�n 
function tbDungeonClass:CloseDungeon() 
for i = 1, getn(self.tbMember) do 
if (self.tbMember[i].bInDungeon == 1) then 
doFunByPlayer(self.tbMember[i].nIndex, self.OnLeaveMap, self) 
end 
end 

if (self.OnDungeonClose) then 
self:OnDungeonClose(); 
end 

-- script viet hoa By http://tranhba.com  thanh tr� npc c�ng ��o c� 
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

-- script viet hoa By http://tranhba.com  theo nh� c�n n�ng t�i 
function tbDungeonClass:OnDungeonOpen() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh� c�n n�ng t�i 
function tbDungeonClass:OnDungeonClose() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh� c�n n�ng t�i 
function tbDungeonClass:OnTimer() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh� c�n n�ng t�i 
function tbDungeonClass:OnAddMember(strMemberName) 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh� c�n n�ng t�i 
function tbDungeonClass:OnApplyJoin() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh� c�n n�ng t�i 
function tbDungeonClass:OnDelMember() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh� c�n n�ng t�i 
function tbDungeonClass:OnEnterMap() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  theo nh� c�n n�ng t�i 
function tbDungeonClass:OnLeaveMap() 
return 1; 
end 

-- script viet hoa By http://tranhba.com  ph� b�n m� b�n tin t�c 
tbDungeonClass.strDungeon = "BaseDungeon" 
tbDungeonClass.nTimerInterval = 1 
tbDungeonClass.nTimerCount = 0 
tbDungeonClass.bHiden = 0 -- script viet hoa By http://tranhba.com  ng��i kh�c c� hay kh�ng c� th� th�y ���c 

-- script viet hoa By http://tranhba.com  c�n c� b�t ��ng Mission ti�n h�nh n�ng t�i , nh�t ��nh ph�i thi�t tr� Mission_state ��ch tr� gi� 
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

-- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p mission l�c c�n l�m x� l� , c�n c� c�n n�ng t�i 
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

-- script viet hoa By http://tranhba.com  nh� ch�i l�c r�i �i thi�t tr� nh� ch�i tr�ng th�i cam ch�u tham s� 
function tbDungeonClass:OnLeaveSetState() 

SetFightState(0); 
SetTaskTemp(200, 0); -- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
ForbidChangePK(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  c�m ch� s� d�ng h�i tr�nh # 
SetPKFlag(0); 
SetCurCamp(GetCamp()); 
DisabledStall(0); 
ForbidEnmity(0); 
end 

-- script viet hoa By http://tranhba.com  nh� ch�i l�c r�i �i thi�t tr� nh� ch�i tr�ng th�i cam ch�u truy�n t�ng 
function tbDungeonClass:OnLeaveTrans() 

NewWorld(11, 3143, 5065); 
end 

-- script viet hoa By http://tranhba.com  nh� ch�i r�i �i Mission ��ch x� l� , c�n c� c�n n�ng t�i 
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
