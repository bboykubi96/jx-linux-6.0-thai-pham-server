-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ®¹i lôc b¶n - tr¨m ng­êi l«i ®µi chñ v¨n kiÖn 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##arena.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2011-04-24 13:58:40 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\file.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\misc\\eventsys\\type\\map.lua")
Include("\\script\\missions\\bairenleitai\\head.lua")
Include("\\script\\lib\\remoteexc.lua")
IncludeLib("FILESYS") 
Include("\\script\\activitysys\\playerfunlib.lua")

HundredArena = { 
nMapId = 960, 
bTrapFlag = 0, -- script viet hoa By http://tranhba.com  cã hay kh«ng thªm t¸i Trap ®iÓm 
tbPlayerList = {}, -- script viet hoa By http://tranhba.com  nhµ ch¬i biÓu , t¸c dÉn v× nhµ ch¬i tªn , biÓu h¹ng kÕt cÊu v× {} 
tbArenaList = {}, -- script viet hoa By http://tranhba.com  ®an c¸ l«i ®µi 
tbRegId = {}, -- script viet hoa By http://tranhba.com  EventSys sù kiÖn 
nPak = curpack(), 
nPlayerCount = 0, 
nDoubleCount = 0, 
-- script viet hoa By http://tranhba.com  mçi ngµy nhËn lÊy kinh nghiÖm giíi h¹n - modified by DinhHQ - 20110714 
nTaskExpLimit = 2709, 
}; 

function HundredArena:LoadPosition(file, tb) 
if (TabFile_Load(file, file) == 0) then 
return 
end 
local count = TabFile_GetRowCount(file) 
if (count < 2) then 
return 
end 
for i = 2, count do 
local x = tonumber(TabFile_GetCell(file, i, 1)) 
local y = tonumber(TabFile_GetCell(file, i, 2)) 
tinsert(tb, {x, y}) 
end 
end 

function HundredArena:LoadTrap() 
for i = 1, getn(tbArena_Info) do 
local trap_file = format(tbTrapFile.szPosFile, i); 

local trap_list = {}; 
self:LoadPosition(trap_file, trap_list) 

for k = 1, getn(trap_list) do 
local x = trap_list[k][1] 
local y = trap_list[k][2] 

AddMapTrap(self.nMapId, x, y, tbTrapFile.szScriptFile, i); 
-- script viet hoa By http://tranhba.com AddObstacleObj(474, self.nMapId, x,y); 
end 

end 
end; 

function HundredArena:AddNpc() 
local tbChefu = { 
nNpcId = 393, 
szName = " phu xe ", 
nLevel = 1, 
nMapId = self.nMapId, 
nPosX = 56000, 
nPosY = 101088, 
szScriptPath = tbNpcFile.szTranserNpc, 
}; 
basemission_CallNpc(tbChefu); 

local tbChuwuxiang = { 
nNpcId = 625, 
szName = " tr÷ vËt r­¬ng ", 
nLevel = 1, 
nMapId = self.nMapId, 
nPosX = 55232, 
nPosY = 100512, 
szScriptPath = tbNpcFile.szBox, 
}; 
basemission_CallNpc(tbChuwuxiang); 

local tbYaodian = { 
nNpcId = 389, 
szName = " thuèc th­¬ng ", 
nLevel = 1, 
nMapId = self.nMapId, 
nPosX = 55936, 
nPosY = 99744, 
szScriptPath = tbNpcFile.szDrugstore, 
}; 
basemission_CallNpc(tbYaodian); 
end 


function HundredArena:AddObstacle() 
local tb_obstacle = {}; 
self:LoadPosition(tbTrapFile.szObstacleFile, tb_obstacle); 

for i = 1, getn(tb_obstacle) do 
AddObstacleObj(359, self.nMapId, tb_obstacle[i][1] ,tb_obstacle[i][2]); 
end 

end 

function HundredArena:LoadMap() 

local new_subworld = SubWorldID2Idx(self.nMapId); 

if new_subworld >= 0 then 

self:LoadTrap(); 

self:AddNpc(); 

self:AddObstacle(); 

end 
end 

-- script viet hoa By http://tranhba.com  míi b¾t ®Çu hãa hoµn c¶nh 
-- script viet hoa By http://tranhba.com  b¶n ®å tin tøc #Trap , NPC 
function HundredArena:IniEnvironment() 
local nPak = usepack(self.nPak) 
for i = 1, getn(tbArena_Info) do 
self.tbArenaList[i] = ArenaField:New(i) 
-- script viet hoa By http://tranhba.com  self.tbArenaList[i].tbHundredArena = self 
end 

if (self.bTrapFlag == 0) then 
self:LoadMap() 
self.bTrapFlag = 1; 
end 

self:UnReg() 
self:OnReg(); 
self.tbTimer = {}; -- script viet hoa By http://tranhba.com  nSDTimerId, nTimerCount 
self.tbTimer.nSDTimerId = TimerList:AddTimer(self, tbTimerInfo.nSchedule, 1); 
self.tbTimer.nTimerCount = 0; 
print("HundredArena:IniEnvironment Done!!") 
usepack(nPak) 
end 

function HundredArena:UnReg() 
if self.tbRegId then 
for szType, nId in self.tbRegId do 
EventSys:GetType(szType):UnReg(self.nMapId, nId); 
end 
end 
end 

function HundredArena:OnReg() 
self:RegMap("LeaveMap", self.OnLeaveMap, self); 
self:RegMap("EnterMap", self.OnEnterMap, self); 
end 

function HundredArena:RegMap(szType, varFun, ...) 

local nRegId = EventSys:GetType(szType):Reg(self.nMapId, varFun, unpack(arg)) 

self.tbRegId = self.tbRegId or {} 
self.tbRegId[szType] = self.tbRegId[szType] or nRegId; 

end 

function HundredArena:NewPlayer(nPlayerIndex) 
self.tbPlayerList = self.tbPlayerList or {}; 

local szPlayerName = CallPlayerFunction(nPlayerIndex, GetName); 

local tb = {}; 

tb.szPlayerName = szPlayerName; 
tb.nPlayerIndex = nPlayerIndex; 
self.tbPlayerList[szPlayerName] = self.tbPlayerList[szPlayerName] or tb; 

self.tbPlayerList[szPlayerName].nGrade = 0; -- script viet hoa By http://tranhba.com  l«i ®µi giai ®o¹n 
self.tbPlayerList[szPlayerName].nRight = 0; -- script viet hoa By http://tranhba.com  1 lµ ®µi chñ , 2 lµ khiªu chiÕn ph­¬ng 
self.tbPlayerList[szPlayerName].nArenaId = 0; -- script viet hoa By http://tranhba.com  tr­íc mÆt ë ®©u c¸ l«i ®µi 
self.tbPlayerList[szPlayerName].nDoubleTime = 0;-- script viet hoa By http://tranhba.com  nhËn lÊy gÊp ®«i ®Ých thêi gian 
self.tbPlayerList[szPlayerName].nDouble = 0; -- script viet hoa By http://tranhba.com  gÊp ®«i h÷u hiÖu kÕt thóc thêi gian 
	self.tbPlayerList[szPlayerName].nLastServerTime = tonumber(GetCurServerTime()) + HA_MAXSTAYTIME;

	self.nPlayerCount = self.nPlayerCount + 1;

end 

function HundredArena:DelPlayer(nPlayerIndex) 
local szPlayerName = CallPlayerFunction(nPlayerIndex, GetName); 

self.tbPlayerList = self.tbPlayerList or {}; 

if (self.tbPlayerList[szPlayerName]) then 
self.tbPlayerList[szPlayerName] = nil 
end 
self.nPlayerCount = self.nPlayerCount - 1; 
end 

function HundredArena:NpcEnter() 
if (self:IsOpen() ~= 1) then 
return 
end 

local nMapId, nX, nY = GetWorldPos() 
SetTask(TSK_LEAVERMAPID, nMapId) 
SetTask(TSK_LEAVERPOSX, nX) 
SetTask(TSK_LEAVERPOSY, nY) 

local nPosX, nPosY = GetRandomAData(tbTrapFile.szEnterMapFile); 

NewWorld(self.nMapId, nPosX/32, nPosY/32) 

end 

function HundredArena:OnEnterMap() 

self:NewPlayer(PlayerIndex); 
	SetDeathScript("\\script\\missions\\bairenleitai\\player_death.lua");

-- script viet hoa By http://tranhba.com  SetAForbitSkill(210, 1) -- script viet hoa By http://tranhba.com  cÊm chØ sö dông khinh c«ng 
DisabledUseTownP(1)-- script viet hoa By http://tranhba.com  kh«ng thÓ trë vÒ thµnh phï 
SetLogoutRV(1); 
DisabledStall(1) -- script viet hoa By http://tranhba.com  bµy s¹p 
SetFightState(0) 
Msg2Player("Xin/mêi dïng khinh c«ng th­îng l«i ®µi tû vâ "); 
end 

function HundredArena:OnLeaveMap() 

local szPlayerName = GetName(); 

local nArenaId = self.tbPlayerList[szPlayerName].nArenaId; 
if (nArenaId and nArenaId ~= 0) then 
if (self.tbPlayerList[szPlayerName].nRight == 1) then 
self.tbArenaList[nArenaId]:PlayerDeath(2); 

else 
self.tbArenaList[nArenaId]:PlayerDeath(1); 

end 

end 

ST_StopDamageCounter(); 
SetDeathScript(""); 
DisabledUseTownP(0) -- script viet hoa By http://tranhba.com  cã thÓ trë vÒ thµnh phï 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); -- script viet hoa By http://tranhba.com  chØ cã ®ang chñ ®éng lóc rêi ®i míi thiÕt trÝ v× 0 
DisabledStall(0) -- script viet hoa By http://tranhba.com  cã thÓ bµy s¹p 
SetFightState(0) -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ chiÕn ®Êu 
SetCurCamp(GetCamp()); 

SetRevPos(GetPlayerRev()) 
SetPKFlag(0); 
self:DelPlayer(PlayerIndex) 
end 

function HundredArena:OnTime() 
local nHour = tonumber(GetLocalDate("%H")); 
local nMin = tonumber(GetLocalDate("%M")); 


if (nHour == 0) then 
self:Close(); 
print("HundredArena:Close") 
return 1 
end 

if (nHour >= 0 and nHour <= 11) then 
print("HundredArena:NoTIme") 
return 1; 
end 

	local t = self.tbTimer.nTimerCount + 1;
self.tbTimer.nTimerCount = t; 
-- script viet hoa By http://tranhba.com  Msg2SubWorld("HundredArena:OnTime:"..t) 
local nPlayerCount = 0; 
local nCurSvrTime = tonumber(GetCurServerTime()); 
local n_mod_t = mod(t, 5); 
if (nMin == 0 or mod(nMin, 5) == 0) then 
for szname, tb in self.tbPlayerList do 

if (tb.nLastServerTime > nCurSvrTime) then 
-- script viet hoa By http://tranhba.com Change request 14/07/2011 - Modified By DinhHQ - 2011 
-- script viet hoa By http://tranhba.com local nExp = 122400 
local nExp = 1e6 
local nOldPlayer = PlayerIndex 
PlayerIndex = tb.nPlayerIndex 
if (tb.nDouble and tb.nDouble > GetCurServerTime()) then 
-- script viet hoa By http://tranhba.com CallPlayerFunction(tb.nPlayerIndex, AddOwnExp, floor(nExp*1.66)); 
if PlayerFunLib:GetTaskDailyCount(self.nTaskExpLimit) < 50 then 
PlayerFunLib:AddTaskDaily(self.nTaskExpLimit, 2) 
CallPlayerFunction(tb.nPlayerIndex, AddOwnExp, floor(nExp*2)); 
end 
else 
if PlayerFunLib:GetTaskDailyCount(self.nTaskExpLimit) < 50 then 
PlayerFunLib:AddTaskDaily(self.nTaskExpLimit, 1) 
CallPlayerFunction(tb.nPlayerIndex, AddOwnExp, nExp); 
end 
end 
-- script viet hoa By http://tranhba.com Change request 17/4/2011 - Modified By DinhHQ - 20110714 
-- script viet hoa By http://tranhba.com local nExpEx = 204000; 
local nExpEx = 2e6; 
if (tb.nRight == 1) then 
if PlayerFunLib:GetTaskDailyCount(self.nTaskExpLimit) < 50 then 
PlayerFunLib:AddTaskDaily(self.nTaskExpLimit, 2) 
CallPlayerFunction(tb.nPlayerIndex, AddOwnExp, nExpEx); 
end 
end 
PlayerIndex = nOldPlayer 
				nPlayerCount = nPlayerCount +1;
else 
local nMapId = GetTask(TSK_LEAVERMAPID); 
local nX = GetTask(TSK_LEAVERPOSX); 
local nY = GetTask(TSK_LEAVERPOSY); 

CallPlayerFunction(tb.nPlayerIndex, Msg2Player,"Thêi gian tr«i qua thËt mau , ng­¬i c¸i g× ho¹t ®éng ®Òu kh«ng cã tham gia , xin/mêi rêi ®i hoµng thµnh ti l«i ®µi "); 
CallPlayerFunction(tb.nPlayerIndex, NewWorld, nMapId,nX,nY); 
end 
end 
end 

if (nMin == 0 or mod(nMin, 30) == 0) then 
local nPosX,nPosY = GetRandomAData(tbTrapFile.szBeautyFile); 
local tbnpc = clone(tbNpcTypeList[11]); 
tbnpc.nMapId = self.nMapId 
tbnpc.nPosX = nPosX; 
tbnpc.nPosY = nPosY; 
tbnpc.tbNpcParam = {}; 
tbnpc.tbNpcParam[1] = t; 

-- script viet hoa By http://tranhba.com  for szname, tb in self.tbPlayerList do 
-- script viet hoa By http://tranhba.com 			nPlayerCount = nPlayerCount +1;
-- script viet hoa By http://tranhba.com  end 

Msg2Map(self.nMapId,"<color=green> cæ tay xuÊt hiÖn mäi ng­êi t¨ng nhanh b­íc ch©n ! <color>"); 
WriteLog(format("BaiRenLeiTai\tCallNPC_GuShou:%d,%d,%d", 
tbnpc.nMapId, tbnpc.nPosX, tbnpc.nPosY)) 
basemission_CallNpc(tbnpc) 
self.nDoubleCount = floor(nPlayerCount*0.2)-- script viet hoa By http://tranhba.com 0.2; 
-- script viet hoa By http://tranhba.com  print("Call Bueaty", self.nDoubleCount, nPlayerCount,t); 
end 

return 1 
end 

-- script viet hoa By http://tranhba.com  kh«ng sö dông 
function HundredArena:Announce(szMsg) 
for name, tb in self.tbPlayerList do 
CallPlayerFunction(tb.nPlayerIndex, Msg2Player, szMsg); 
end 
end 


function HundredArena:AddDoubleState(szPlayerName, nTimes) 
if (self.tbPlayerList[szPlayerName]) then 
		self.tbPlayerList[szPlayerName].nLastServerTime = tonumber(GetCurServerTime()) + HA_MAXSTAYTIME;

if (self.nDoubleCount <= 0) then 
Talk(1, "","Ta mÖt mái , chê ta nghØ ng¬i mét chót ®i "); 
else 

if (self.tbPlayerList[szPlayerName].nDoubleTime ~= nTimes) then 
self.nDoubleCount = self.nDoubleCount - 1; 
				self.tbPlayerList[szPlayerName].nDouble = GetCurServerTime()+HA_DOUBLETIME;
self.tbPlayerList[szPlayerName].nDoubleTime = nTimes; 

Talk(1, "","Nh­ vËy c¸c ng­¬i nghe râ rµng ®i "); 
else 
Talk(1, "","§· häc c«ng v¨n cho c¸c ng­¬i nghe !"); 
end 
end 
else 
Talk(1, "","Ng­¬i kh«ng nªn ë n¬i nµy xuÊt hiÖn ."); 
-- script viet hoa By http://tranhba.com  self:LeaveHundredArena(); 
end 

end 

function HundredArena:Close() 
for i = 1, getn(tbArena_Info) do 
self.tbArenaList[i]:Destroy(); 
end 

Msg2Map(self.nMapId,"H«m nay hoµng thµnh ti l«i ®µi kÕt thóc !"); 
for szname, tb in self.tbPlayerList do 
tb.nArenaId = 0; 
local nMapId = GetTask(TSK_LEAVERMAPID); 
local nX = GetTask(TSK_LEAVERPOSX); 
local nY = GetTask(TSK_LEAVERPOSY); 

CallPlayerFunction(tb.nPlayerIndex, NewWorld, nMapId,nX,nY); 
end 

self.tbTimer.nTimerCount = 0; 
end 


function HundredArena:IsOpen() 
local ntime = tonumber(GetLocalDate("%H%M")); 

if (ntime >= 1200) then 

if (GetLevel() >= 120) then 
return 1; 
else 
Talk(1, "", "<color=yellow>120 cÊp cïng 120 cÊp trë lªn <color> míi cã thÓ tham gia .") 
end 

else 
Talk(1, "","Mçi ngµy khai l«i ®µi thêi gian lµ <color=yellow>12:00 ~ 24:00<color>, ®îi trë l¹i ®i !") 
end 
return 0; 
end 

ArenaField = { 
InPos = {}, 
OutPos = {}, 
}; 

function ArenaField:New(nArenaId) 
local tb = clone(ArenaField); 
tb.nArenaId = nArenaId; 
tb.InPos = clone(tbArena_Info[nArenaId].InPos); 
tb.OutPos = clone(tbArena_Info[nArenaId].OutPos); 
tb.NpcPos = clone(tbArena_Info[nArenaId].NpcPos); 
tb.RevivalPos = clone(tbArena_Info[nArenaId].RevivalPos); 

tb.nGrade = 1; 
tb.nFightState = 0; 
return tb 
end 

function ArenaField:Destroy() 
Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: tranh tµi kÕt thóc , chê ®îi míi dòng sÜ trë thµnh ®µi chñ #", self.nArenaId)); 

if (self.nNpcIndex) then 
DelNpc(self.nNpcIndex); 
end 

self.nNpcIndex = nil 
self:DelTimer(); 
self.Master = nil; -- script viet hoa By http://tranhba.com  ®µi chñ 
self.Visitor = nil; -- script viet hoa By http://tranhba.com  ng­êi khiªu chiÕn 
self.nGrade = 1; 
self.nFightState = 0; 
end 

function ArenaField:DelTimer() 
local id = self.TimerID; 
if (id ~= nil and id > 0) then 
TimerList:DelTimer(id) 

self.TimerID = nil 
end 
end 

function HundredArena:InTrap(index) 
-- script viet hoa By http://tranhba.com  tb.Master = {}; -- script viet hoa By http://tranhba.com  ®µi chñ 
-- script viet hoa By http://tranhba.com  tb.Visitor = {}; -- script viet hoa By http://tranhba.com  ng­êi khiªu chiÕn 
-- script viet hoa By http://tranhba.com  kh«ng cã ®µi chñ 
local tb_arena = self.tbArenaList[index] 
local player = Player:New(PlayerIndex); 

if (tb_arena.nFightState == 0) then 
tb_arena.nGrade = 1; 

tb_arena.Master = {}; 
tb_arena.Master.szPlayerName = player:GetName(); 
tb_arena.Master.nPlayerIndex = PlayerIndex; 

self.tbPlayerList[tb_arena.Master.szPlayerName].nArenaId = tb_arena.nArenaId; 
self.tbPlayerList[tb_arena.Master.szPlayerName].nRight = 1; 
self.tbPlayerList[tb_arena.Master.szPlayerName].nGrade = 1; 

SetTempRevPos(self.nMapId, tb_arena.RevivalPos[1]*32, tb_arena.RevivalPos[2]*32) 
SetTmpCamp(1); 
SetCurCamp(4); 

Msg2Map(self.nMapId, format(" l«i ®µi %d: <color=yellow>%s<color> trë thµnh ®µi chñ , chê ®îi ng­êi kh¸c khiªu chiÕn !", tb_arena.nArenaId, tb_arena.Master.szPlayerName)); 

tb_arena.TimerID = TimerList:AddTimer(tb_arena, tbTimerInfo.nApply, 1); 

tb_arena.nFightState = 1; 


WriteLog(format("BaiRenLeiTai\tAccount:%s\tName:%s\tBecome Master At ArenaField:%d", 
player:GetAccount(),tb_arena.Master.szPlayerName, tb_arena.nArenaId)) 
elseif (tb_arena.nFightState == 1) then -- script viet hoa By http://tranhba.com  cã ®µi chñ kh«ng cã ng­êi khiªu chiÕn 

if (tb_arena.Master.szPlayerName == player:GetName()) then 
tb_arena:Leave(player); 
tb_arena:Destroy(); 
return 
end 

tb_arena.Visitor = {}; 
tb_arena.Visitor.szPlayerName = player:GetName(); 
tb_arena.Visitor.nPlayerIndex = PlayerIndex; 

self.tbPlayerList[tb_arena.Visitor.szPlayerName].nArenaId = tb_arena.nArenaId; 
self.tbPlayerList[tb_arena.Visitor.szPlayerName].nRight = 2; 

SetTempRevPos(self.nMapId, tb_arena.RevivalPos[1]*32, tb_arena.RevivalPos[2]*32) 
SetTmpCamp(2); 
SetCurCamp(4); 

tb_arena:DelTimer(); 
tb_arena.TimerID = TimerList:AddTimer(tb_arena, tbTimerInfo.nPrepare, 2); 
tb_arena.nFightState = 2; 

Msg2Map(self.nMapId, format(" l«i ®µi %d: ®µi chñ lµ <color=yellow>%s<color>, ng­êi khiªu chiÕn lµ <color=yellow>%s<color>, thø %d trµng ®èi kh¸ng nhanh chãng b¾t ®Çu !", 
tb_arena.nArenaId, tb_arena.Master.szPlayerName, tb_arena.Visitor.szPlayerName, tb_arena.nGrade)); 

Msg2Player("3 gi©y sau tranh tµi b¾t ®Çu !"); 

CallPlayerFunction(tb_arena.Master.nPlayerIndex, Msg2Player, "3 gi©y sau nµy tranh tµi b¾t ®Çu !"); 

WriteLog(format("BaiRenLeiTai\tAccount:%s\tName:%s\tBecome Visitor At ArenaField:%d,Master:%s", 
player:GetAccount(), player:GetName(), tb_arena.nArenaId, tb_arena.Master.szPlayerName)) 
else 
Msg2Player(" l«i ®µi ®· b¾t ®Çu tû vâ , xin ®îi trø thø tù ghi danh ."); 
tb_arena:Leave(player); 
return 
end 

tb_arena:Enter(player); 
end 

function ArenaField:Leave(player) 
local n_idx = random(getn(self.OutPos)); 
local x,y = self.OutPos[n_idx][1], self.OutPos[n_idx][2]; 
player:SetPos(x,y); 
player:SetFightState(0); 

CallPlayerFunction(player.m_PlayerIndex, SetPKFlag,1) 
CallPlayerFunction(player.m_PlayerIndex, RestoreLife) 
CallPlayerFunction(player.m_PlayerIndex, RestoreMana); 
CallPlayerFunction(player.m_PlayerIndex, RestoreStamina); 
CallPlayerFunction(player.m_PlayerIndex, ST_StopDamageCounter); 
CallPlayerFunction(player.m_PlayerIndex, SetTmpCamp, 0); 
-- script viet hoa By http://tranhba.com CallPlayerFunction(player.m_PlayerIndex, SetCurCamp, 0); 

HundredArena.tbPlayerList[player:GetName()].nArenaId = 0; 
HundredArena.tbPlayerList[player:GetName()].nGrade = 0; 
HundredArena.tbPlayerList[player:GetName()].nRight = 0; 
	HundredArena.tbPlayerList[player:GetName()].nLastServerTime = tonumber(GetCurServerTime()) + HA_MAXSTAYTIME;

player:Msg2Player("Ng­¬i ®· rêi ®i l«i ®µi "); 
end 

function ArenaField:Enter(player) 
local x,y = self.InPos[1], self.InPos[2]; 
player:SetPos(x,y); 
player:SetFightState(0); 
CallPlayerFunction(player.m_PlayerIndex, RestoreLife) 
CallPlayerFunction(player.m_PlayerIndex, RestoreMana); 
CallPlayerFunction(player.m_PlayerIndex, RestoreStamina); 
	HundredArena.tbPlayerList[player:GetName()].nLastServerTime = tonumber(GetCurServerTime()) + HA_MAXSTAYTIME;

player:Msg2Player("Ng­¬i ®· tiÕn vµo l«i ®µi "); 
end; 

function ArenaField:OnTime(nFightState) 
if (nFightState == 0) then 
return 0 
end 

if (nFightState == 1) then -- script viet hoa By http://tranhba.com  ®µi chñ chê ®îi 30 gi©y kÕt thóc 
-- script viet hoa By http://tranhba.com  bµy tá kh«ng cã khiªu chiÕn ph­¬ng , AddNpc 
self:CallFightNpc(); 

Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: ®µi chñ lµ <color=yellow>%s<color>, kh«ng cã ai khiªu chiÕn , hÖ thèng chØ ®Þnh NPC tham chiÕn !", 
self.nArenaId, self.Master.szPlayerName, self.nGrade)); 
self.TimerID = TimerList:AddTimer(self, tbTimerInfo.nPrepare, 2); 

CallPlayerFunction(self.Master.nPlayerIndex, Msg2Player, "3 gi©y sau tranh tµi b¾t ®Çu !"); 
self.nFightState = 2; 
return 0 
elseif (nFightState == 2) then -- script viet hoa By http://tranhba.com  chuÈn bÞ thêi gian kÕt thóc 
-- script viet hoa By http://tranhba.com  cã , SetFightState , ®¸nh , b¾t ®Çu tæn th­¬ng l­îng 
-- script viet hoa By http://tranhba.com  b¾t ®Çu tranh tµi tÝnh giê khÝ 
if (self.Master) then 
CallPlayerFunction(self.Master.nPlayerIndex, SetFightState, 1); 
CallPlayerFunction(self.Master.nPlayerIndex, SetPKFlag, 2); 
CallPlayerFunction(self.Master.nPlayerIndex, SetTmpCamp, 1); 

CallPlayerFunction(self.Master.nPlayerIndex, ST_StartDamageCounter); 
			HundredArena.tbPlayerList[self.Master.szPlayerName].nLastServerTime = tonumber(GetCurServerTime()) + HA_MAXSTAYTIME;
end 
if (self.Visitor) then 
CallPlayerFunction(self.Visitor.nPlayerIndex, SetFightState, 1); 
CallPlayerFunction(self.Visitor.nPlayerIndex, SetPKFlag, 2); 
CallPlayerFunction(self.Visitor.nPlayerIndex, SetTmpCamp, 2); 

CallPlayerFunction(self.Visitor.nPlayerIndex, ST_StartDamageCounter); 
			HundredArena.tbPlayerList[self.Visitor.szPlayerName].nLastServerTime = tonumber(GetCurServerTime()) + HA_MAXSTAYTIME;
end 

Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: xÕp h¹ng tranh tµi thø %d b¾t ®Çu !", self.nArenaId, self.nGrade)); 

self.TimerID = TimerList:AddTimer(self, tbTimerInfo.nFight, 3); 

return 0 
elseif (nFightState == 3) then -- script viet hoa By http://tranhba.com  3 phót tranh tµi thêi gian kÕt thóc 
self:TimeClose() 
return 0; 
end 
end 

function ArenaField:CallFightNpc() 
local n_idx = random(1, 10); 
local nLevel = floor((self.nGrade - 1)/ 10); 
if (nLevel < 0 or nLevel >=10) then 
nLevel = 9; 
end 
local tb_npc = clone(tbNpcTypeList[n_idx]); 
	tb_npc.nLevel = 90+nLevel;
tb_npc.szScriptPath = tbNpcFile.szFightNpc; 
tb_npc.tbNpcParam = {self.nArenaId}; 

local nMapIndex = SubWorldID2Idx(HundredArena.nMapId) 
local nNpcIndex = AddNpcEx( 
tb_npc.nNpcId, -- script viet hoa By http://tranhba.com npc Id 
tb_npc.nLevel or 90, -- script viet hoa By http://tranhba.com  cÊp bËc 
tb_npc.nSeries or random(0,4), -- script viet hoa By http://tranhba.com  ngò hµnh 
nMapIndex, -- script viet hoa By http://tranhba.com  b¶n ®å 
self.InPos[1]*32, -- script viet hoa By http://tranhba.com  X täa ®é 
self.InPos[2]*32, -- script viet hoa By http://tranhba.com  Y täa ®é 
tb_npc.bNoRevive or 1, -- script viet hoa By http://tranhba.com  kh«ng nÆng sinh 
tb_npc.szName, -- script viet hoa By http://tranhba.com  tªn 
tb_npc.nIsboss or 1 
); -- script viet hoa By http://tranhba.com  cã hay kh«ng BOSS 
if nNpcIndex <= 0 then 
print("AddNpcError!!!") 
return nil 
end 

self.nNpcIndex = nNpcIndex; 

if tb_npc.szDeathScript then 
SetNpcDeathScript(nNpcIndex, tb_npc.szDeathScript); 
end 

if tb_npc.szScriptPath then 
SetNpcScript(nNpcIndex, tb_npc.szScriptPath) 
end 
if tb_npc.nTime then 
SetNpcTimer(nNpcIndex, 18*tb_npc.nTime); 
end 

if tb_npc.tbNpcParam then 
for i =1, getn(tb_npc.tbNpcParam) do 
if tb_npc.tbNpcParam[i] then 
SetNpcParam(nNpcIndex, i, tb_npc.tbNpcParam[i]) 
end 
end 
end 

end 

function ArenaField:IsMaxGrade(nGrade) 

local n_last_grade = self.nGrade - 1; 
local n_mod_t = mod(n_last_grade, 10); 
if (n_last_grade < 100) then 
if (n_mod_t == 0 and self.Master and self.nArenaId == 1) then 
local sz_msg = format("<color=yellow>%s<color> ë hoµng thµnh ti l«i ®µi ®· liªn tôc chiÕn th¾ng <color=yellow>%d <color> ng­êi khiªu chiÕn , vâ c«ng thËt lµ th©m hËu ", 
self.Master.szPlayerName, n_last_grade ); 
			RemoteExc("\\script\\event\\msg2allworld.lua", "battle_msg2allworld", {sz_msg});
end 

return 0 
else 

if (self.Master) then 

if (self.nArenaId == 1) then 
local sz_msg = format("<color=yellow>%s<color> ë hoµng thµnh ti l«i ®µi ®· liªn tôc chiÕn th¾ng <color=yellow>%d<color> ng­êi khiªu chiÕn , ë trªn giang hå ®· thµnh lµm mét c¸ truyÒn thuyÕt ", 
self.Master.szPlayerName, 100 ); 

				RemoteExc("\\script\\event\\msg2allworld.lua", "battle_msg2allworld", {sz_msg});
end 

local player = Player:New(self.Master.nPlayerIndex) 
self:Leave(player); 
end 

if (self.Visitor) then 
local player = Player:New(self.Visitor.nPlayerIndex) 
self:Leave(player); 
end 
self:Destroy(); 
return 1; 
end 
end 

function ArenaField:TimeClose() 
self.nFightState = 4; -- script viet hoa By http://tranhba.com  tranh tµi kÕt thóc kÕt to¸n ing 
if (self.Master and self.Visitor) then 
local n_master_damage = CallPlayerFunction(self.Master.nPlayerIndex, ST_GetDamageCounter); 
local n_visitor_damage = CallPlayerFunction(self.Visitor.nPlayerIndex, ST_GetDamageCounter); 

if (n_master_damage <= n_visitor_damage) then 
local sz_msg = format(" l«i ®µi %d: tranh tµi kÕt thóc # ®µi chñ #<color=yellow>%s<color>, chÞu ®ùng lùc s¸t th­¬ng :<color=yellow>"..n_master_damage.."<color>;" 
.." ng­êi khiªu chiÕn :<color=yellow>%s<color>, chÞu ®ùng lùc s¸t th­¬ng :<color=yellow>"..n_visitor_damage.."<color>. ®µi chñ th¾ng lîi !", 
self.nArenaId, self.Master.szPlayerName, self.Visitor.szPlayerName); 
Msg2Map(HundredArena.nMapId, sz_msg); 

			self.nGrade = self.nGrade + 1;

if (self:IsMaxGrade() == 1) then 
return 
end 

CallPlayerFunction(self.Master.nPlayerIndex, RestoreLife) 
CallPlayerFunction(self.Master.nPlayerIndex, RestoreMana); 
CallPlayerFunction(self.Master.nPlayerIndex, RestoreStamina); 
CallPlayerFunction(self.Master.nPlayerIndex, ST_StopDamageCounter) 
CallPlayerFunction(self.Master.nPlayerIndex, SetFightState, 0) 
CallPlayerFunction(self.Master.nPlayerIndex, SetPKFlag, 0) 

local player = Player:New(self.Visitor.nPlayerIndex) 


HundredArena.tbPlayerList[self.Visitor.szPlayerName].nArenaId = 0; 
HundredArena.tbPlayerList[self.Visitor.szPlayerName].nRight = 0; 
HundredArena.tbPlayerList[self.Visitor.szPlayerName].nGrade = 0; 

self:Leave(player); 

self.Visitor = nil; -- script viet hoa By http://tranhba.com  ng­êi khiªu chiÕn 

Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: ®µi chñ lµ <color=yellow>%s<color>, xÕp h¹ng tranh tµi thø %d, chê kh¸c nhµ ch¬i khiªu chiÕn !", 
self.nArenaId, self.Master.szPlayerName, self.nGrade)); 

self.TimerID = TimerList:AddTimer(self, tbTimerInfo.nApply, 1); 
self.nFightState = 1; -- script viet hoa By http://tranhba.com  l¹i b¾t ®Çu 

else 
local sz_msg = " l«i ®µi %d: tranh tµi kÕt thóc # ®µi chñ :<color=yellow>%s<color>, chÞu ®ùng lùc s¸t th­¬ng :<color=yellow>"..n_master_damage.."<color>;" 
.." ng­êi khiªu chiÕn :<color=yellow>%s<color>, chÞu ®ùng lùc s¸t th­¬ng :<color=yellow>"..n_visitor_damage.."<color>, ng­êi khiªu chiÕn th¾ng lîi !" 
Msg2Map(HundredArena.nMapId, format(sz_msg, self.nArenaId, self.Master.szPlayerName, self.Visitor.szPlayerName)); 

self.nGrade = 1; 

local szLoser = self.Master.szPlayerName; 
HundredArena.tbPlayerList[self.Master.szPlayerName].nArenaId = 0; 
HundredArena.tbPlayerList[self.Master.szPlayerName].nRight = 0; 
HundredArena.tbPlayerList[self.Master.szPlayerName].nGrade = 0; 

local player = Player:New(self.Master.nPlayerIndex) 
self:Leave(player); 

self.Master = {szPlayerName = self.Visitor.szPlayerName, nPlayerIndex = self.Visitor.nPlayerIndex}; 

-- script viet hoa By http://tranhba.com  HundredArena.tbPlayerList[self.Visitor.szPlayerName].nArenaId = 0; 
HundredArena.tbPlayerList[self.Visitor.szPlayerName].nRight = 1; 
HundredArena.tbPlayerList[self.Visitor.szPlayerName].nGrade = 1; 
self.Visitor = nil; 

CallPlayerFunction(self.Master.nPlayerIndex, RestoreLife) 
CallPlayerFunction(self.Master.nPlayerIndex, RestoreMana); 
CallPlayerFunction(self.Master.nPlayerIndex, RestoreStamina); 
CallPlayerFunction(self.Master.nPlayerIndex, ST_StopDamageCounter) 
CallPlayerFunction(self.Master.nPlayerIndex, SetFightState, 0); 
CallPlayerFunction(self.Master.nPlayerIndex, SetPKFlag, 0); 

Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: <color=yellow>%s<color> chiÕn th¾ng <color=yellow>%s<color>, trë thµnh míi ®µi chñ !", 
self.nArenaId, self.Master.szPlayerName, szLoser)); 

Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: ®µi chñ lµ <color=yellow>%s<color>, xÕp h¹ng tranh tµi thø %d , chê ®îi kh¸c nhµ ch¬i khiªu chiÕn !", 
self.nArenaId, self.Master.szPlayerName, self.nGrade)); 
self.TimerID = TimerList:AddTimer(self, tbTimerInfo.nApply, 1); 
self.nFightState = 1; -- script viet hoa By http://tranhba.com  l¹i b¾t ®Çu 

end 
elseif (self.Master) then -- script viet hoa By http://tranhba.com  ®èi thñ lµ NPC 
HundredArena.tbPlayerList[self.Master.szPlayerName].nArenaId = 0; 
HundredArena.tbPlayerList[self.Master.szPlayerName].nRight = 0; 
HundredArena.tbPlayerList[self.Master.szPlayerName].nGrade = 0; 

Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: ®µi chñ lµ <color=yellow>, bÞ NPC ®¸nh b¹i !", 
self.nArenaId, self.Master.szPlayerName, self.nGrade)); 

-- script viet hoa By http://tranhba.com  CallPlayerFunction(self.Master.nPlayerIndex, Msg2Player, format("Thø %d ®æi phiªn l«i ®µi b¾t ®Çu , chê ®îi ng­êi khiªu chiÕn . ", self.nGrade)) 
local player = Player:New(self.Master.nPlayerIndex) 
self:Leave(player); 

self:Destroy() 
else 
self:Destroy() 
end 
end 

function ArenaField:NpcDeath() 
self.nFightState = 4; 
Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: ®µi chñ <color=yellow>%s<color> chiÕn th¾ng thø %d", self.nArenaId, self.Master.szPlayerName, self.nGrade)); 

self:DelTimer(); 
	self.nGrade = self.nGrade + 1;

if (self:IsMaxGrade() == 1) then 
return 
end 

CallPlayerFunction(self.Master.nPlayerIndex, RestoreLife) 
CallPlayerFunction(self.Master.nPlayerIndex, RestoreMana); 
CallPlayerFunction(self.Master.nPlayerIndex, RestoreStamina); 
CallPlayerFunction(self.Master.nPlayerIndex, ST_StopDamageCounter) 
CallPlayerFunction(self.Master.nPlayerIndex, SetFightState, 0) 
CallPlayerFunction(self.Master.nPlayerIndex, SetPKFlag, 0) 

HundredArena.tbPlayerList[self.Master.szPlayerName].nGrade = self.nGrade; 
Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: ®µi chñ lµ <color=yellow>%s<color>, xÕp h¹ng tranh tµi thø %d, chê kh¸c nhµ ch¬i tíi khiªu chiÕn !", 
self.nArenaId, self.Master.szPlayerName, self.nGrade)); 
self.TimerID = TimerList:AddTimer(self, tbTimerInfo.nApply, 1); 
self.nFightState = 1; -- script viet hoa By http://tranhba.com  l¹i b¾t ®Çu 
end 

function ArenaField:PlayerDeath(nType) 
self.nFightState = 4; 

self:DelTimer(); 
if (nType == 1) then -- script viet hoa By http://tranhba.com  ®µi chñ th¾ng lîi 
		self.nGrade = self.nGrade + 1;
local szLoser = " v« hÖ " 
if (self.Visitor) then 
szLoser = self.Visitor.szPlayerName; 
HundredArena.tbPlayerList[szLoser].nArenaId = 0; 
HundredArena.tbPlayerList[szLoser].nRight = 0; 
HundredArena.tbPlayerList[szLoser].nGrade = 0; 
local player = Player:New(self.Visitor.nPlayerIndex); 
self:Leave(player); 

self.Visitor = nil; -- script viet hoa By http://tranhba.com  ng­êi khiªu chiÕn 
end 

if (self.Master) then 
Msg2Map(HundredArena.nMapId,format(" l«i ®µi %d: ng­êi khiªu chiÕn <color=yellow>%s<color> rêi ®i l«i ®µi <color=yellow>%s<color> th¾ng lîi .", self.nArenaId, szLoser, self.Master.szPlayerName)); 

if (self:IsMaxGrade() == 1) then 
return 
end 

CallPlayerFunction(self.Master.nPlayerIndex, RestoreLife) 
CallPlayerFunction(self.Master.nPlayerIndex, RestoreMana); 
CallPlayerFunction(self.Master.nPlayerIndex, RestoreStamina); 
CallPlayerFunction(self.Master.nPlayerIndex, ST_StopDamageCounter) 
CallPlayerFunction(self.Master.nPlayerIndex, SetFightState, 0); 
CallPlayerFunction(self.Master.nPlayerIndex, SetPKFlag, 0); 

HundredArena.tbPlayerList[self.Master.szPlayerName].nGrade = self.nGrade; 
Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: ®µi chñ lµ <color=yellow>%s<color>, xÕp h¹ng tranh tµi thø %d , chê ®îi kh¸c nhµ ch¬i khiªu chiÕn !", 
self.nArenaId, self.Master.szPlayerName, self.nGrade)); 
self.TimerID = TimerList:AddTimer(self, tbTimerInfo.nApply, 1); 
self.nFightState = 1; -- script viet hoa By http://tranhba.com  l¹i b¾t ®Çu 

end 

elseif (nType == 2) then -- script viet hoa By http://tranhba.com  ®µi chñ thÊt b¹i 
self.nGrade = 1; 

local szLoser = " v« hÖ " 
if (self.Master) then 

local player = Player:New(self.Master.nPlayerIndex); 
szLoser = player:GetName(); 
HundredArena.tbPlayerList[szLoser].nArenaId = 0; 
HundredArena.tbPlayerList[szLoser].nRight = 0; 
HundredArena.tbPlayerList[szLoser].nGrade = 0; 
self:Leave(player); 
end 

if (self.Visitor) then -- script viet hoa By http://tranhba.com  nÕu nh­ ng­êi khiªu chiÕn lµ Player 
self.Master = {szPlayerName = self.Visitor.szPlayerName, nPlayerIndex = self.Visitor.nPlayerIndex}; 
self.Visitor = nil; 

CallPlayerFunction(self.Master.nPlayerIndex, RestoreLife) 
CallPlayerFunction(self.Master.nPlayerIndex, RestoreMana); 
CallPlayerFunction(self.Master.nPlayerIndex, RestoreStamina); 
CallPlayerFunction(self.Master.nPlayerIndex, ST_StopDamageCounter) 
CallPlayerFunction(self.Master.nPlayerIndex, SetFightState, 0) 
CallPlayerFunction(self.Master.nPlayerIndex, SetPKFlag, 0); 
CallPlayerFunction(self.Master.nPlayerIndex, SetTmpCamp, 1); 
HundredArena.tbPlayerList[self.Master.szPlayerName].nRight = 1; 
HundredArena.tbPlayerList[self.Master.szPlayerName].nGrade = self.nGrade; 

Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: <color=yellow>%s<color> chiÕn th¾ng <color=yellow>%s<color>, trë thµnh míi ®µi chñ !", 
self.nArenaId, self.Master.szPlayerName, szLoser)); 
Msg2Map(HundredArena.nMapId, format(" l«i ®µi %d: ®µi chñ lµ <color=yellow>%s<color>, xÕp h¹ng tranh tµi thø %d , chê ®îi kh¸c nhµ ch¬i khiªu chiÕn !", 
self.nArenaId, self.Master.szPlayerName, self.nGrade)); 
self.TimerID = TimerList:AddTimer(self, tbTimerInfo.nApply, 1); 
self.nFightState = 1; -- script viet hoa By http://tranhba.com  l¹i b¾t ®Çu 
else -- script viet hoa By http://tranhba.com  ng­êi khiªu chiÕn lµ NPC 

self:Destroy(); 
end 
else 
HundredArena.tbPlayerList[self.Master.szPlayerName].nRight = 0; 
HundredArena.tbPlayerList[self.Master.szPlayerName].nGrade = 0; 
HundredArena.tbPlayerList[self.Master.szPlayerName].nArenaId = 0; 
local Master = Player:New(self.Master.nPlayerIndex); 
self:Leave(Master); 

self:Destroy(); 
end 
end 

ArenaNpc = { 
nParamArena = 1, 
}; 

function ArenaNpc:GetNpcArena(nNpcIndex) 
return GetNpcParam(nNpcIndex, self.nParamArena); 
end 

function ArenaNpc:SetNpcParam(nNpcIndex, nArenaId) 
return SetNpcParam(nNpcIndex, self.nParamArena, nArenaId); 
end 
