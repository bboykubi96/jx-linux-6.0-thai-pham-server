-- script viet hoa By http://tranhba.com  description : tranh t�i ��nh l�c kh� 
-- script viet hoa By http://tranhba.com  author : wangbin 
-- script viet hoa By http://tranhba.com  datetime : 2005-06-04 

Include("\\script\\missions\\dragonboat\\include.lua")
Include("\\script\\missions\\dragonboat\\npc.lua")

function cancel_match() 
-- script viet hoa By http://tranhba.com  Msg2SubWorld(date("[%H:%M:%S]") .. " long chu tranh t�i h�y b� #") 
end 

-- script viet hoa By http://tranhba.com  b�t ��u tranh t�i 
function start_match() 
-- script viet hoa By http://tranhba.com  thi�t tr� v� tranh t�i tr�ng th�i 
SetMissionV(VARV_STATE, 2); 

local player_count = GetMSPlayerCount(MISSION_MATCH); 
if (player_count == 0) then 
-- script viet hoa By http://tranhba.com  h�y b� tranh t�i 
cancel_match(); 
else 
-- script viet hoa By http://tranhba.com  th�ng b�o 
broadcast(" long chu tranh t�i ch�nh th�c b�t ��u , ch�o thuy�n th� m�n �ang c� g�ng ch�o thuy�n !"); 

-- script viet hoa By http://tranhba.com  m�i b�t ��u h�a thay ��i l��ng 
SetMissionV(VARV_NPC_BATCH, 1); -- script viet hoa By http://tranhba.com  tr�ch ��ch nh�m l�n 

-- script viet hoa By http://tranhba.com  d�n d�p b�n �� 
world = SubWorldIdx2ID(SubWorld); 
ClearMapNpc(world); 
ClearMapTrap(world); 
ClearMapObj(world); 

-- script viet hoa By http://tranhba.com  sinh th�nh th� 1 nh�m tr�ch 
create_npc(1); 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� nh� ch�i s� l��ng 
SetMissionV(VARV_PLAYER_COUNT, player_count); 
end 

-- script viet hoa By http://tranhba.com  t�t tranh t�i ��nh l�c kh� 
function close_match_timer() 
StopMissionTimer(MISSION_MATCH, TIMER_MATCH); 
end 

function OnTimer() 
-- script viet hoa By http://tranhba.com  ghi danh k�t th�c 
close_match_timer(); 
-- script viet hoa By http://tranhba.com  tranh t�i b�t ��u 
start_match(); 
start_board_timer(); 
end 
