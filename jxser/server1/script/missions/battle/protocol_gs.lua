Include("\\script\\missions\\battle\\manager.lua")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\missions\\battle\\protocol.lua")
Include("\\script\\trip\\define.lua")

local nTripMode = GetTripMode() 
if nTripMode == TRIP_MODE_SERVER then 

function select_camp(nId) 
local nMapId = GetWorldPos() 
local pManager = BattleManagerList[nMapId] 
if not pManager then 
return 
end 
local szTitle = " ng­¬i muèn gia nhËp c¸i nµo tr¹i lÝnh " 
local tbOpt = 
{ 
{"Tèng ph­¬ng ", pManager.SignUp, {pManager, nId, CAMP_SONG}}, 
{"Kim ph­¬ng ", pManager.SignUp, {pManager, nId, CAMP_KIM}}, 
{"KÕt thóc "} 
} 
CreateNewSayEx(szTitle, tbOpt); 
end 
local _fcmp = function(a, b) 
return a.nId > b.nId 
end 
function dialog(nCurRow) 

local nMapId = GetWorldPos() 
local pManager = BattleManagerList[nMapId] 

SetRevPos(nMapId, 1) 
if not pManager then 
return 
end 
local nPagePerCount = 4 

local pObj = ObjBuffer:New() 

local tbList = pManager:GetList() 
sort(tbList, %_fcmp) 
local nMaxCount = getn(tbList) 

if nMaxCount == 0 then 
return Talk(1, "","B©y giê kh«ng cã tèng kim chiÕn tr­êng ") 
end 
local tb = {} 
if nCurRow <= 0 or nCurRow > nMaxCount then 
return 
end 
	local nEndRow = nCurRow + nPagePerCount
if nEndRow > nMaxCount then 
nEndRow = nMaxCount 
end 

for i=nCurRow, nEndRow do 
tinsert(tb, tbList[i]) 
end 
tb.nCurPage = nCurRow 
tb.nMaxPage = nMaxCount 

ObjBuffer:PushByType(pObj.m_Handle, OBJTYPE_TABLE, tb) 
ScriptProtocol:SendData("emSCRIPT_PROTOCOL_BATTLE", pObj.m_Handle) 
ObjBuffer:Destroy() 
end 

function proc_protocol(nOperation, nValue) 
if nOperation == OPERATION_CHANGE_PAGE then 
dialog(nValue) 
elseif nOperation == OPERATION_ON_SELECT then 
select_camp(nValue) 
end 
end 

-- script viet hoa By http://tranhba.com  t¹m ®ãng/nh¾m tèng kim server - Modified by DinhHQ - 20111025 
-- script viet hoa By http://tranhba.com pEventType:Reg("Mé binh quan ","Ta muèn ghi danh tham gia ", dialog, {1}) 
end
