

Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\arena\\rule.lua")
Include("\\script\\dailogsys\\dailogsay.lua")


Include("\\script\\global\\logout_head.lua")
IncludeLib("SETTING") 
local tbAccMapList = 
{ 
[1] = " ph­îng t­êng ", 
[11] = " thµnh ®« ", 
[37] = " biÖn kinh ", 
[80] = " D­¬ng Ch©u ", 
[78] = " t­¬ng d­¬ng ", 
[162] = " §¹i Lý ", 
[176] = " tr­íc khi an ", 
[20] = " giang t©n th«n ", 
[53] = " ba l¨ng huyÒn ", 
[54] = " nam nh¹c trÊn ", 
[99] = " vÜnh nh¹c trÊn ", 
[100] = " tru tiªn trÊn ", 
[101] = " ®¹o h­¬ng th«n ", 
[121] = " long m«n trÊn ", 
[153] = " th¹ch cæ trÊn ", 
[174] = " long tuyÒn th«n ", 
} 

tinsert(TB_LOGOUT_FILEFUN, {"\\script\\missions\\arena\\protocol.lua",		"player_logout"})

function allocate_map(ParamHandle, ResultHandle) 

local pDungeonType = DungeonType["arena"] 
if pDungeonType then 
local pDungeon = pDungeonType:new_dungeon(pDungeonType.TEMPLATE_MAP_ID) 
if pDungeon then 
local handle = OB_Create() 
ObjBuffer:PushObject(handle, pDungeon.nMapId) 
			RemoteExecute("\\script\\missions\\arena\\protocol.lua", "reg_map", handle)
OB_Release(handle) 
end 
end 

end 

function player_enter_map(ParamHandle, ResultHandle) 
local szName = ObjBuffer:PopObject(ParamHandle) 
local nMapId = ObjBuffer:PopObject(ParamHandle) 
local nTimeOut = ObjBuffer:PopObject(ParamHandle) 
local nPlayerIndex = SearchPlayer(szName) 
if nPlayerIndex > 0 then 
local nCurMapId = CallPlayerFunction(nPlayerIndex, GetWorldPos ) 
if not CallPlayerFunction(nPlayerIndex, tbPlayer.CheckState, tbPlayer) or not %tbAccMapList[nCurMapId] then 
CallPlayerFunction(nPlayerIndex, Msg2Player,"Ng­¬i b©y giê ë ®Ých b¶n ®å kh«ng c¸ch nµo ®i th«ng s©n ®Êu ") 
player_cancel(szName) 
else 
-- script viet hoa By http://tranhba.com  local tbOpt = 
-- script viet hoa By http://tranhba.com  { 
-- script viet hoa By http://tranhba.com  {"TiÕn vµo ", player_enter_map_confirm, {nMapId, nTimeOut}}, 
-- script viet hoa By http://tranhba.com  {"Bu«ng tha cho ", player_cancel, {szName}}, 
-- script viet hoa By http://tranhba.com  {"V©n v©n "} 
-- script viet hoa By http://tranhba.com  } 
-- script viet hoa By http://tranhba.com  CallPlayerFunction(nPlayerIndex, CreateNewSayEx,"B©y giê cã thÓ tiÕn vµo s©n ®Êu ", tbOpt) 
CallPlayerFunction(nPlayerIndex, player_enter_map_confirm, nMapId, nTimeOut) 
end 
end 
end 

function player_logout(nPlayerIndex) 
if nPlayerIndex > 0 then 
local szName = CallPlayerFunction(nPlayerIndex, GetName) 
local handle = OB_Create() 
ObjBuffer:PushObject(handle, szName) 
		RemoteExecute("\\script\\missions\\arena\\protocol.lua", "player_logout", handle)
OB_Release(handle) 
end 
end 

function player_cancel(szName) 
local handle = OB_Create() 
ObjBuffer:PushObject(handle, szName) 
	RemoteExecute("\\script\\missions\\arena\\protocol.lua", "player_cancel", handle)
OB_Release(handle) 
end 

function player_enter_map_confirm(nMapId, nTimeOut) 
local szName = GetName() 
local nCurMapId = GetWorldPos() 
if not tbPlayer:CheckState() or not %tbAccMapList[nCurMapId] then 
player_cancel(szName) 
return 
end 
local nCurTime = GetCurServerTime() 
if nTimeOut < nCurTime then 
return Talk(1, "","Thao t¸c cùc kú lóc ") 
end 

local nLastMapId, nX, nY = GetWorldPos() 
local nLastFightState = GetFightState() 
local tbLastState = {tbPos ={nLastMapId, nX, nY}, nFightState = nLastFightState} 

local handle = OB_Create() 
ObjBuffer:PushObject(handle, szName) 
ObjBuffer:PushObject(handle, tbLastState) 
	RemoteExecute("\\script\\missions\\arena\\protocol.lua", "set_last_state", handle)
OB_Release(handle) 
local pDungeonType = DungeonType["arena"] 
if pDungeonType then 
NewWorld(nMapId, pDungeonType:GetReadyPos()) 
end 
end 


function set_last_state(nParam, ParamHandle) 
local szName = ObjBuffer:PopObject(ParamHandle) 
local nMapId = ObjBuffer:PopObject(ParamHandle) 
local tbLastState = ObjBuffer:PopObject(ParamHandle) 

if SubWorldID2Idx(nMapId) >= 0 then 
local pDungeon = DungeonList[nMapId] 
if pDungeon then 
pDungeon:SetLastState(szName, tbLastState) 
end 
end 
end 

function signup_callback(nParam, ParamHandle) 
local szName = ObjBuffer:PopObject(ParamHandle) 
local bFind = ObjBuffer:PopObject(ParamHandle) 

local nPlayerIndex = SearchPlayer(szName) 
if nPlayerIndex > 0 and not bFind then 
CallPlayerFunction(nPlayerIndex, Talk, 1, "","Ghi danh thµnh c«ng . xin ®îi ®îi , ®ang t×m ®èi thñ ") 
end 
end 


function finded_oppoent(ParamHandle, ResultHandle) 
local szName = ObjBuffer:PopObject(ParamHandle) 
local nPlayerIndex = SearchPlayer(szName) 
if nPlayerIndex > 0 then 
CallPlayerFunction(nPlayerIndex, Msg2Player,"T×m ®­îc ®èi thñ ") 
end 
end 

function wait_map(ParamHandle, ResultHandle) 
local szName = ObjBuffer:PopObject(ParamHandle) 
local nPlayerIndex = SearchPlayer(szName) 
if nPlayerIndex > 0 then 
CallPlayerFunction(nPlayerIndex, Msg2Player,"§ang chuÈn bÞ s©n ®Êu ®Ých ®Êu trµng ") 
end 
end 

function notify_oppoent_cancel(ParamHandle, ResultHandle) 
local szName = ObjBuffer:PopObject(ParamHandle) 
local nPlayerIndex = SearchPlayer(szName) 
if nPlayerIndex > 0 then 
CallPlayerFunction(nPlayerIndex, Msg2Player,"§èi thñ cña ng­¬i ch¹y trèn , hÖ thèng t×m míi ®èi thñ ") 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 




function on_player_enter_map(szName, nMapId) 
local handle = OB_Create() 
ObjBuffer:PushObject(handle, szName) 
ObjBuffer:PushObject(handle, nMapId) 
	RemoteExecute("\\script\\missions\\arena\\protocol.lua", "player_enter_map", handle, "set_last_state")
OB_Release(handle) 
end 

function on_player_leave_map(szName, nMapId) 
local handle = OB_Create() 
ObjBuffer:PushObject(handle, szName) 
ObjBuffer:PushObject(handle, nMapId) 
	RemoteExecute("\\script\\missions\\arena\\protocol.lua", "player_leave_map", handle)
OB_Release(handle) 
end 

function on_begin_battle(nMapId, tbMemberMap) 
local handle = OB_Create() 
ObjBuffer:PushObject(handle, nMapId) 
for szName, pInfo in tbMemberMap do 
if pInfo then 
ObjBuffer:PushObject(handle, szName) 
end 
end 
	RemoteExecute("\\script\\missions\\arena\\protocol.lua", "begin_battle", handle)
OB_Release(handle) 
end 



function apply_signup() 
-- script viet hoa By http://tranhba.com  t¾t s©n ®Êu - Modified By NgaVN - 20120305 
do return end 
local nMapId = GetWorldPos() 
if not %tbAccMapList[nMapId] then 
return Talk(1, "","ChØ cã thÓ ë tay míi th«n hoÆc thµnh phè ghi danh ") 
end 

if ST_IsTransLife() ~= 1 and GetLevel() < 125 then 
return Talk(1, "", "125 cÊp trë lªn míi cã thÓ ghi danh .") 
end 

local _, nValue = GetRoleEquipValue() 
if nValue < 400 then 
return Talk(1, "","Binh gi¸p gi¸ trÞ ë 400 trë lªn míi cã thÓ ghi danh .") 
end 

local nMapId = GetWorldPos() 
if not tbPlayer:CheckState() then 
return Talk(1, "", " ë bµy qu¶n hoÆc b¸n ra tr¹ng th¸i h¹ kh«ng thÓ ghi danh .") 
end 

local nRank = tbPlayer:GetRank() 
local nGroup = 0 
if nRank < 1200 then 
nGroup = 1 
elseif 1200 <= nRank and nRank <= 2599 then 
		nGroup = ceil((nRank - 1200 + 1)/50 + 1)
else 
		nGroup = ceil((2600 - 1200 + 1)/50 + 1)
end 

local handle = OB_Create() 
ObjBuffer:PushObject(handle, GetName()) 
ObjBuffer:PushObject(handle, nGroup) 
if nGroup > 0 then 
		RemoteExecute("\\script\\missions\\arena\\protocol.lua", "apply_search_opponents", handle, "signup_callback")
end 
OB_Release(handle) 
end 
