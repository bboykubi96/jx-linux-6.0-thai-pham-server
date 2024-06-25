Include("\\script\\missions\\citywar_arena\\head.lua");

function OnTimer() 
timestate = GetMissionV(MS_STATE); 
V = GetMissionV(MS_NEWSVALUE); 
	SetMissionV(MS_NEWSVALUE, V + 1);

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
StopMissionTimer(MISSIONID, 16); 
StopMissionTimer(MISSIONID, 17); 
end; 
end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  ë ghi danh trong lóc , hÖ thèng ®Þnh kú th«ng b¸o nhµ ch¬i tr­íc mÆt ®Ých ghi danh t×nh huèng 
if (V == GO_TIME) then 
Msg2MSAll(MSSIONID,"Nh©n sè ®· ®ñ , tranh tµi chÝnh thøc b¾t ®Çu "); 
msgstr = format("Bang héi %s cïng %s ®· më míi tranh tµi : b©y giê song ph­¬ng nh©n sè lµ # %d - %d.", GetMissionS(1), GetMissionS(2), GetMSPlayerCount(MISSIONID, 1), GetMSPlayerCount(MISSIONID, 2)); 
WriteLog(msgstr) 
RunMission(MISSIONID); 
return 
end; 
RestTime = (GO_TIME - V) * 20; 
RestMin, RestSec = GetMinAndSec(RestTime); 
local str1 = " tiÕn vµo cuéc so tµi trµng thêi gian <#> cßn cã "..RestMin.."<#> ph©n , khiªu chiÕn ®éi xin/mêi lËp tøc vµo trµng ." 
str1 = " khiªu chiÕn thµnh trËn <#> ®ang vµo trµng giai ®o¹n , song ph­¬ng nhanh lªn vµo trµng . song ph­¬ng nh©n sè "..GetMSPlayerCount(MISSIONID, 1).."<#>:"..GetMSPlayerCount(MISSIONID, 2).."<#>. vµo trµng thêi gian cßn cã : "..RestMin.."<#> ph©n "..RestSec.."<#> gi©y "; 
Msg2MSAll(MISSIONID, str1); 
end; 

function ReportBattle(V) 
-- script viet hoa By http://tranhba.com  chiÕn ®Êu tiÕn hµnh trong qu¸ tr×nh , hÖ thèng ®Þnh kú th«ng b¸o c¸c phe ®Ých tö trËn t×nh huèng 
if (GetMSPlayerCount(MISSIONID, 1) <= 0 ) then 
Msg2MSAll(MISSIONID, "<#>. tranh tµi kÕt thóc "..GetMissionS(2).."<#> lÊy ®­îc th¾ng lîi cuèi cïng !"); 
WinBonus(2) 
CloseMission(MISSIONID); 
return 
end; 

if (GetMSPlayerCount(MISSIONID, 2) <= 0 ) then 
Msg2MSAll(MISSIONID, "<#>. tranh tµi kÕt thóc "..GetMissionS(1).."<#> lÊy ®­îc th¾ng lîi cuèi cïng !"); 
WinBonus(1) 
CloseMission(MISSIONID); 
return 
end; 

gametime = (floor(GetMSRestTime(MISSIONID,17)/18)); 
RestMin, RestSec = GetMinAndSec(gametime); 
str1 = " tranh tµi giai ®o¹n <#>: b©y giê song ph­¬ng nh©n sè # hoµng ph­¬ng "..GetMSPlayerCount(MISSIONID, 1).."<#>, tö ph­¬ng "..GetMSPlayerCount(MISSIONID, 2).."<#>. cßn thõa l¹i thêi gian "..RestMin.."<#> ph©n "..RestSec.."<#> gi©y "; 
Msg2MSAll(MISSIONID, str1); 
end; 
