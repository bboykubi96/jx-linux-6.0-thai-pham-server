-- script viet hoa By http://tranhba.com  description : tranh tµi ®Þnh lóc khÝ 
-- script viet hoa By http://tranhba.com  author : wangbin 
-- script viet hoa By http://tranhba.com  datetime : 2005-06-04 

Include("\\script\\missions\\dragonboat\\include.lua")
Include("\\script\\missions\\dragonboat\\npc.lua")

function cancel_match() 
-- script viet hoa By http://tranhba.com  Msg2SubWorld(date("[%H:%M:%S]") .. " long chu tranh tµi hñy bá #") 
end 

-- script viet hoa By http://tranhba.com  b¾t ®Çu tranh tµi 
function start_match() 
-- script viet hoa By http://tranhba.com  thiÕt trÝ v× tranh tµi tr¹ng th¸i 
SetMissionV(VARV_STATE, 2); 

local player_count = GetMSPlayerCount(MISSION_MATCH); 
if (player_count == 0) then 
-- script viet hoa By http://tranhba.com  hñy bá tranh tµi 
cancel_match(); 
else 
-- script viet hoa By http://tranhba.com  th«ng b¸o 
broadcast(" long chu tranh tµi chÝnh thøc b¾t ®Çu , chÌo thuyÒn thñ m«n ®ang cè g¾ng chÌo thuyÒn !"); 

-- script viet hoa By http://tranhba.com  míi b¾t ®Çu hãa thay ®æi l­îng 
SetMissionV(VARV_NPC_BATCH, 1); -- script viet hoa By http://tranhba.com  tr¸ch ®Ých nhãm lÇn 

-- script viet hoa By http://tranhba.com  dän dÑp b¶n ®å 
world = SubWorldIdx2ID(SubWorld); 
ClearMapNpc(world); 
ClearMapTrap(world); 
ClearMapObj(world); 

-- script viet hoa By http://tranhba.com  sinh thµnh thø 1 nhãm tr¸ch 
create_npc(1); 
end 

-- script viet hoa By http://tranhba.com  thiÕt trÝ nhµ ch¬i sè l­îng 
SetMissionV(VARV_PLAYER_COUNT, player_count); 
end 

-- script viet hoa By http://tranhba.com  t¾t tranh tµi ®Þnh lóc khÝ 
function close_match_timer() 
StopMissionTimer(MISSION_MATCH, TIMER_MATCH); 
end 

function OnTimer() 
-- script viet hoa By http://tranhba.com  ghi danh kÕt thóc 
close_match_timer(); 
-- script viet hoa By http://tranhba.com  tranh tµi b¾t ®Çu 
start_match(); 
start_board_timer(); 
end 
