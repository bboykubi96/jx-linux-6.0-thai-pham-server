-- script viet hoa By http://tranhba.com  description : nh� ch�i t� vong 
-- script viet hoa By http://tranhba.com  author : wangbin 
-- script viet hoa By http://tranhba.com  datetime : 2005-06-06 

Include("\\script\\missions\\dragonboat\\include.lua")

function OnDeath(index) 
-- script viet hoa By http://tranhba.com  s�a ��i nh� ch�i nh�n s� 
local count = GetMSPlayerCount(MISSION_MATCH) - 1; 
if (count < 0) then 
count = 0; 
end 
SetMissionV(VARV_PLAYER_COUNT, count); 

if (GetMissionV(VARV_NPC_COUNT) ~= 0) then 
-- script viet hoa By http://tranhba.com  c� hay kh�ng ��i tr��ng t� tr�n 
local name = GetMissionS(VARS_TEAM_NAME); 
if (name == GetName()) then 
broadcast(name .. " ��i ng� ��i tr��ng t� vong !"); 
end 

-- script viet hoa By http://tranhba.com  c� hay kh�ng to�n qu�n ti�u di�t 
if (count == 0) then 
broadcast(name .. " to�n ��i t� vong !"); 
end 
end 

DelMSPlayer(MISSION_MATCH, 1); 
-- script viet hoa By http://tranhba.com  � mission b�n trong th�ng b�o nh� ch�i t� vong 
Msg2MSAll(MISSION_MATCH, GetName() .. " tr�n chi�n n�y b�t h�nh !"); 

-- script viet hoa By http://tranhba.com  truy�n t�ng h�i b�o t�n ��a �i�m 
-- script viet hoa By http://tranhba.com  local world = GetMissionV(VARV_SIGNUP_WORLD); 
-- script viet hoa By http://tranhba.com  local pos_x = GetMissionV(VARV_SIGNUP_POSX); 
-- script viet hoa By http://tranhba.com  local pos_y = GetMissionV(VARV_SIGNUP_POSY); 
-- script viet hoa By http://tranhba.com  NewWorld(world, pos_x, pos_y); 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  DEBUG 
-- script viet hoa By http://tranhba.com  print(format("%s � long chu tranh t�i trung t� vong , b� �� tr� v� (%d,%d,%d) v� tr� ", GetName(), world, pos_x, pos_y)); 
end 
