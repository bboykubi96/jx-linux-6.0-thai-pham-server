Include("\\script\\missions\\citywar_city\\head.lua");
function OnDeath(DoorIndex) 
WriteLog(GetLoop()..": c�a th�nh b� ph� , v�t c�ng th�nh xe "..DoorIndex); 
DoorI = DoorIndex 
for i = 1, g_nDoorCount do 
		D = GetMissionV(MS_DOORBEGIN + i - 1)
if (D - DoorI == 0) then 
			SetMissionV(MS_DOORBEGIN + i - 1, 0)
AddGlobalNews("T� chi�n tr��ng tin t�c truy�n ��n , th� th�nh ph��ng ��ch m�t ��o c�a th�nh b� c�ng li�u , t�nh th� h�t s�c nguy c�p "); 
ClearObstacle(ObstaclePos[i][1], ObstaclePos[i][2]); 

-- script viet hoa By http://tranhba.com  b�i b� ��i �ng c�ng th�nh xe 
			DelGcc = GetMissionV(MS_GCCBEGIN + i - 1) 
if (DelGcc > 0) then 
WriteLog(GetLoop()..": c�a th�nh b� ph� , v�t c�ng th�nh xe "); 
DelNpcSafe(DelGcc) 
				SetMissionV(MS_GCCBEGIN + i - 1, 0);
end; 

return 
end 
end; 
end;
