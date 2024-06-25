Include("\\script\\missions\\hsbattle\\hshead.lua");

function OnTimer() 
timestate = GetMissionV(MS_STATE); 
V = GetMissionV(MS_NEWSVALUE); 
	SetMissionV(MS_NEWSVALUE, V+1);

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
StopMissionTimer(MISSIONID, 14); 
StopMissionTimer(MISSIONID, 15); 
end; 
end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  � ghi danh trong l�c , h� th�ng ��nh k� th�ng b�o nh� ch�i tr��c m�t ��ch ghi danh t�nh hu�ng 
if (V == GO_TIME) then 
Msg2MSAll(MSSIONID,"Ti�n v�o nh�n s� �� �� , tranh t�i ch�nh th�c b�t ��u "); 
RunMission(MISSIONID); 
return 
end; 
RestTime = (GO_TIME - V) * 20; 
RestMin, RestSec = GetMinAndSec(RestTime); 
local str1 = " ti�n v�o cu�c so t�i tr�ng th�i gian <#> c�n c� "..RestMin.."<#> ph�t , khi�u chi�n ��i xin/m�i l�p t�c ti�n v�o cu�c so t�i tr�ng ." 
str1 = " khi�u chi�n cu�c so t�i <#> �ang ��ng � ti�n v�o cu�c so t�i tr�ng tr�ng th�i , song ph��ng s� k� ti�n v�o cu�c so t�i tr�ng . song ph��ng nh�n s� "..GetMSPlayerCount(MISSIONID, 1).."<#>:"..GetMSPlayerCount(MISSIONID, 2).."<#>. ti�n v�o ��u tr�ng th�i gian c�n l�i : "..RestMin.."<#> ph�t "..RestSec.."<#> gi# "; 
Msg2MSAll(MISSIONID, str1); 
end; 

function ReportBattle(V) 
-- script viet hoa By http://tranhba.com  chi�n ��u ti�n h�nh trong qu� tr�nh , h� th�ng ��nh k� th�ng b�o c�c phe ��ch t� tr�n t�nh hu�ng 
if (GetMSPlayerCount(MISSIONID, 1) <= 0 ) then 
Msg2MSAll(MISSIONID, "<#>. tranh t�i k�t th�c ,"..GetMissionS(2).."<#> ��t ���c th�ng l�i cu�i c�ng !"); 
WinBonus(2) 
CloseMission(MISSIONID); 
return 
end; 

if (GetMSPlayerCount(MISSIONID, 2) <= 0 ) then 
Msg2MSAll(MISSIONID, "<#>. tranh t�i k�t th�c ,"..GetMissionS(1).."<#> ��t ���c th�ng l�i cu�i c�ng !"); 
WinBonus(1) 
CloseMission(MISSIONID); 
return 
end; 

s_value = GetMissionV(MS_TONG1VALUE); 
j_value = GetMissionV(MS_TONG2VALUE); 

gametime = (floor(GetMSRestTime(MISSIONID,15)/18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str1 = "<#> chi�n ��u giai �o�n # tr��c m�t t�ch ph�n v� # kim ph��ng :"..s_value.."<#>, t� ph��ng "..j_value.."<#>. c�n l�i th�i gian "..RestMin.."<#> ph�t "..RestSec.."<#> gi�y "; 
Msg2MSAll(MISSIONID, str1); 
end; 
