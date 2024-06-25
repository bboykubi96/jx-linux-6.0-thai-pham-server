MISSION_MATCH = 21 -- script viet hoa By http://tranhba.com  tranh tµi mission 
TIMER_MATCH = 37 -- script viet hoa By http://tranhba.com  tranh tµi ®Þnh lóc khÝ 
TIMER_BOARD = 38 -- script viet hoa By http://tranhba.com  th«ng b¸o ®Þnh lóc khÝ 
INTERVAL_BOARD = 1 -- script viet hoa By http://tranhba.com  th«ng b¸o gian c¸ch # phót ## mçi phót th«ng b¸o mét lÇn 
LIMIT_SIGNUP = 300 -- script viet hoa By http://tranhba.com  ghi danh thêi gian kú h¹n # gi©y ##5 phót 
BOAT_POSX = 1628 -- script viet hoa By http://tranhba.com  nhµ ch¬i bÞ truyÒn tèng ®Õn long chu ®Ých x täa ®é 
BOAT_POSY = 3247 -- script viet hoa By http://tranhba.com  nhµ ch¬i bÞ truyÒn tèng ®Õn long chu ®Ých y täa ®é 

VARV_NPC_BATCH = 1 -- script viet hoa By http://tranhba.com  tr¸ch ®Ých nhãm lÇn 
VARV_NPC_COUNT = 2 -- script viet hoa By http://tranhba.com  tr¸ch ®Ých sè l­îng 
VARV_PLAYER_COUNT = 3 -- script viet hoa By http://tranhba.com  nhµ ch¬i ®Ých sè l­îng 
VARV_STATE = 4 -- script viet hoa By http://tranhba.com  mission tr¹ng th¸i , 1 bµy tá ghi danh , 2 bµy tá tranh tµi 
VARV_SIGNUP_WORLD = 5 -- script viet hoa By http://tranhba.com  ghi danh b¶n ®å 
VARV_SIGNUP_POSX = 6 -- script viet hoa By http://tranhba.com  ghi danh ®Þa ®iÓm ®Ých X täa ®é 
VARV_SIGNUP_POSY = 7 -- script viet hoa By http://tranhba.com  ghi danh ®Þa ®iÓm ®Ých Y täa ®é 
VARS_TEAM_NAME = 8 -- script viet hoa By http://tranhba.com  ®éi ngò tªn 
VARV_BOARD_TIMER = 9 -- script viet hoa By http://tranhba.com  tranh tµi tiÕn hµnh ®Ých thêi gian # gi©y # 

SCRIPT_NPC_DEATH 	= "\\script\\missions\\dragonboat\\npc_death.lua"
SCRIPT_PLAYER_DEATH = "\\script\\missions\\dragonboat\\player_death.lua"

-- script viet hoa By http://tranhba.com  long chu tranh tµi b¶n ®å ID 
map_map = { 
416, 
417, 
418, 
419, 
420, 
421, 
422, 
423, 
424, 
425, 
426, 
427, 
428, 
429, 
430, 
431, 
432, 
433, 
434, 
435, 
436, 
437, 
438, 
439, 
440, 
441, 
442, 
443, 
444, 
445, 
446, 
447, 
448, 
449, 
450, 
451, 
452, 
453, 
454, 
455, 
456, 
457, 
458, 
459, 
460, 
461, 
462, 
463 
}; 

-- script viet hoa By http://tranhba.com  ®èi øng ®å cã hay kh«ng cao cÊp tranh tµi 
map_isadvanced = { 
[416] = 0, 
[417] = 0, 
[418] = 0, 
[419] = 0, 
[420] = 0, 
[421] = 0, 
[422] = 0, 
[423] = 0, 
[424] = 1, 
[425] = 1, 
[426] = 1, 
[427] = 1, 
[428] = 1, 
[429] = 1, 
[430] = 1, 
[431] = 1, 
[432] = 1, 
[433] = 1, 
[434] = 1, 
[435] = 1, 
[436] = 1, 
[437] = 1, 
[438] = 1, 
[439] = 1, 
[440] = 0, 
[441] = 0, 
[442] = 0, 
[443] = 0, 
[444] = 0, 
[445] = 0, 
[446] = 0, 
[447] = 0, 
[448] = 1, 
[449] = 1, 
[450] = 1, 
[451] = 1, 
[452] = 1, 
[453] = 1, 
[454] = 1, 
[455] = 1, 
[456] = 1, 
[457] = 1, 
[458] = 1, 
[459] = 1, 
[460] = 1, 
[461] = 1, 
[462] = 1, 
[463] = 1 
}; 

-- script viet hoa By http://tranhba.com  loa ph¸t thanh 
function broadcast(msg) 
AddGlobalNews(msg); 
end 

-- script viet hoa By http://tranhba.com  ®em nhµ ch¬i ®¸ håi b¸o tªn ®iÓm 
function kickout() 
local index = 0; 
local player = 0; 
local players = {} 
local i = 1 
while (1) do 
index, player = GetNextPlayer(MISSION_MATCH, index, 0); 
if (player > 0) then 
players[i] = player 
			i = i + 1
end 
if (index == 0) then 
break; 
end 
end 

local world = GetMissionV(VARV_SIGNUP_WORLD); 
local pos_x = GetMissionV(VARV_SIGNUP_POSX); 
local pos_y = GetMissionV(VARV_SIGNUP_POSY); 
local OldPlayerIndex = PlayerIndex; 
for i = 1, getn(players) do 
PlayerIndex = players[i]; 
DelMSPlayer(MISSION_MATCH,1); 
SetLogoutRV(0); 
NewWorld(world, pos_x, pos_y); 
end 
PlayerIndex = OldPlayerIndex; 
end 

-- script viet hoa By http://tranhba.com  khëi ®éng th«ng b¸o ®Þnh lóc khÝ 
function start_board_timer() 
StartMissionTimer(MISSION_MATCH, TIMER_BOARD, INTERVAL_BOARD * 60 * 18); 
end 

-- script viet hoa By http://tranhba.com  t¾t th«ng b¸o ®Þnh lóc khÝ 
function close_board_timer() 
StopMissionTimer(MISSION_MATCH, TIMER_BOARD); 
end 
