-- script viet hoa By http://tranhba.com  description : NPC t� vong 
-- script viet hoa By http://tranhba.com  author : wangbin 
-- script viet hoa By http://tranhba.com  datetime : 2005-06-06 

Include("\\script\\missions\\dragonboat\\include.lua")
Include("\\script\\missions\\dragonboat\\npc.lua")
IL("RELAYLADDER"); 

-- script viet hoa By http://tranhba.com  t��ng th��ng nh� ch�i 
function award_player(player, exp, objects) 
local OldPlayerIndex = PlayerIndex; 
PlayerIndex = player; 
-- script viet hoa By http://tranhba.com  t��ng th��ng kinh nghi�m 
if (exp ~= 0) then 
local point = exp * 10000; 
AddOwnExp(point); 
Msg2Player("<#> ng��i ��t ���c " .. point .. " kinh nghi�m tr� gi� ."); 
end 

-- script viet hoa By http://tranhba.com  t��ng th��ng v�t ph�m 
if (objects ~= nil) then 
local sum = 0; 
local num = random(1, 100); 
local obj = nil; 
for i = 1, getn(objects) do 
obj = objects[i]; 
			sum = sum + obj[1];
if (num <= sum) then 
AddItem(obj[2], obj[3], obj[4], obj[5], obj[6], obj[7]); 
Msg2Player("<#> ng��i ��t ���c " .. obj[8] .. "!"); 
break; 
end 
end 
end 

-- script viet hoa By http://tranhba.com  kh�i ph�c nh� ch�i t�c d�n 
PlayerIndex = OldPlayerIndex; 
end 

-- script viet hoa By http://tranhba.com  r�i xu�ng v�t ph�m 
function drop_item(index, count) 
if (count ~= 0) then 
local x, y, world = GetNpcPos(index); 
for i = 1, count do 
-- script viet hoa By http://tranhba.com  r�i xu�ng n�m hoa 
DropItem(world, x, y, -1, 1, 2, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  t��ng th��ng 
function award(batch, npc_index) 
local item = {}; 
if (advanced()) then 
item = map_haward[batch]; -- script viet hoa By http://tranhba.com  cao c�p tranh t�i t��ng th��ng 
else 
item = map_laward[batch]; -- script viet hoa By http://tranhba.com  s� c�p tranh t�i t��ng th��ng 
end 

-- script viet hoa By http://tranhba.com  cho m�i c� ��i vi�n kinh nghi�m c�ng t��ng th��ng 
local index = 0; 
local player = 0; 
while (1) do 
index, player = GetNextPlayer(MISSION_MATCH, index, 0); 
if (player > 0) then 
award_player(player, item[1], item[3]); 
end 
if (index == 0) then 
break; 
end 
end 

-- script viet hoa By http://tranhba.com  r�i xu�ng v�t ph�m 
drop_item(npc_index, item[2]); 
end 

-- script viet hoa By http://tranhba.com  tranh t�i th�ng l�i 
function success() 
-- script viet hoa By http://tranhba.com  th�ng k� th�i gian 
local time = GetMissionV(VARV_BOARD_TIMER); 
	time = time + floor(GetMSRestTime(MISSION_MATCH, TIMER_BOARD) / 18);
SetMissionV(VARV_BOARD_TIMER, time); 
local laddertime = LIMIT_SIGNUP * 60 - 300 - time; 
local teamname = GetMissionS(VARS_TEAM_NAME) 
local MapId = SubWorldIdx2ID(SubWorld) 
local LadderId = 10141 
if (map_isadvanced[MapId] == 1) then 
LadderId = 10142 
end 

local bfind = 0 
for i = 1, 10 do 
name , value = Ladder_GetLadderInfo(LadderId, i) 
if (name == teamname) then 
bfind = 1 
if ( laddertime > value) then 
Ladder_NewLadder(LadderId, teamname, laddertime,1) 
break 
end 
end 
end 

if (bfind == 0) then 
Ladder_NewLadder(LadderId, teamname, laddertime, 1) 
end 

-- script viet hoa By http://tranhba.com  th�ng b�o 
broadcast(GetMissionS(VARS_TEAM_NAME) .. " ��i ng� th�ng l�i x�ng quan , �� s� d�ng " .. floor(time / 60) .. " ph�t " .. mod(time, 60) .. " gi�y ! tr��c #"..laddertime.." gi�y "); 

-- script viet hoa By http://tranhba.com  �� h�i b�o t�n �i�m 
kickout(); 
end 

-- script viet hoa By http://tranhba.com  k�t th�c 
function finish(index) 
-- script viet hoa By http://tranhba.com  th�ng b�o 
local batch = GetMissionV(VARV_NPC_BATCH); 
Msg2MSAll(MISSION_MATCH, GetMissionS(VARS_TEAM_NAME) .. " ��i ng� �� to�n b� ti�u di�t " .. batch .. " tr�ch !"); 

-- script viet hoa By http://tranhba.com  t��ng th��ng 
award(batch, index); 

if (batch >= get_batch_count()) then 
-- script viet hoa By http://tranhba.com  k�t th�c 
success(); 
else 
-- script viet hoa By http://tranhba.com  sinh ra h� m�t nh�m tr�ch 
		batch = batch + 1;
SetMissionV(VARV_NPC_BATCH, batch); 
create_npc(batch); 
end 
end 

function OnDeath(index) 
local count = GetMissionV(VARV_NPC_COUNT) - 1; 
if (count >= 0) then 
SetMissionV(VARV_NPC_COUNT, count); 
if (count == 0) then 
finish(index); 
end 
end 
end 
