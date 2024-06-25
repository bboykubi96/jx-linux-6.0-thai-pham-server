Include("\\script\\missions\\hsbattle\\hshead.lua");

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
Msg2MSAll(MISSIONID,"ChiÕn ®Êu kÕt thóc "); 
StopMissionTimer(MISSIONID, 14); 
StopMissionTimer(MISSIONID, 15); 
end; 
end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  ë ghi danh trong lóc , hÖ thèng ®Þnh kú th«ng b¸o nhµ ch¬i tr­íc mÆt ®Ých ghi danh t×nh huèng 
if (V == GO_TIME) then 
Msg2MSAll(MSSIONID,"TiÕn vµo nh©n sè ®· ®ñ , tranh tµi chÝnh thøc b¾t ®Çu "); 
RunMission(MISSIONID); 
return 
end; 
RestTime = (GO_TIME - V) * 20; 
RestMin, RestSec = GetMinAndSec(RestTime); 
local str1 = " tiÕn vµo cuéc so tµi trµng thêi gian <#> cßn cã "..RestMin.."<#> phót , khiªu chiÕn ®éi xin/mêi lËp tøc tiÕn vµo cuéc so tµi trµng ." 
str1 = " khiªu chiÕn cuéc so tµi <#> ®ang ®øng ë tiÕn vµo cuéc so tµi trµng tr¹ng th¸i , song ph­¬ng sÏ kÕ tiÕn vµo cuéc so tµi trµng . song ph­¬ng nh©n sè "..GetMSPlayerCount(MISSIONID, 1).."<#>:"..GetMSPlayerCount(MISSIONID, 2).."<#>. tiÕn vµo ®Êu trµng thêi gian cßn l¹i : "..RestMin.."<#> phót "..RestSec.."<#> gi# "; 
Msg2MSAll(MISSIONID, str1); 
end; 

function ReportBattle(V) 
-- script viet hoa By http://tranhba.com  chiÕn ®Êu tiÕn hµnh trong qu¸ tr×nh , hÖ thèng ®Þnh kú th«ng b¸o c¸c phe ®Ých tö trËn t×nh huèng 
if (GetMSPlayerCount(MISSIONID, 1) <= 0 ) then 
Msg2MSAll(MISSIONID, "<#>. tranh tµi kÕt thóc ,"..GetMissionS(2).."<#> ®¹t ®­îc th¾ng lîi cuèi cïng !"); 
WinBonus(2) 
CloseMission(MISSIONID); 
return 
end; 

if (GetMSPlayerCount(MISSIONID, 2) <= 0 ) then 
Msg2MSAll(MISSIONID, "<#>. tranh tµi kÕt thóc ,"..GetMissionS(1).."<#> ®¹t ®­îc th¾ng lîi cuèi cïng !"); 
WinBonus(1) 
CloseMission(MISSIONID); 
return 
end; 

s_value = GetMissionV(MS_TONG1VALUE); 
j_value = GetMissionV(MS_TONG2VALUE); 

gametime = (floor(GetMSRestTime(MISSIONID,15)/18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str1 = "<#> chiÕn ®Êu giai ®o¹n # tr­íc m¾t tÝch ph©n v× # kim ph­¬ng :"..s_value.."<#>, tö ph­¬ng "..j_value.."<#>. cßn l¹i thêi gian "..RestMin.."<#> phót "..RestSec.."<#> gi©y "; 
Msg2MSAll(MISSIONID, str1); 
end; 
