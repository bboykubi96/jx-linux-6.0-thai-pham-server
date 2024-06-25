Include("\\script\\missions\\citywar_city\\head.lua");
function OnDeath(DoorIndex) 
WriteLog(GetLoop()..": cöa thµnh bÞ ph¸ , vøt c«ng thµnh xe "..DoorIndex); 
DoorI = DoorIndex 
for i = 1, g_nDoorCount do 
		D = GetMissionV(MS_DOORBEGIN + i - 1)
if (D - DoorI == 0) then 
			SetMissionV(MS_DOORBEGIN + i - 1, 0)
AddGlobalNews("Tõ chiÕn tr­êng tin tøc truyÒn ®Õn , thñ thµnh ph­¬ng ®Ých mét ®¹o cöa thµnh bÞ c«ng liÔu , t×nh thÕ hÕt søc nguy cÊp "); 
ClearObstacle(ObstaclePos[i][1], ObstaclePos[i][2]); 

-- script viet hoa By http://tranhba.com  b«i bá ®èi øng c«ng thµnh xe 
			DelGcc = GetMissionV(MS_GCCBEGIN + i - 1) 
if (DelGcc > 0) then 
WriteLog(GetLoop()..": cöa thµnh bÞ ph¸ , vøt c«ng thµnh xe "); 
DelNpcSafe(DelGcc) 
				SetMissionV(MS_GCCBEGIN + i - 1, 0);
end; 

return 
end 
end; 
end;
