Include("\\script\\missions\\championship\\match\\head.lua")
function OnTimer() 
	local timer_1 = GetMissionV(MS_TIME_1) + 1
SetMissionV(MS_TIME_1, timer_1) 
if (timer_1 == UP_A_TIME) then 
Msg2MSAll(MISSIONID, "<color=yellow> m«n ph¸i dù chän cuéc so tµi chuÈn bÞ thêi gian kÕt thóc . tranh tµi chÝnh thøc b¾t ®Çu ."); 
print("match start!!!!**************************************************************start") 
SetMissionV(MS_STATE, 2); 
RunMission(MISSIONID) 
elseif ((timer_1 > UP_A_TIME) and (mod(timer_1, 2) == 0)) then 
gametime = (floor(GetMSRestTime(MISSIONID, 36) / 18)); 
RestMin = floor(gametime / 60); 
RestSec = mod(gametime,60); 
if (RestMin == 0) then 
Msg2MSAll(MISSIONID, "<#> chiÕn ®Êu giai ®o¹n # vâ l©m t©n tó liªn cuéc so tµi thêi gian cßn cã "..RestSec.."<#> gi©y ."); 
elseif (RestSec == 0) then 
Msg2MSAll(MISSIONID, "<#> chiÕn ®Êu giai ®o¹n # vâ l©m t©n tó liªn cuéc so tµi thêi gian cßn cã "..RestMin.."<#> ph©n ."); 
end; 
end 
end 