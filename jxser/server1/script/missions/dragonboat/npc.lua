-- script viet hoa By http://tranhba.com  description : khai s�ng NPC 
-- script viet hoa By http://tranhba.com  author : wangbin 
-- script viet hoa By http://tranhba.com  datetime : 2005-06-06 

Include("\\script\\battles\\battlehead.lua")

-- script viet hoa By http://tranhba.com  qu�i v�t s� l��ng <=> v� tr� v�n ki�n 
map_file = { 
	[16] = "\\settings\\maps\\dragonboat\\lineup16.txt",	
	[20] = "\\settings\\maps\\dragonboat\\lineup20.txt",
	[24] = "\\settings\\maps\\dragonboat\\lineup24.txt",
	[32] = "\\settings\\maps\\dragonboat\\lineup32.txt",
	[40] = "\\settings\\maps\\dragonboat\\lineup40.txt",
	[56] = "\\settings\\maps\\dragonboat\\lineup56.txt"
}; 

-- script viet hoa By http://tranhba.com  ng� h�nh 
map_series = { 
[0] = " kim ", 
[1] = " m�c ", 
[2] = " n��c ", 
[3] = " l�a ", 
[4] = " ��t " 
}; 

-- script viet hoa By http://tranhba.com  s� c�p qu�i v�t 
map_lnpc = { 
{1, {909,"S��ng �ao ", 75, -1, 0, 16, 8}}, 
{1, {910,"Bay sa ", 75, -1, 0, 16, 8}}, 
{1, {911,"S��ng li�n ", 75, -1, 0, 20, 8}}, 
{1, {912,"C��i gi� ", 75, -1, 0, 20, 8}}, 
{2, {921,"S�ng h�n ", 75, 1, 1, 1, 1618, 3208}, 
{909,"S��ng �ao ", 75, 1, 0, 16, 8}}, 
{1, {913,"N��c h�n ", 75, 1, 0, 24, 7}}, 
{1, {914,"Th�n t� ", 75, 3, 0, 24, 7}}, 
{1, {915,"Tranh h�n ", 75, 2, 0, 32, 7}}, 
{1, {916, " l��t s�ng ", 75, 4, 0, 32, 7}}, 
{2, {922,"S�ng h�n ", 75, 3, 1, 1, 1618, 3208}, 
{910,"Bay sa ", 75, 3, 0, 16, 8}}, 
{1, {917,"C�n �nh ", 75, 0, 0, 40, 7}}, 
{1, {918,"�ao ", 75, -1, 0, 32, 7}}, 
{2, {923,"S�ng h�n ", 75, 2, 1, 1, 1618, 3208}, 
{911,"S��ng li�n ", 75, 2, 0, 16, 8}}, 
{1, {919, " lang ca t�ng ", 75, -1, 0, 24, 7}}, 
{2, {924,"S�ng h�n ", 75, 4, 1, 1, 1618, 3208}, 
{912,"C��i gi� ", 75, 4, 0, 16, 8}}, 
{1, {920,"C�i kh�n �en ", 75, -1, 0, 56, 1}}, 
{2, {925,"S�ng h�n ", 75, 0, 1, 1, 1618, 3208}, 
{918,"�ao ", 75, 0, 0, 16, 8}}, 
{1, {926,"S�ng h�n ", 75, -1, 1, 1, 1618, 3208}} 
}; 

-- script viet hoa By http://tranhba.com  cao c�p qu�i v�t 
map_hnpc = { 
{1, {927,"S��ng �ao ", 95, -1, 0, 16, 8}}, 
{1, {928,"Bay sa ", 95, -1, 0, 16, 8}}, 
{1, {929,"S��ng li�n ", 95, -1, 0, 20, 8}}, 
{1, {930,"C��i gi� ", 95, -1, 0, 20, 8}}, 
{2, {939,"S�ng h�n ", 95, 1, 1, 1, 1618, 3208}, 
{927,"S��ng �ao ", 95, 1, 0, 16, 8}}, 
{1, {931,"N��c h�n ", 95, 1, 0, 24, 7}}, 
{1, {932,"Th�n t� ", 95, 3, 0, 24, 7}}, 
{1, {933,"Tranh h�n ", 95, 2, 0, 32, 7}}, 
{1, {934, " l��t s�ng ", 95, 4, 0, 32, 7}}, 
{2, {940,"S�ng h�n ", 95, 3, 1, 1, 1618, 3208}, 
{928,"Bay sa ", 95, 3, 0, 16, 8}}, 
{1, {935,"C�n �nh ", 95, 0, 0, 40, 7}}, 
{1, {936,"�ao ", 95, -1, 0, 32, 7}}, 
{2, {941,"S�ng h�n ", 95, 2, 1, 1, 1618, 3208}, 
{929,"S��ng li�n ", 95, 2, 0, 16, 8}}, 
{1, {937, " lang ca t�ng ", 95, -1, 0, 24, 7}}, 
{2, {942,"S�ng h�n ", 95, 4, 1, 1, 1618, 3208}, 
{930,"C��i gi� ", 95, 4, 0, 16, 8}}, 
{1, {938,"C�i kh�n �en ", 95, -1, 0, 56, 1}}, 
{2, {943,"S�ng h�n ", 95, 0, 1, 1, 1618, 3208}, 
{936,"�ao ", 95, 0, 0, 16, 8}}, 
{1, {944,"S�ng h�n ", 95, -1, 1, 1, 1618, 3208}} 
}; 

-- script viet hoa By http://tranhba.com  s� c�p tranh t�i v��t qua ki�m tra ph�n th��ng 
map_ldrop = { 
{20, 6, 1, 435, 1, 0, 0, "<#> ��u sa t�ng t� "}, -- script viet hoa By http://tranhba.com  0.2 x�c su�t , ��u sa t�ng t� 
{30, 6, 1, 436, 1, 0, 0, "<#> h��ng c� t�ng t� "}, -- script viet hoa By http://tranhba.com  0.3 x�c su�t , h��ng c� t�ng t� 
{40, 6, 1, 437, 1, 0, 0, "<#> ��n ho�ng t�ng t� "}, -- script viet hoa By http://tranhba.com  0.4 x�c su�t , ��n ho�ng t�ng t� 
{10, 6, 1, 425, 1, 0, 0, "<#> �i�u ��u long chu "}, -- script viet hoa By http://tranhba.com  0.1 x�c su�t , �i�u ��u long chu 
}; 

map_laward = { 
[1] = {2, 0, nil}, 
[2] = {3, 0, nil}, 
[3] = {3, 0, nil}, 
[4] = {4, 0, nil}, 
[5] = {12, 15, nil}, 
[6] = {5, 0, nil}, 
[7] = {5, 0, nil}, 
[8] = {6, 0, nil}, 
[9] = {6, 0, nil}, 
[10] = {15, 20, nil}, 
[11] = {8, 0, nil}, 
[12] = {10, 0, nil}, 
[13] = {18, 30, nil}, 
[14] = {10, 0, nil}, 
[15] = {20, 0, nil}, 
[16] = {15, 60, nil}, 
[17] = {25, 0, nil}, 
[18] = {0, 0, map_ldrop}, 
}; 

-- script viet hoa By http://tranhba.com  cao c�p tranh t�i v��t qua ki�m tra ph�n th��ng 
map_hdrop = { 
{10, 6, 1, 435, 1, 0, 0, "<#> ��u sa t�ng t� "}, -- script viet hoa By http://tranhba.com  0.2 x�c su�t , ��u sa t�ng t� 
{25, 6, 1, 436, 1, 0, 0, "<#> h��ng c� t�ng t� "}, -- script viet hoa By http://tranhba.com  0.3 x�c su�t , h��ng c� t�ng t� 
{40, 6, 1, 437, 1, 0, 0, "<#> ��n ho�ng t�ng t� "}, -- script viet hoa By http://tranhba.com  0.4 x�c su�t , ��n ho�ng t�ng t� 
{25, 6, 1, 425, 1, 0, 0, "<#> �i�u ��u long chu "}, -- script viet hoa By http://tranhba.com  0.1 x�c su�t , �i�u ��u long chu 
}; 

map_haward = { 
[1] = {4, 0, nil}, 
[2] = {5, 0, nil}, 
[3] = {6, 0, nil}, 
[4] = {8, 0, nil}, 
[5] = {24, 15, nil}, 
[6] = {10, 0, nil}, 
[7] = {10, 0, nil}, 
[8] = {12, 0, nil}, 
[9] = {12, 0, nil}, 
[10] = {30, 20, nil}, 
[11] = {16, 0, nil}, 
[12] = {20, 0, nil}, 
[13] = {36, 30, nil}, 
[14] = {20, 0, nil}, 
[15] = {40, 0, nil}, 
[16] = {30, 60, nil}, 
[17] = {50, 0, nil}, 
[18] = {0, 0, map_hdrop}, 
}; 

-- script viet hoa By http://tranhba.com  l�y ���c NPC ��ch ID 
function get_npc_id(item) 
return item[1]; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c NPC ��ch t�n 
function get_npc_name(item) 
return item[2]; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c NPC ��ch c�p b�c 
function get_npc_level(item) 
return item[3]; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c NPC ��ch ng� h�nh 
function get_npc_series(item) 
if (item[4] == -1) then 
return random(0, 4); 
end 
return item[4]; 
end 

-- script viet hoa By http://tranhba.com  tr��c m�t tranh t�i c� hay kh�ng cao c�p tranh t�i 
function advanced() 
world = SubWorldIdx2ID(SubWorld); 
return map_isadvanced[world] ~= 0; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c nh�m s� l�n l��ng 
function get_batch_count() 
if (advanced()) then 
return getn(map_hnpc); 
end 
return getn(map_lnpc); 
end 

-- script viet hoa By http://tranhba.com  c� hay kh�ng BOSS 
function is_boss(item) 
return item[5]; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c NPC ��ch s� l��ng 
function get_npc_count(item) 
return item[6]; 
end 

-- script viet hoa By http://tranhba.com  theo v�n m�n trung h�c l�y NPC v� tr� 
function get_file_pos(file, line, column) 
x = GetTabFileData(file, line, column); 
	y = GetTabFileData(file, line, column + 1);
return x, y; 
end 

-- script viet hoa By http://tranhba.com  c�n c� thi�t ��nh khai s�ng NPC 
function add_npc(item) 
local id = get_npc_id(item); 
local name = get_npc_name(item); 
local level = get_npc_level(item); 
local count = get_npc_count(item); 
local isboss = is_boss(item); 
local series = 0; 

local x = 0; 
local y = 0; 
local index = 0; 
local result = 0; 

if (count == 1) then 
x = item[7]; 
y = item[8]; 
series = get_npc_series(item); 
index = AddNpcEx(id, level, series, SubWorld, x * 32, y * 32, 1, name, isboss); 
if (index > 0) then 
result = count; 
SetNpcDeathScript(index, SCRIPT_NPC_DEATH); 
else 
-- script viet hoa By http://tranhba.com  DEBUG 
local msg = format("DragonBoatMission: Failed to AddNpcEx(%d,%d,%d,%d,%d,%d,%d,%s,%d)!", 
id, level, series, SubWorld, x, y, 1, name, isboss); 
print(msg); 
end 
elseif (count > 0) then 
local file = map_file[count]; 
		column = 2 * (random(1, item[7]) - 1) + 1;
for i = 1, count do 
			x, y = get_file_pos(file, i + 1, column);
series = get_npc_series(item); 
index = AddNpcEx( 
id, -- script viet hoa By http://tranhba.com  ID 
level, -- script viet hoa By http://tranhba.com  c�p b�c 
series, -- script viet hoa By http://tranhba.com  ng� h�nh 
SubWorld, -- script viet hoa By http://tranhba.com  b�n �� 
x * 32, -- script viet hoa By http://tranhba.com  X t�a �� 
y * 32, -- script viet hoa By http://tranhba.com  Y t�a �� 
1, -- script viet hoa By http://tranhba.com  kh�ng n�ng sinh 
name, -- script viet hoa By http://tranhba.com  t�n 
isboss); -- script viet hoa By http://tranhba.com  c� hay kh�ng BOSS 
if (index > 0) then 
				result = result + 1;
SetNpcDeathScript(index, SCRIPT_NPC_DEATH); 
else 
-- script viet hoa By http://tranhba.com  DEBUG 
local msg = format("DragonBoatMission: Failed to AddNpcEx(%d,%d,%d,%d,%d,%d,%d,%s,%d)!", 
id, level, series, SubWorld, x, y, 1, name, isboss); 
print(msg); 
end 
end 
else 
-- script viet hoa By http://tranhba.com  DEBUG 
local msg = "Wrong NpcCount: " .. count; 
print(msg); 
end 
return result; 
end 

-- script viet hoa By http://tranhba.com  tr�n ��t �� th��ng sinh th�nh NPC 
function create_npc(batch) 
npc = map_lnpc[batch]; -- script viet hoa By http://tranhba.com  s� c�p tr�ch 
world = SubWorldIdx2ID(SubWorld); 
if (map_isadvanced[world] ~= 0) then 
npc = map_hnpc[batch]; -- script viet hoa By http://tranhba.com  cao c�p tr�ch 
end 

local times = npc[1]; 
local count = 0; 
for i = 1, times do 
		count = count + add_npc(npc[i + 1]);
end 
SetMissionV(VARV_NPC_COUNT, count); 

-- script viet hoa By http://tranhba.com  DEBUG 
local msg = " xu�t hi�n " .. count .. "con qu#!"; 
Msg2MSAll(MISSION_MATCH, msg); 
end 
