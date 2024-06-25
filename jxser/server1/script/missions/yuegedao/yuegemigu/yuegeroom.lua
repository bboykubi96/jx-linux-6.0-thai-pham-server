Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\player.lua")

YueGeRoom = {} 
YueGeRoom.nMapId = 969 
YueGeRoom.tbNpcList = { 
[0] = { 
szName = " th¸ng ca ®¶o chñ ", 
nLevel = 95, 
nNpcId = 1849, 
		szScriptPath = "\\script\\missions\\yuegedao\\yuegemigu\\yuegedaozhu.lua",
}, 
[1] = { 
szName = " th¸ng ca ®¶o chñ ", 
nLevel = 95, 
nNpcId = 1850, 
nIsboss = 1, 
		szScriptPath = "\\script\\missions\\yuegedao\\yuegemigu\\daozhudeath.lua",
}, 
[2] = { 
szName = " th¸ng ca ®¶o chñ ", 
nLevel = 95, 
nNpcId = 1851, 
nIsboss = 1, 
tbNpcParam = {}, 
		szScriptPath = "\\script\\missions\\yuegedao\\yuegemigu\\daozhudeath.lua",
}, 
[3] = { 
szName = " th¸ng ca ®¶o chñ ", 
nLevel = 95, 
nNpcId = 1852, 
nIsboss = 1, 
tbNpcParam = {}, 
nTime = 20, 
		szScriptPath = "\\script\\missions\\yuegedao\\yuegemigu\\daozhudeath.lua",
}, 
[4] = { 
szName = " th¸ng ca ®¶o chñ ", 
nLevel = 95, 
nNpcId = 1849, 
		szScriptPath = "\\script\\missions\\yuegedao\\yuegemigu\\yuegedaozhu.lua",
}, 
} 

function YueGeRoom:RecordNpcId(nNpcIndex) 
self.nNpcId = nNpcIndex 
end 

function YueGeRoom:CallNpcEx(tbNpc, nMapId, nPosX, nPosY) 
nMapId = nMapId or tbNpc.nMapId 
nPosX = nPosX or tbNpc.nPosX 
nPosY = nPosY or tbNpc.nPosY 
local nMapIndex = SubWorldID2Idx(nMapId) 
if nMapIndex >= 0 then 
local nNpcIndex = AddNpcEx( 
tbNpc.nNpcId, -- script viet hoa By http://tranhba.com npc Id 
tbNpc.nLevel or 1, -- script viet hoa By http://tranhba.com  cÊp bËc 
tbNpc.nSeries or random(0,4), -- script viet hoa By http://tranhba.com  ngò hµnh 
nMapIndex, -- script viet hoa By http://tranhba.com  b¶n ®å 
nPosX, -- script viet hoa By http://tranhba.com  X täa ®é 
nPosY, -- script viet hoa By http://tranhba.com  Y täa ®é 
tbNpc.bNoRevive or 1, -- script viet hoa By http://tranhba.com  kh«ng nÆng sinh 
tbNpc.szName, -- script viet hoa By http://tranhba.com  tªn 
tbNpc.nIsboss or 0 
) -- script viet hoa By http://tranhba.com  cã hay kh«ng BOSS 
if nNpcIndex <= 0 then 
return nil 
end 
if tbNpc.szDeathScript then 
SetNpcDeathScript(nNpcIndex, tbNpc.szDeathScript) 
end 
if tbNpc.szScriptPath then 
SetNpcScript(nNpcIndex, tbNpc.szScriptPath) 
end 
if tbNpc.nTime then 
SetNpcTimer(nNpcIndex, 18*tbNpc.nTime); 
end 
if tbNpc.nCurCamp then 
SetNpcCurCamp(nNpcIndex, tbNpc.nCurCamp) 
end 
if tbNpc.tbNpcParam then 
for i =1, getn(tbNpc.tbNpcParam) do 
if tbNpc.tbNpcParam[i] then 
SetNpcParam(nNpcIndex, i, tbNpc.tbNpcParam[i]) 
end 
end 
end 
if tbNpc.pCallBack then 
tbNpc:pCallBack(nNpcIndex) 
end 
return nNpcIndex 
else 
return nil 
end 
end 

function YueGeRoom:_TaskStepAdd() 
local TSK_LV150_SKILL = 2885 
local nPlayerIndex = SearchPlayer(self.szPlayerName) 
if nPlayerIndex == nil or nPlayerIndex <= 0 then 
return 
end 
local nTaskValue = CallPlayerFunction(nPlayerIndex, GetTask, TSK_LV150_SKILL) 
  CallPlayerFunction(nPlayerIndex, SetTask, TSK_LV150_SKILL, nTaskValue+1*100)
CallPlayerFunction(nPlayerIndex, SyncTaskValue, TSK_LV150_SKILL) 
CallPlayerFunction(nPlayerIndex, Msg2Player, "<color=yellow> tiÕp tôc ®Õn th¸ng ca ®¶o , cïng ®¶o chñ ®èi tho¹i , bÊt kÓ nhiÒu nguy hiÓm <color>") 
end 

function YueGeRoom:ChangeNpc(nNpcIndex, nIsDeath) 
local TSK_LV150_SKILL = 2885 
local TARGET_150SKILL_TASKSTATE = 12 
local BOSS_STATE = 4 
	local nState = GetNpcParam(nNpcIndex, 2) + 1
local tbNpc = self.tbNpcList[nState] 
tbNpc.tbNpcParam = {} 
tbNpc.tbNpcParam[1] = GetNpcParam(nNpcIndex, 1) 
tbNpc.tbNpcParam[2] = nState -- script viet hoa By http://tranhba.com  Npc h×nh th¸i 
if nIsDeath ~= 1 then 
DelNpc(nNpcIndex) 
end 
local nNewNpcIndex = self:CallNpcEx(tbNpc, self.nMapId, self.tbNpcPos[1], self.tbNpcPos[2]) 

self:RecordNpcId(nNewNpcIndex) 
local nPlayerIndex = SearchPlayer(self.szPlayerName) 
local nTaskValue = CallPlayerFunction(nPlayerIndex, GetTask, TSK_LV150_SKILL) 
nTaskValue = mod(floor(nTaskValue/100), 100) 
if nState == BOSS_STATE and nTaskValue == TARGET_150SKILL_TASKSTATE then 
self:_TaskStepAdd() 
end 
end 

function YueGeRoom:Init(szPlayerName, nRoomId, tbNpcPos) 
self.nRoomId = nRoomId 
self.nNpcId = nil 
self.tbNpcPos = tbNpcPos 
self.szPlayerName = szPlayerName 
self.nTimerId = TimerList:AddTimer(self, 3 * 60 * 18) 
self.nStayTime = 15 -- script viet hoa By http://tranhba.com  phót 
local tbNpc = self.tbNpcList[0] 
tbNpc.tbNpcParam = {} 
tbNpc.tbNpcParam[1] = nRoomId 
tbNpc.tbNpcParam[2] = 0 -- script viet hoa By http://tranhba.com  Npc h×nh th¸i 
local nNewNpcIndex = self:CallNpcEx(tbNpc, self.nMapId, self.tbNpcPos[1], self.tbNpcPos[2]) 
self:RecordNpcId(nNewNpcIndex) 
local nPlayerIndex = SearchPlayer(self.szPlayerName) 
CallPlayerFunction(nPlayerIndex, Msg2Player, "<color=yellow> ng­¬i cã thÓ ë l¹i th¸ng ca mËt cèc 15 phót , xin/mêi ®¹i hiÖp n¾m chÆc thêi gian ! <color>") 
end 

function YueGeRoom:OnTime() 
self.nStayTime = self.nStayTime - 3 
local nPlayerIndex = SearchPlayer(self.szPlayerName) 
if self.nStayTime <= 0 then 
self.nTimerId = nil 
CallPlayerFunction(nPlayerIndex, NewWorld, 968, 1566, 2836) 
CallPlayerFunction(nPlayerIndex, Msg2Player, "<color=yellow> thêi gian ®· dïng xong , ng­¬i cÇn rêi ®i th¸ng ca mËt cèc <color>") 
return 0 
end 
CallPlayerFunction(nPlayerIndex, Msg2Player, format("Ng­¬i cßn cã thÓ ë l¹i th¸ng ca mËt cèc <color=yellow>%d phót <color>", self.nStayTime)) 
return 1 
end 

function YueGeRoom:New(szPlayerName, nRoomId, tbNpcPos) 
local tb = {} 
for key, value in self do 
tb[key] = value 
end 
tb:Init(szPlayerName, nRoomId, tbNpcPos) 
return tb 
end 

function YueGeRoom:Destroy() 
self.nRoomId = nil 
self.tbNpcPos = nil 
self.szPlayerName = nil 
if self.nNpcId ~= nil and self.nNpcId > 0 then 
DelNpc(self.nNpcId) 
self.nNpcId = nil 
end 
if self.nTimerId ~= nil and self.nTimerId > 0 then 
		local tbTimerList = DynamicExecute("\\script\\lib\\timerlist.lua", "getglobal", "TimerList")	
tbTimerList:DelTimer(self.nTimerId) 
self.nTimerId = nil 
end 
end
