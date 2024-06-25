Include("\\script\\missions\\tongwar\\match\\head.lua")

function OnTimer() 
	t = GetMissionV(MS_TIMER1) + 1;-- script viet hoa By http://tranhba.com ¼ÆÊýÆ÷£¬Í³¼Æµ±Ç°¶¨Ê±Æ÷´¥·¢ÁË¶àÉÙ´ÎÁË
SetMissionV(MS_TIMER1, t) 


if (t == RUNGAME_TIME) then -- script viet hoa By http://tranhba.com  nÕu nh­ ®Õn chÝnh thøc khai chiÕn thêi kh¾c , lµ dõng l¹i ghi danh , chÝnh thøc tiÕn vµo chiÕn ®Êu giai ®o¹n 
RunMission(MISSIONID) 
AddGlobalNews("' vâ l©m ®Ö nhÊt bang '"..GetMissionS(MS_S_CITYNAME_S).." cïng "..GetMissionS(MS_S_CITYNAME_J).." - tranh tµi b¾t ®Çu ."); 
WriteLog("tongwar is entering fight state.") 
end 

if (t < RUNGAME_TIME and mod(t, 18) == 0) then 
RestTime = (RUNGAME_TIME - t) * TIMER_1 / FRAME2TIME 
RestMin, RestSec = GetMinAndSec(RestTime); 
if (RestSec == 0) then 
str2 = " rêi ®i thêi chiÕn ®ang lóc cßn l¹i :"..RestMin.." ph©n " 
else 
str2 = " rêi ®i thêi chiÕn ®ang lóc cßn l¹i :"..RestMin.." ph©n "..RestSec.." gi©y " 
end 
Msg2MSAll(MISSIONID,str2); -- script viet hoa By http://tranhba.com  th«ng b¸o bªn trong s©n nhµ ch¬i khai chiÕn cßn thõa l¹i thêi gian 
end 

if (t > RUNGAME_TIME) then 
		if (t >= RUNGAME_TIME + 15) then
-- script viet hoa By http://tranhba.com  nÕu nh­ trµng th­îng mét trËn doanh nh©n sè thÊp h¬n nhá nhÊt sè l­îng , lµ tranh tµi kÕt thóc , nhiÒu ng­êi ®Ých trËn doanh trùc tiÕp chiÕn th¾ng 
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

-- script viet hoa By http://tranhba.com  mçi mét phót th«ng b¸o tr­íc mÆt song ph­¬ng tÝch ph©n , cïng npc 
if (mod(t, 3) == 0 ) then 
msstr = " c«ng bè # tr­íc m¾t , liªn minh tæng ph©n "..GetMissionS(MS_S_CITYNAME_S).." cïng liªn minh "..GetMissionS(MS_S_CITYNAME_J).." v× <color=yellow>"..GetMissionV(MS_TOTALPOINT_S)..":"..GetMissionV(MS_TOTALPOINT_J); 
Msg2MSAll(MISSIONID, msstr) 
end 
if (mod(t, 30) == 0) then 
RestTime = floor(GetMSRestTime(MISSIONID, 62) / 18) 
RestMin, RestSec = GetMinAndSec(RestTime); 
if (RestSec == 0) then 
str2 = " tranh tµi cßn thõa l¹i thêi gian :"..RestMin.." ph©n " 
else 
str2 = " tranh tµi cßn thõa l¹i thêi gian :"..RestMin.." ph©n "..RestSec.." gi#" 
end 
Msg2MSAll(MISSIONID,"<color=blue>"..str2.."<color>"); -- script viet hoa By http://tranhba.com  th«ng b¸o bªn trong s©n nhµ ch¬i khai chiÕn cßn thõa l¹i thêi gian 
end 
but_pop2home( 1 ) 
but_pop2home( 2 ) 
end 

end 
