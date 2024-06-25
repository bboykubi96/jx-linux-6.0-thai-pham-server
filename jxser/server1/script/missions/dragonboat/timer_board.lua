-- script viet hoa By http://tranhba.com  description : th«ng b¸o ®Þnh lóc khÝ , mçi phót xóc ph¸t mét lÇn 
-- script viet hoa By http://tranhba.com  author : wangbin 
-- script viet hoa By http://tranhba.com  datetime : 2005-06-07 

Include("\\script\\missions\\dragonboat\\include.lua")

function OnTimer() 
if (GetMSPlayerCount(MISSION_MATCH) ~= 0) then 
		local time = GetMissionV(VARV_BOARD_TIMER) + INTERVAL_BOARD * 60;
local batch = GetMissionV(VARV_NPC_BATCH); 
local count = GetMissionV(VARV_NPC_COUNT); 
SetMissionV(VARV_BOARD_TIMER, time); 

local msg = "<#> ®· tiÕn hµnh so tµi !" .. floor(time / 60) 
.. " phót , b©y giê lµ " 
.. batch 
.. " qu¸i vËt , cßn l¹i " 
.. count 
.. " qu¸i vËt ."; 
Msg2MSAll(MISSION_MATCH, msg); 
end 
end 
