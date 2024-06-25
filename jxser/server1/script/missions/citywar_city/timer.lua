Include("\\script\\missions\\citywar_city\\head.lua");

function OnTimer() 
timestate = GetMissionV(MS_STATE); 
V = GetMissionV(MS_NEWSVALUE); 
	SetMissionV(MS_NEWSVALUE, V+1);
if (timestate == 2) then -- script viet hoa By http://tranhba.com  khai chiÕn 
ReportBattle(V); 
end; 
end; 

function ReportBattle(V) 
-- script viet hoa By http://tranhba.com  chiÕn ®Êu tiÕn hµnh trong qu¸ tr×nh , hÖ thèng ®Þnh kú th«ng b¸o bia ®¸ ®Ých t×nh huèng 
gametime = (floor(GetMSRestTime(MISSIONID,13) / 18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str = format("B©y giê %s b©y giê xö vu kÞch liÖt tranh ®o¹t giai ®o¹n ! thêi gian cßn l¹i %d ph©n %d gi©y ; b©y giê %d long trô ®· kh«i phôc thuéc tÝnh ", GetGameCity(), RestMin, RestSec, MS_SYMBOLCOUNT); 
for i = 1, MS_SYMBOLCOUNT do 
		if (GetMissionV(MS_SYMBOLBEGIN + i - 1)  == 1) then
str = str .. " phßng thñ ph­¬ng " ; 
else 
str = str .. " tiÕn c«ng ph­¬ng "; 
end; 
end; 

-- script viet hoa By http://tranhba.com 2004.11.5 t¾t h­íng toµn cÇu gëi loa ph¸t thanh ®Ých chøc n¨ng 
-- script viet hoa By http://tranhba.com if (mod(V, 18) == 0) then 
-- script viet hoa By http://tranhba.com  AddGlobalNews(str) 
-- script viet hoa By http://tranhba.com else 
Msg2MSAll(MISSIONID, str) 
-- script viet hoa By http://tranhba.com end; 
end; 
