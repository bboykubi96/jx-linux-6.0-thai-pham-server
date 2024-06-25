Include("\\script\\missions\\zhaojingling\\game\\game.lua")
Include("\\script\\lib\\objbuffer_head.lua")

Game.nInterval = 15 -- script viet hoa By http://tranhba.com  ®¬n vÞ gi©y 
Game.nPassTime = 0 -- script viet hoa By http://tranhba.com  ®· qua bao nhiªu thêi gian , ®¬n vÞ gi©y 
Game.nRemindInterval = 30 -- script viet hoa By http://tranhba.com  hÖ thèng mçi 30 gi©y ®Ò kú nhµ ch¬i ®øng hµng cïng t×m ®­îc kh«i lçi méc nh©n ®Ých sè l­îng 

local szRemoteScript = "\\script\\event\\zhaojingling\\event.lua"

function Game:InitTimer() 
if self.nTimeIndex then 
DelTimer(self.nTimeIndex) 
end 
self.nPassTime = 0 
self.nTimeIndex = AddTimer(self.nInterval * 18, "Game:OnTime", 0) 
end 

function Game:OnTime(nTimerId, nParam) 
	self.nPassTime = self.nPassTime + self.nInterval
local nTimeDis = self.nPassTime - GAMETIME * 60 
local nValue = mod(self.nPassTime, self.nRemindInterval) 
if nValue == 0 then 
self:SortPaiMing(nTimeDis) 
end 

if nTimeDis >= 0 then 
-- script viet hoa By http://tranhba.com  tranh tµi kÕt thóc , dõng l¹i tÝnh giê khÝ 
self:Over() 
return 0, 0 
end 

local nNotAddMuRen = 0 
if self.nPassTime == self.nInterval then 
-- script viet hoa By http://tranhba.com  tranh tµi b¾t ®Çu tr­íc 15 gi©y ®Ých thêi ®iÓm kh«ng thªm t¸i kh«i lçi méc nh©n 
nNotAddMuRen = 1 
end 

if self.nPassTime >= (GAMETIME * 60 - self.nRemindInterval) then 
-- script viet hoa By http://tranhba.com  tranh tµi cuèi cïng 30 gi©y kh«ng thªm t¸i kh«i lçi méc nh©n 
nNotAddMuRen = 1 
end 

if nNotAddMuRen ~= 1 then 
self:AddAllMuRen() -- script viet hoa By http://tranhba.com  mçi qu¸ 15 gi©y thªm t¸i mét lÇn kh«i lçi méc nh©n 
end 
return self.nInterval * 18, 0 
end 

function Game:SortPaiMing(nTimeDis) 
if self.tbPlayer == nil then 
return 
end 
for key, value in self.tbPlayer do 
self:SortPaiMingOneMap(key, value, nTimeDis) 
end 
end 

function Game:SortPaiMingOneMap(nMapId, tbMapPlayer, nTimeDis) 
for key, value in tbMapPlayer do 
self:SortPaiMingOneRoom(nMapId, value, nTimeDis) 
end 
end 

function Game:SortPaiMingOneRoom(nMapId, tbRoomPlayer, nTimeDis) 
local tbPlayerName = {} 
for key, value in tbRoomPlayer do 
local nPlayerIndex = SearchPlayer(value) 
if nPlayerIndex > 0 then 
local nCount = CallPlayerFunction(nPlayerIndex, GetTask, TSK_COUNT_ONETIME) 
if nCount > 0 then 
tinsert(tbPlayerName, {value, nCount}) 
end 
end 
end 
sort(tbPlayerName, self.SortCompare) 
local nIndex = 1 
for key, value in tbPlayerName do 
if key ~= "n" then 
local nPlayerIndex = SearchPlayer(value[1]) 
if nPlayerIndex > 0 then 
local nCurMapId = getplayermapid(nPlayerIndex) 
if nCurMapId == nMapId then 
CallPlayerFunction(nPlayerIndex, SetTask, TSK_RANK, nIndex) 
local szMsg = format("Ng­¬i ®· t×m ®­îc %d méc nh©n , tr­íc m¾t ®øng hµng thø %d", value[2], nIndex) 
CallPlayerFunction(nPlayerIndex, Msg2Player, szMsg) 
local nRoomId = CallPlayerFunction(nPlayerIndex, GetTask, TSK_GROUPID) 
local szAccount = CallPlayerFunction(nPlayerIndex, GetAccount) 
WriteLog(format("[ méc nh©n thêi gian :%s sè phßng : %d ®øng hµng :%d account: %s nh©n vËt : %s sè l­îng : %s", GetLocalDate("%Y-%m-%d %H:%M"), nRoomId, nIndex, szAccount, value[1], value[2])) 
					nIndex = nIndex + 1
if nTimeDis >= 0 then -- script viet hoa By http://tranhba.com  mét v¸n lóc kÕt thóc 
self:AddMuRenCount(value[1], value[2]) 
end 
end 
end 
end 
end 
end 

-- script viet hoa By http://tranhba.com  theo nh­ t×m ®­îc kh«i lçi méc nh©n ®Ých sè l­îng tõ lín nh­ tiÓu s¾p hµng 
Game.SortCompare = function(tbA, tbB) 
return tbA[2] > tbB[2] 
end 

function Game:AddMuRenCount(szName, nCount) 
if nCount == 0 then 
return 
end 
local obj = ObjBuffer:New() 
obj:Push(szName) 
obj:Push(nCount) 
RemoteExecute(%szRemoteScript, "tbJingLing:g2s_AddCount", obj.m_Handle) 
obj:Destroy() 
end 
