MISSION_MATCH = 21 -- script viet hoa By http://tranhba.com  tranh t�i mission 
TIMER_MATCH = 37 -- script viet hoa By http://tranhba.com  tranh t�i ��nh l�c kh� 
TIMER_BOARD = 38 -- script viet hoa By http://tranhba.com  th�ng b�o ��nh l�c kh� 
INTERVAL_BOARD = 1 -- script viet hoa By http://tranhba.com  th�ng b�o gian c�ch # ph�t ## m�i ph�t th�ng b�o m�t l�n 
LIMIT_SIGNUP = 300 -- script viet hoa By http://tranhba.com  ghi danh th�i gian k� h�n # gi�y ##5 ph�t 
BOAT_POSX = 1628 -- script viet hoa By http://tranhba.com  nh� ch�i b� truy�n t�ng ��n long chu ��ch x t�a �� 
BOAT_POSY = 3247 -- script viet hoa By http://tranhba.com  nh� ch�i b� truy�n t�ng ��n long chu ��ch y t�a �� 

VARV_NPC_BATCH = 1 -- script viet hoa By http://tranhba.com  tr�ch ��ch nh�m l�n 
VARV_NPC_COUNT = 2 -- script viet hoa By http://tranhba.com  tr�ch ��ch s� l��ng 
VARV_PLAYER_COUNT = 3 -- script viet hoa By http://tranhba.com  nh� ch�i ��ch s� l��ng 
VARV_STATE = 4 -- script viet hoa By http://tranhba.com  mission tr�ng th�i , 1 b�y t� ghi danh , 2 b�y t� tranh t�i 
VARV_SIGNUP_WORLD = 5 -- script viet hoa By http://tranhba.com  ghi danh b�n �� 
VARV_SIGNUP_POSX = 6 -- script viet hoa By http://tranhba.com  ghi danh ��a �i�m ��ch X t�a �� 
VARV_SIGNUP_POSY = 7 -- script viet hoa By http://tranhba.com  ghi danh ��a �i�m ��ch Y t�a �� 
VARS_TEAM_NAME = 8 -- script viet hoa By http://tranhba.com  ��i ng� t�n 
VARV_BOARD_TIMER = 9 -- script viet hoa By http://tranhba.com  tranh t�i ti�n h�nh ��ch th�i gian # gi�y # 

SCRIPT_NPC_DEATH 	= "\\script\\missions\\dragonboat\\npc_death.lua"
SCRIPT_PLAYER_DEATH = "\\script\\missions\\dragonboat\\player_death.lua"

-- script viet hoa By http://tranhba.com  long chu tranh t�i b�n �� ID 
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

-- script viet hoa By http://tranhba.com  ��i �ng �� c� hay kh�ng cao c�p tranh t�i 
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

-- script viet hoa By http://tranhba.com  loa ph�t thanh 
function broadcast(msg) 
AddGlobalNews(msg); 
end 

-- script viet hoa By http://tranhba.com  �em nh� ch�i �� h�i b�o t�n �i�m 
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

-- script viet hoa By http://tranhba.com  kh�i ��ng th�ng b�o ��nh l�c kh� 
function start_board_timer() 
StartMissionTimer(MISSION_MATCH, TIMER_BOARD, INTERVAL_BOARD * 60 * 18); 
end 

-- script viet hoa By http://tranhba.com  t�t th�ng b�o ��nh l�c kh� 
function close_board_timer() 
StopMissionTimer(MISSION_MATCH, TIMER_BOARD); 
end 
