-- script viet hoa By http://tranhba.com  description : th�ng b�o ��nh l�c kh� , m�i ph�t x�c ph�t m�t l�n 
-- script viet hoa By http://tranhba.com  author : wangbin 
-- script viet hoa By http://tranhba.com  datetime : 2005-06-07 

Include("\\script\\missions\\dragonboat\\include.lua")

function OnTimer() 
if (GetMSPlayerCount(MISSION_MATCH) ~= 0) then 
		local time = GetMissionV(VARV_BOARD_TIMER) + INTERVAL_BOARD * 60;
local batch = GetMissionV(VARV_NPC_BATCH); 
local count = GetMissionV(VARV_NPC_COUNT); 
SetMissionV(VARV_BOARD_TIMER, time); 

local msg = "<#> �� ti�n h�nh so t�i !" .. floor(time / 60) 
.. " ph�t , b�y gi� l� " 
.. batch 
.. " qu�i v�t , c�n l�i " 
.. count 
.. " qu�i v�t ."; 
Msg2MSAll(MISSION_MATCH, msg); 
end 
end 
