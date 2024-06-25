Include("\\script\\missions\\citywar_arena\\head.lua");

function OnTimer() 
timestate = GetMissionV(MS_STATE); 
V = GetMissionV(MS_NEWSVALUE); 
	SetMissionV(MS_NEWSVALUE, V + 1);

if (V == GO_TIME) then 
RunMission(MISSIONID) 
return 
end 

-- script viet hoa By http://tranhba.com  ghi danh giai �o�n 
if (timestate == 1) then 
ReportMemberState(V); 
elseif (timestate == 2) then -- script viet hoa By http://tranhba.com  khai chi�n 
ReportBattle(V); 
elseif (timestate == 3) then -- script viet hoa By http://tranhba.com  chi�n ��u k�t th�c 
Msg2MSAll(MISSIONID,"Chi�n ��u k�t th�c "); 
StopMissionTimer(MISSIONID, 16); 
StopMissionTimer(MISSIONID, 17); 
end; 
end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  � ghi danh trong l�c , h� th�ng ��nh k� th�ng b�o nh� ch�i tr��c m�t ��ch ghi danh t�nh hu�ng 
if (V == GO_TIME) then 
Msg2MSAll(MSSIONID,"Nh�n s� �� �� , tranh t�i ch�nh th�c b�t ��u "); 
msgstr = format("Bang h�i %s c�ng %s �� m� m�i tranh t�i : b�y gi� song ph��ng nh�n s� l� # %d - %d.", GetMissionS(1), GetMissionS(2), GetMSPlayerCount(MISSIONID, 1), GetMSPlayerCount(MISSIONID, 2)); 
WriteLog(msgstr) 
RunMission(MISSIONID); 
return 
end; 
RestTime = (GO_TIME - V) * 20; 
RestMin, RestSec = GetMinAndSec(RestTime); 
local str1 = " ti�n v�o cu�c so t�i tr�ng th�i gian <#> c�n c� "..RestMin.."<#> ph�n , khi�u chi�n ��i xin/m�i l�p t�c v�o tr�ng ." 
str1 = " khi�u chi�n th�nh tr�n <#> �ang v�o tr�ng giai �o�n , song ph��ng nhanh l�n v�o tr�ng . song ph��ng nh�n s� "..GetMSPlayerCount(MISSIONID, 1).."<#>:"..GetMSPlayerCount(MISSIONID, 2).."<#>. v�o tr�ng th�i gian c�n c� : "..RestMin.."<#> ph�n "..RestSec.."<#> gi�y "; 
Msg2MSAll(MISSIONID, str1); 
end; 

function ReportBattle(V) 
-- script viet hoa By http://tranhba.com  chi�n ��u ti�n h�nh trong qu� tr�nh , h� th�ng ��nh k� th�ng b�o c�c phe ��ch t� tr�n t�nh hu�ng 
if (GetMSPlayerCount(MISSIONID, 1) <= 0 ) then 
Msg2MSAll(MISSIONID, "<#>. tranh t�i k�t th�c "..GetMissionS(2).."<#> l�y ���c th�ng l�i cu�i c�ng !"); 
WinBonus(2) 
CloseMission(MISSIONID); 
return 
end; 

if (GetMSPlayerCount(MISSIONID, 2) <= 0 ) then 
Msg2MSAll(MISSIONID, "<#>. tranh t�i k�t th�c "..GetMissionS(1).."<#> l�y ���c th�ng l�i cu�i c�ng !"); 
WinBonus(1) 
CloseMission(MISSIONID); 
return 
end; 

gametime = (floor(GetMSRestTime(MISSIONID,17)/18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str1 = " tranh t�i giai �o�n <#>: b�y gi� song ph��ng nh�n s� # ho�ng ph��ng "..GetMSPlayerCount(MISSIONID, 1).."<#>, t� ph��ng "..GetMSPlayerCount(MISSIONID, 2).."<#>. c�n th�a l�i th�i gian "..RestMin.."<#> ph�n "..RestSec.."<#> gi�y "; 
Msg2MSAll(MISSIONID, str1); 
end; 
