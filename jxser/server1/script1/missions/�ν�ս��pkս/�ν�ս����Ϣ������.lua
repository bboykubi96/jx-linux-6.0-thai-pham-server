Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");
function OnTimer() 
timestate = GetMissionV(MS_STATE); 
V = GetMissionV(MS_NEWSVALUE); 
	SetMissionV(MS_NEWSVALUE,V + 1);

-- script viet hoa By http://tranhba.com  ghi danh giai �o�n 
if (timestate == 1) then 
ReportMemberState(V); 
elseif (timestate == 2) then 
ReportBattle(V); 

-- script viet hoa By http://tranhba.com  n�u nh� �� v��t qua giai �o�n th� nh�t , h�n n�a kh�ng c� b�t k� ch� t��ng xu�t hi�n l�c 
if (V >= SHOWKINGTIME1 and GetMissionV(MS_FIRSTSHOW) == 0) then 
s_show = GetMissionV(MS_S_SHOWKING); 
j_show = GetMissionV(MS_J_SHOWKING); 

-- script viet hoa By http://tranhba.com  n�u nh� tr��c m�t ch� c� nh�t ph��ng ph� h�p c�n b�n ��ch ch� t��ng xu�t hi�n y�u c�u l� , �� cho k� ch� s�p xu�t hi�n hi�n 
if (s_show == 1 and j_show == 0) then 
SetMissionV(MS_FIRSTSHOW, 1) 
ShowTheKing(1) 
SetMissionV(MS_S_SHOWKING,2) 
return 
end; 

if (s_show == 0 and j_show == 1) then 
SetMissionV(MS_FIRSTSHOW, 2) 
ShowTheKing(2) 
SetMissionV(MS_J_SHOWKING,2) 
return 
end; 

-- script viet hoa By http://tranhba.com  n�u nh� hai phe c�ng ��t t�i c�n b�n xu�t hi�n ch� t��ng ��ch y�u c�u , l� c�n c� song ph��ng tr��c m�t t�ch ph�n x�c ��nh 
if (s_show == 1 and j_show == 1) then 
s_dpk = GetMissionV(MS_S_DEATHCOUNT);-- script viet hoa By http://tranhba.com  nh� ch�i PK t� vong s� l��ng 
j_dpk = GetMissionV(MS_J_DEATHCOUNT); 
s_dnpc = GetMissionV(MS_S_NPCDEATH);-- script viet hoa By http://tranhba.com NPC t� vong s� l��ng 
j_dnpc = GetMissionV(MS_J_NPCDEATH); 

			if (s_dpk * 1.5 + s_dnpc > j_dpk * 1.5 + j_dnpc) then
SetMissionV(MS_FIRSTSHOW, 1) 
ShowTheKing(1) 
SetMissionV(MS_S_SHOWKING,2) 
return 
else 
SetMissionV(MS_FIRSTSHOW, 2) 
ShowTheKing(2) 
SetMissionV(MS_J_SHOWKING,2) 
return 
end 
end; 
end; 

-- script viet hoa By http://tranhba.com  n�u nh� �� ��n giai �o�n th� hai , t�c �u th� ph��ng ch� t��ng c� th� xu�t hi�n 
if (V >= SHOWKINGTIME2) then 
-- script viet hoa By http://tranhba.com  n�u nh� tr��c m�t v� b�t k� ph��ng ch� t��ng xu�t hi�n , l� tr�c ti�p tr� v� 
local fstshow = GetMissionV(MS_FIRSTSHOW); 
if (fstshow <= 0) then 
return 
end 

-- script viet hoa By http://tranhba.com  ghi ch�p �u th� ph��ng ��ch danh hi�u 1song ,2jing 
nextgroup = 0; 
if (fstshow == 1) then 
nextgroup = 2 
else 
nextgroup = 1 
end; 

-- script viet hoa By http://tranhba.com  n�u nh� n�n ph��ng xu�t hi�n ch� t��ng ��ch y�u c�u �� ��t t�i , l� �� cho ch� t��ng xu�t hi�n 
		local canshow = GetMissionV(MS_S_SHOWKING + nextgroup - 1);

if (canshow == 1) then 
ShowTheKing(nextgroup); 
			SetMissionV(MS_S_SHOWKING + nextgroup - 1, 2);
end; 
end; 
elseif (timestate == 3) then 
Msg2MSAll("Chi�n d�ch k�t th�c !"); 
StopMissionTimer(1,1); 
end; 

end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  � ghi danh trong l�c , h� th�ng ��nh k� th�ng b�o nh� ch�i tr��c m�t ��ch ghi danh t�nh hu�ng 

if (V == GO_TIME) then 
if (GetMSPlayerCount(1,1) <= 10 or GetMSPlayerCount(1,2) <= 10) then 
AddGlobalCountNews("T�ng kim chi�n tr��ng ghi danh �� ��n gi� , nh�ng tr��c m�t song ph��ng nh�n s� kh�ng ph� h�p y�u c�u , l�n n�y chi�n ��u h�y b� #"); 
GiveBackBonus() 
CloseMission(1) 
return 
else 
AddGlobalCountNews("T�ng kim chi�n tr��ng ghi danh �� ��n gi� , t�ng kim chi�n ��u �� ch�nh th�c b�t ��u !",3); 
logstr = "<#> t�ng kim chi�n tr��ng ch�nh th�c b�t ��u , song ph��ng tham chi�n nh�n s� v� "..GetMSPlayerCount(1,1).."<#>:"..GetMSPlayerCount(1,2); 
WriteLog(logstr) 
Msg2MSAll(1, logstr) 
RunMission(1); 
return 
end 
end; 

if (mod(V, 18) == 0) then 
RestTime = (GO_TIME - V) * 1800 / GO_TIME; 
RestMin, RestSec = GetMinAndSec(RestTime); 
local str1 = "<#> t�ng kim ��i chi�n �ang ti�n v�o ghi danh giai �o�n , mu�n ng��i tham chi�n xin mau s�m � t�ng kim chi�n tr��ng hai nh�p kh�u m�t trong ghi danh , ghi danh c�n th�a l�i th�i gian :"..RestMin.."<#> ph�n . tham chi�n �i�u ki�n : c�p b�c kh�ng nh� v�i 40 c�p , ti�n ghi danh 3000 hai . "; 
AddGlobalCountNews(str1, 2); 
end; 

-- script viet hoa By http://tranhba.com str = "<#> ghi danh giai �o�n : t�ng # kim song ph��ng tr��c m�t t�ng nh�n s� v� :"..GetMSPlayerCount(1,1).."<#>:"..GetMSPlayerCount(1,2); 
-- script viet hoa By http://tranhba.com Msg2MSAll(1, str); 

end; 

function ReportBattle(V) 
-- script viet hoa By http://tranhba.com  chi�n ��u ti�n h�nh trong qu� tr�nh , h� th�ng ��nh k� th�ng b�o c�c phe ��ch t� tr�n t�nh hu�ng 
	s_death = GetMissionV(4) + GetMissionV(8);
	j_death = (GetMissionV(3) + GetMissionV(9));
gametime = (floor(GetMSRestTime(1,5)/18)); 

RestMin, RestSec = GetMinAndSec(gametime); 

s_dpk = GetMissionV(MS_S_DEATHCOUNT); 
j_dpk = GetMissionV(MS_J_DEATHCOUNT); 
s_dnpc = GetMissionV(MS_S_NPCDEATH); 
j_dnpc = GetMissionV(MS_J_NPCDEATH); 

	s_result = floor(j_dpk * 1.5 + j_dnpc);
	j_result = floor(s_dpk * 1.5 + s_dnpc);

str1 = "<#> chi�n ��u giai �o�n : tr��c m�t t�nh hu�ng th��ng vong : t�ng qu�n "..s_death.." ng��i , t�ch ph�n "..s_result.."<#>; qu�n Kim "..j_death.."<#> ng��i , t�ch ph�n "..j_result.."<#> . c�n th�a l�i th�i gian :"..RestMin.."<#> ph�n "..RestSec.."<#> gi�y "; 

Msg2MSAll(1, str1); 

-- script viet hoa By http://tranhba.com  to�n c�u th�ng b�o chi�n hu�ng ch�c n�ng t�t 2004.11.5 
-- script viet hoa By http://tranhba.com  if (mod(V, 24) == 0) then 
-- script viet hoa By http://tranhba.com  str2 = " t�ng kim chi�n tr��ng �ang ti�n h�nh chi�n ��u k�ch li�t ! tr��c m�t t�ng kim th��ng vong v� "..s_death..":"..j_death; 
-- script viet hoa By http://tranhba.com  AddGlobalCountNews(str2 , 1); 
-- script viet hoa By http://tranhba.com  end; 

end; 
