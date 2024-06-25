Include("\\script\\missions\\challenge\\challengehead.lua");

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
Msg2MSAll(MISSIONID,"Chi�n d�ch k�t th�c "); 
StopMissionTimer(MISSIONID, 10); 
StopMissionTimer(MISSIONID, 11); 
end; 
end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  � ghi danh trong l�c , h� th�ng ��nh k� th�ng b�o nh� ch�i tr��c m�t ��ch ghi danh t�nh hu�ng 
if (V == GO_TIME) then 
if (GetMSPlayerCount(MISSIONID,1) == 0 or GetMSPlayerCount(MISSIONID , 2) == 0) then 
Msg2MSAll(MISSIONID,"Ghi danh �� k�t th�c , nh�ng l� song ph��ng nh�n s� c�ng c�n kh�ng ph� h�p y�u c�u , h�y b� tranh t�i "); 
CloseMission(MISSIONID) 
return 
else 
Msg2MSAll(MSSIONID,"Ghi danh �� k�t th�c , tranh t�i ch�nh th�c b�t ��u "); 
RunMission(MISSIONID); 
return 
end 
end; 
RestTime = (GO_TIME - V) * 20; 
RestMin, RestSec = GetMinAndSec(RestTime); 
local str1 = "<#> khi�u chi�n �ang ghi danh giai �o�n , khi�u chi�n ph��ng xin/m�i nhanh l�n v�o tr�ng "..RestMin.."<#> ph�n "; 
str1 = "<#> khi�u chi�n �ang ghi danh giai �o�n , c�c khi�u chi�n ��i xin mau s�m v�o tr�ng # song ph��ng nh�n s� l� :"..GetMSPlayerCount(MISSIONID, 1)..","..GetMSPlayerCount(MISSIONID, 2).."<#>. ghi danh th�i gian c�n c� :"..RestMin.."<#> ph�n "..RestSec.."<#> gi�y "; 
Msg2MSAll(MISSIONID, str1); 
end; 

function ReportBattle(V) 
-- script viet hoa By http://tranhba.com  chi�n ��u ti�n h�nh trong qu� tr�nh , h� th�ng ��nh k� th�ng b�o c�c phe ��ch t� tr�n t�nh hu�ng 
if (GetMSPlayerCount(MISSIONID, 1) <= 0 ) then 
Msg2MSAll(MISSIONID,"Chi�n ��u k�t th�c , t� ph��ng l�y ���c th�ng l�i cu�i c�ng "); 
CloseMission(MISSIONID); 
return 
end; 

if (GetMSPlayerCount(MISSIONID, 2) <= 0 ) then 
Msg2MSAll(MISSIONID,"Chi�n ��u k�t th�c , ho�ng ph��ng l�y ���c th�ng l�i cu�i c�ng "); 
CloseMission(MISSIONID); 
return 
end; 

s_death = GetMissionV(MS_S_DEATHCOUNT); 
j_death = GetMissionV(MS_J_DEATHCOUNT); 
gametime = (floor(GetMSRestTime(MISSIONID,11)/18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str1 = "<#> chi�n ��u giai �o�n . t�nh hu�ng th��ng vong l� : ho�ng ph��ng :"..s_death.."<#> ng��i , t� ph��ng :"..j_death.."<#> ng��i . th�i gian c�n l�i "..RestMin.."<#> ph�n "..RestSec.."<#> gi�y "; 
Msg2MSAll(MISSIONID, str1); 
end; 
