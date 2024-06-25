Include("\\script\\missions\\zhaojingling\\game\\game.lua")
Include("\\script\\lib\\objbuffer_head.lua")

Game.nInterval = 15 -- script viet hoa By http://tranhba.com  ��n v� gi�y 
Game.nPassTime = 0 -- script viet hoa By http://tranhba.com  �� qua bao nhi�u th�i gian , ��n v� gi�y 
Game.nRemindInterval = 30 -- script viet hoa By http://tranhba.com  h� th�ng m�i 30 gi�y �� k� nh� ch�i ��ng h�ng c�ng t�m ���c kh�i l�i m�c nh�n ��ch s� l��ng 

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
-- script viet hoa By http://tranhba.com  tranh t�i k�t th�c , d�ng l�i t�nh gi� kh� 
self:Over() 
return 0, 0 
end 

local nNotAddMuRen = 0 
if self.nPassTime == self.nInterval then 
-- script viet hoa By http://tranhba.com  tranh t�i b�t ��u tr��c 15 gi�y ��ch th�i �i�m kh�ng th�m t�i kh�i l�i m�c nh�n 
nNotAddMuRen = 1 
end 

if self.nPassTime >= (GAMETIME * 60 - self.nRemindInterval) then 
-- script viet hoa By http://tranhba.com  tranh t�i cu�i c�ng 30 gi�y kh�ng th�m t�i kh�i l�i m�c nh�n 
nNotAddMuRen = 1 
end 

if nNotAddMuRen ~= 1 then 
self:AddAllMuRen() -- script viet hoa By http://tranhba.com  m�i qu� 15 gi�y th�m t�i m�t l�n kh�i l�i m�c nh�n 
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
local szMsg = format("Ng��i �� t�m ���c %d m�c nh�n , tr��c m�t ��ng h�ng th� %d", value[2], nIndex) 
CallPlayerFunction(nPlayerIndex, Msg2Player, szMsg) 
local nRoomId = CallPlayerFunction(nPlayerIndex, GetTask, TSK_GROUPID) 
local szAccount = CallPlayerFunction(nPlayerIndex, GetAccount) 
WriteLog(format("[ m�c nh�n th�i gian :%s s� ph�ng : %d ��ng h�ng :%d account: %s nh�n v�t : %s s� l��ng : %s", GetLocalDate("%Y-%m-%d %H:%M"), nRoomId, nIndex, szAccount, value[1], value[2])) 
					nIndex = nIndex + 1
if nTimeDis >= 0 then -- script viet hoa By http://tranhba.com  m�t v�n l�c k�t th�c 
self:AddMuRenCount(value[1], value[2]) 
end 
end 
end 
end 
end 
end 

-- script viet hoa By http://tranhba.com  theo nh� t�m ���c kh�i l�i m�c nh�n ��ch s� l��ng t� l�n nh� ti�u s�p h�ng 
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
