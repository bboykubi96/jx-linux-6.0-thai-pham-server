Include("\\script\\missions\\citywar_city\\head.lua");

function OnTimer() 
timestate = GetMissionV(MS_STATE); 
V = GetMissionV(MS_NEWSVALUE); 
	SetMissionV(MS_NEWSVALUE, V+1);
if (timestate == 2) then -- script viet hoa By http://tranhba.com  khai chi�n 
ReportBattle(V); 
end; 
end; 

function ReportBattle(V) 
-- script viet hoa By http://tranhba.com  chi�n ��u ti�n h�nh trong qu� tr�nh , h� th�ng ��nh k� th�ng b�o bia �� ��ch t�nh hu�ng 
gametime = (floor(GetMSRestTime(MISSIONID,13) / 18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str = format("B�y gi� %s b�y gi� x� vu k�ch li�t tranh �o�t giai �o�n ! th�i gian c�n l�i %d ph�n %d gi�y ; b�y gi� %d long tr� �� kh�i ph�c thu�c t�nh ", GetGameCity(), RestMin, RestSec, MS_SYMBOLCOUNT); 
for i = 1, MS_SYMBOLCOUNT do 
		if (GetMissionV(MS_SYMBOLBEGIN + i - 1)  == 1) then
str = str .. " ph�ng th� ph��ng " ; 
else 
str = str .. " ti�n c�ng ph��ng "; 
end; 
end; 

-- script viet hoa By http://tranhba.com 2004.11.5 t�t h��ng to�n c�u g�i loa ph�t thanh ��ch ch�c n�ng 
-- script viet hoa By http://tranhba.com if (mod(V, 18) == 0) then 
-- script viet hoa By http://tranhba.com  AddGlobalNews(str) 
-- script viet hoa By http://tranhba.com else 
Msg2MSAll(MISSIONID, str) 
-- script viet hoa By http://tranhba.com end; 
end; 
