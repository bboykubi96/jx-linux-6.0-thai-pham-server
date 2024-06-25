Include("\\script\\missions\\challenge\\challengehead.lua");

function OnTimer() 
timestate = GetMissionV(MS_STATE); 
V = GetMissionV(MS_NEWSVALUE); 
	SetMissionV(MS_NEWSVALUE, V+1);

if (V == GO_TIME) then 
RunMission(MISSIONID) 
return 
end 

-- script viet hoa By http://tranhba.com  ghi danh giai ®o¹n 
if (timestate == 1) then 
ReportMemberState(V); 
elseif (timestate == 2) then -- script viet hoa By http://tranhba.com  khai chiÕn 
ReportBattle(V); 
elseif (timestate == 3) then -- script viet hoa By http://tranhba.com  chiÕn ®Êu kÕt thóc 
Msg2MSAll(MISSIONID,"ChiÕn dÞch kÕt thóc "); 
StopMissionTimer(MISSIONID, 10); 
StopMissionTimer(MISSIONID, 11); 
end; 
end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  ë ghi danh trong lóc , hÖ thèng ®Þnh kú th«ng b¸o nhµ ch¬i tr­íc mÆt ®Ých ghi danh t×nh huèng 
if (V == GO_TIME) then 
if (GetMSPlayerCount(MISSIONID,1) == 0 or GetMSPlayerCount(MISSIONID , 2) == 0) then 
Msg2MSAll(MISSIONID,"Ghi danh ®· kÕt thóc , nh­ng lµ song ph­¬ng nh©n sè còng cßn kh«ng phï hîp yªu cÇu , hñy bá tranh tµi "); 
CloseMission(MISSIONID) 
return 
else 
Msg2MSAll(MSSIONID,"Ghi danh ®· kÕt thóc , tranh tµi chÝnh thøc b¾t ®Çu "); 
RunMission(MISSIONID); 
return 
end 
end; 
RestTime = (GO_TIME - V) * 20; 
RestMin, RestSec = GetMinAndSec(RestTime); 
local str1 = "<#> khiªu chiÕn ®ang ghi danh giai ®o¹n , khiªu chiÕn ph­¬ng xin/mêi nhanh lªn vµo trµng "..RestMin.."<#> ph©n "; 
str1 = "<#> khiªu chiÕn ®ang ghi danh giai ®o¹n , c¸c khiªu chiÕn ®éi xin mau sím vµo trµng # song ph­¬ng nh©n sè lµ :"..GetMSPlayerCount(MISSIONID, 1)..","..GetMSPlayerCount(MISSIONID, 2).."<#>. ghi danh thêi gian cßn cã :"..RestMin.."<#> ph©n "..RestSec.."<#> gi©y "; 
Msg2MSAll(MISSIONID, str1); 
end; 

function ReportBattle(V) 
-- script viet hoa By http://tranhba.com  chiÕn ®Êu tiÕn hµnh trong qu¸ tr×nh , hÖ thèng ®Þnh kú th«ng b¸o c¸c phe ®Ých tö trËn t×nh huèng 
if (GetMSPlayerCount(MISSIONID, 1) <= 0 ) then 
Msg2MSAll(MISSIONID,"ChiÕn ®Êu kÕt thóc , tö ph­¬ng lÊy ®­îc th¾ng lîi cuèi cïng "); 
CloseMission(MISSIONID); 
return 
end; 

if (GetMSPlayerCount(MISSIONID, 2) <= 0 ) then 
Msg2MSAll(MISSIONID,"ChiÕn ®Êu kÕt thóc , hoµng ph­¬ng lÊy ®­îc th¾ng lîi cuèi cïng "); 
CloseMission(MISSIONID); 
return 
end; 

s_death = GetMissionV(MS_S_DEATHCOUNT); 
j_death = GetMissionV(MS_J_DEATHCOUNT); 
gametime = (floor(GetMSRestTime(MISSIONID,11)/18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str1 = "<#> chiÕn ®Êu giai ®o¹n . t×nh huèng th­¬ng vong lµ : hoµng ph­¬ng :"..s_death.."<#> ng­êi , tö ph­¬ng :"..j_death.."<#> ng­êi . thêi gian cßn l¹i "..RestMin.."<#> ph©n "..RestSec.."<#> gi©y "; 
Msg2MSAll(MISSIONID, str1); 
end; 
