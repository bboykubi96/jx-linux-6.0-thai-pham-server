-- script viet hoa By http://tranhba.com  description : nhµ ch¬i tö vong 
-- script viet hoa By http://tranhba.com  author : wangbin 
-- script viet hoa By http://tranhba.com  datetime : 2005-06-06 

Include("\\script\\missions\\dragonboat\\include.lua")

function OnDeath(index) 
-- script viet hoa By http://tranhba.com  söa ®æi nhµ ch¬i nh©n sè 
local count = GetMSPlayerCount(MISSION_MATCH) - 1; 
if (count < 0) then 
count = 0; 
end 
SetMissionV(VARV_PLAYER_COUNT, count); 

if (GetMissionV(VARV_NPC_COUNT) ~= 0) then 
-- script viet hoa By http://tranhba.com  cã hay kh«ng ®éi tr­ëng tö trËn 
local name = GetMissionS(VARS_TEAM_NAME); 
if (name == GetName()) then 
broadcast(name .. " ®éi ngò ®éi tr­ëng tö vong !"); 
end 

-- script viet hoa By http://tranhba.com  cã hay kh«ng toµn qu©n tiªu diÖt 
if (count == 0) then 
broadcast(name .. " toµn ®éi tö vong !"); 
end 
end 

DelMSPlayer(MISSION_MATCH, 1); 
-- script viet hoa By http://tranhba.com  ë mission bªn trong th«ng b¸o nhµ ch¬i tö vong 
Msg2MSAll(MISSION_MATCH, GetName() .. " trËn chiÕn nµy bÊt h¹nh !"); 

-- script viet hoa By http://tranhba.com  truyÒn tèng håi b¸o tªn ®Þa ®iÓm 
-- script viet hoa By http://tranhba.com  local world = GetMissionV(VARV_SIGNUP_WORLD); 
-- script viet hoa By http://tranhba.com  local pos_x = GetMissionV(VARV_SIGNUP_POSX); 
-- script viet hoa By http://tranhba.com  local pos_y = GetMissionV(VARV_SIGNUP_POSY); 
-- script viet hoa By http://tranhba.com  NewWorld(world, pos_x, pos_y); 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  DEBUG 
-- script viet hoa By http://tranhba.com  print(format("%s ë long chu tranh tµi trung tö vong , bÞ ®¸ trë vÒ (%d,%d,%d) vÞ trÝ ", GetName(), world, pos_x, pos_y)); 
end 
