Include("\\script\\missions\\tongwar\\match\\head.lua")

function OnTimer() 
	t = GetMissionV(MS_TIMER1) + 1;-- script viet hoa By http://tranhba.com ��������ͳ�Ƶ�ǰ��ʱ�������˶��ٴ���
SetMissionV(MS_TIMER1, t) 


if (t == RUNGAME_TIME) then -- script viet hoa By http://tranhba.com  n�u nh� ��n ch�nh th�c khai chi�n th�i kh�c , l� d�ng l�i ghi danh , ch�nh th�c ti�n v�o chi�n ��u giai �o�n 
RunMission(MISSIONID) 
AddGlobalNews("' v� l�m �� nh�t bang '"..GetMissionS(MS_S_CITYNAME_S).." c�ng "..GetMissionS(MS_S_CITYNAME_J).." - tranh t�i b�t ��u ."); 
WriteLog("tongwar is entering fight state.") 
end 

if (t < RUNGAME_TIME and mod(t, 18) == 0) then 
RestTime = (RUNGAME_TIME - t) * TIMER_1 / FRAME2TIME 
RestMin, RestSec = GetMinAndSec(RestTime); 
if (RestSec == 0) then 
str2 = " r�i �i th�i chi�n �ang l�c c�n l�i :"..RestMin.." ph�n " 
else 
str2 = " r�i �i th�i chi�n �ang l�c c�n l�i :"..RestMin.." ph�n "..RestSec.." gi�y " 
end 
Msg2MSAll(MISSIONID,str2); -- script viet hoa By http://tranhba.com  th�ng b�o b�n trong s�n nh� ch�i khai chi�n c�n th�a l�i th�i gian 
end 

if (t > RUNGAME_TIME) then 
		if (t >= RUNGAME_TIME + 15) then
-- script viet hoa By http://tranhba.com  n�u nh� tr�ng th��ng m�t tr�n doanh nh�n s� th�p h�n nh� nh�t s� l��ng , l� tranh t�i k�t th�c , nhi�u ng��i ��ch tr�n doanh tr�c ti�p chi�n th�ng 
local group1count = GetMSPlayerCount(MISSIONID, 1) 
local group2count = GetMSPlayerCount(MISSIONID, 2) 
if (group1count < MIN_MEMBERCOUNT or group2count < MIN_MEMBERCOUNT) then 
if ( group1count < MIN_MEMBERCOUNT and group2count < MIN_MEMBERCOUNT) then 
SetMissionV(MS_MOSTDEATH, 0) 
elseif(group1count < MIN_MEMBERCOUNT) then 
SetMissionV(MS_MOSTDEATH, 2) 
elseif(group2count < MIN_MEMBERCOUNT) then 
SetMissionV(MS_MOSTDEATH, 1) 
end 
CloseMission(MISSIONID) 
return 
end 
end 

-- script viet hoa By http://tranhba.com  m�i m�t ph�t th�ng b�o tr��c m�t song ph��ng t�ch ph�n , c�ng npc 
if (mod(t, 3) == 0 ) then 
msstr = " c�ng b� # tr��c m�t , li�n minh t�ng ph�n "..GetMissionS(MS_S_CITYNAME_S).." c�ng li�n minh "..GetMissionS(MS_S_CITYNAME_J).." v� <color=yellow>"..GetMissionV(MS_TOTALPOINT_S)..":"..GetMissionV(MS_TOTALPOINT_J); 
Msg2MSAll(MISSIONID, msstr) 
end 
if (mod(t, 30) == 0) then 
RestTime = floor(GetMSRestTime(MISSIONID, 62) / 18) 
RestMin, RestSec = GetMinAndSec(RestTime); 
if (RestSec == 0) then 
str2 = " tranh t�i c�n th�a l�i th�i gian :"..RestMin.." ph�n " 
else 
str2 = " tranh t�i c�n th�a l�i th�i gian :"..RestMin.." ph�n "..RestSec.." gi#" 
end 
Msg2MSAll(MISSIONID,"<color=blue>"..str2.."<color>"); -- script viet hoa By http://tranhba.com  th�ng b�o b�n trong s�n nh� ch�i khai chi�n c�n th�a l�i th�i gian 
end 
but_pop2home( 1 ) 
but_pop2home( 2 ) 
end 

end 
