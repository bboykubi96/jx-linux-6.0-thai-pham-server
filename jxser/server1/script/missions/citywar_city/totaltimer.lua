Include("\\script\\missions\\citywar_city\\head.lua");

function OnTimer() 
WriteLog(GetLoop().." ��n th�i gian chi�n ��u li�u . "); 
timestate = GetMissionV(MS_STATE); 
str = format("%s tranh �o�t th�i gian k�t th�c !! b�y gi� %d l�y heo �� kh�i ph�c thu�c t�nh ", GetGameCity(), MS_SYMBOLCOUNT); 
for i = 1, MS_SYMBOLCOUNT do 
		if (GetMissionV(MS_SYMBOLBEGIN + i - 1)  == 1) then
str = str .. " ph�ng th� ph��ng " ; 
else 
str = str .. " ti�n c�ng ph��ng "; 
end; 
end; 

if (timestate == 2) then -- script viet hoa By http://tranhba.com  khai chi�n trung 
nCount = CheckWin(); 
if (nCount > MS_SYMBOLCOUNT / 2) then 
str = format("Cu�i c�ng ti�n c�ng ph��ng %s: %s l�y ���c ho�n to�n th�ng l�i ! l�y ���c quy�n th�ng tr� %s?",str,GetGamerName(2),GetGameCity()); 
AddGlobalNews(str); 
GameWin(2) 
return 
else 
str = format("Cu�i c�ng ph�ng th� ph��ng %s: %s ho�n to�n th�ng l�i ! ti�p t�c duy tr� th�ng tr� %s?",str,GetGamerName(2),GetGameCity()); 
AddGlobalNews(str); 
GameWin(1) 
return 
end; 
end; 

CloseMission(MISSIONID); 
end; 
