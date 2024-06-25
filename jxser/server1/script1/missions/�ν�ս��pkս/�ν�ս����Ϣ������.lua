Include("\\script\\missions\\ËÎ½ðÕ½³¡PKÕ½\\ËÎ½ðÕ½³¡Í·ÎÄ¼þ.lua");
function OnTimer() 
timestate = GetMissionV(MS_STATE); 
V = GetMissionV(MS_NEWSVALUE); 
	SetMissionV(MS_NEWSVALUE,V + 1);

-- script viet hoa By http://tranhba.com  ghi danh giai ®o¹n 
if (timestate == 1) then 
ReportMemberState(V); 
elseif (timestate == 2) then 
ReportBattle(V); 

-- script viet hoa By http://tranhba.com  nÕu nh­ ®· v­ît qua giai ®o¹n thø nhÊt , h¬n n÷a kh«ng cã bÊt kú chñ t­íng xuÊt hiÖn lóc 
if (V >= SHOWKINGTIME1 and GetMissionV(MS_FIRSTSHOW) == 0) then 
s_show = GetMissionV(MS_S_SHOWKING); 
j_show = GetMissionV(MS_J_SHOWKING); 

-- script viet hoa By http://tranhba.com  nÕu nh­ tr­íc mÆt chØ cã nhÊt ph­¬ng phï hîp c¨n b¶n ®Ých chñ t­íng xuÊt hiÖn yªu cÇu lµ , ®Ó cho kú chñ s¾p xuÊt hiÖn hiÖn 
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

-- script viet hoa By http://tranhba.com  nÕu nh­ hai phe còng ®¹t tíi c¨n b¶n xuÊt hiÖn chñ t­íng ®Ých yªu cÇu , lµ c¨n cø song ph­¬ng tr­íc mÆt tÝch ph©n x¸c ®Þnh 
if (s_show == 1 and j_show == 1) then 
s_dpk = GetMissionV(MS_S_DEATHCOUNT);-- script viet hoa By http://tranhba.com  nhµ ch¬i PK tö vong sè l­îng 
j_dpk = GetMissionV(MS_J_DEATHCOUNT); 
s_dnpc = GetMissionV(MS_S_NPCDEATH);-- script viet hoa By http://tranhba.com NPC tö vong sè l­îng 
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

-- script viet hoa By http://tranhba.com  nÕu nh­ ®· ®Õn giai ®o¹n thø hai , tøc ­u thÕ ph­¬ng chñ t­íng cã thÓ xuÊt hiÖn 
if (V >= SHOWKINGTIME2) then 
-- script viet hoa By http://tranhba.com  nÕu nh­ tr­íc mÆt v« bÊt kú ph­¬ng chñ t­íng xuÊt hiÖn , lµ trùc tiÕp trë vÒ 
local fstshow = GetMissionV(MS_FIRSTSHOW); 
if (fstshow <= 0) then 
return 
end 

-- script viet hoa By http://tranhba.com  ghi chÐp ­u thÕ ph­¬ng ®Ých danh hiÖu 1song ,2jing 
nextgroup = 0; 
if (fstshow == 1) then 
nextgroup = 2 
else 
nextgroup = 1 
end; 

-- script viet hoa By http://tranhba.com  nÕu nh­ nªn ph­¬ng xuÊt hiÖn chñ t­íng ®Ých yªu cÇu ®· ®¹t tíi , lµ ®Ó cho chñ t­íng xuÊt hiÖn 
		local canshow = GetMissionV(MS_S_SHOWKING + nextgroup - 1);

if (canshow == 1) then 
ShowTheKing(nextgroup); 
			SetMissionV(MS_S_SHOWKING + nextgroup - 1, 2);
end; 
end; 
elseif (timestate == 3) then 
Msg2MSAll("ChiÕn dÞch kÕt thóc !"); 
StopMissionTimer(1,1); 
end; 

end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  ë ghi danh trong lóc , hÖ thèng ®Þnh kú th«ng b¸o nhµ ch¬i tr­íc mÆt ®Ých ghi danh t×nh huèng 

if (V == GO_TIME) then 
if (GetMSPlayerCount(1,1) <= 10 or GetMSPlayerCount(1,2) <= 10) then 
AddGlobalCountNews("Tèng kim chiÕn tr­êng ghi danh ®· ®Õn giê , nh­ng tr­íc m¾t song ph­¬ng nh©n sè kh«ng phï hîp yªu cÇu , lÇn nµy chiÕn ®Êu hñy bá #"); 
GiveBackBonus() 
CloseMission(1) 
return 
else 
AddGlobalCountNews("Tèng kim chiÕn tr­êng ghi danh ®· ®Õn giê , tèng kim chiÕn ®Êu ®· chÝnh thøc b¾t ®Çu !",3); 
logstr = "<#> tèng kim chiÕn tr­êng chÝnh thøc b¾t ®Çu , song ph­¬ng tham chiÕn nh©n sè v× "..GetMSPlayerCount(1,1).."<#>:"..GetMSPlayerCount(1,2); 
WriteLog(logstr) 
Msg2MSAll(1, logstr) 
RunMission(1); 
return 
end 
end; 

if (mod(V, 18) == 0) then 
RestTime = (GO_TIME - V) * 1800 / GO_TIME; 
RestMin, RestSec = GetMinAndSec(RestTime); 
local str1 = "<#> tèng kim ®¹i chiÕn ®ang tiÕn vµo ghi danh giai ®o¹n , muèn ng­êi tham chiÕn xin mau sím ë tèng kim chiÕn tr­êng hai nhËp khÈu mét trong ghi danh , ghi danh cßn thõa l¹i thêi gian :"..RestMin.."<#> ph©n . tham chiÕn ®iÒu kiÖn : cÊp bËc kh«ng nhá víi 40 cÊp , tiÒn ghi danh 3000 hai . "; 
AddGlobalCountNews(str1, 2); 
end; 

-- script viet hoa By http://tranhba.com str = "<#> ghi danh giai ®o¹n : tèng # kim song ph­¬ng tr­íc mÆt tæng nh©n sè v× :"..GetMSPlayerCount(1,1).."<#>:"..GetMSPlayerCount(1,2); 
-- script viet hoa By http://tranhba.com Msg2MSAll(1, str); 

end; 

function ReportBattle(V) 
-- script viet hoa By http://tranhba.com  chiÕn ®Êu tiÕn hµnh trong qu¸ tr×nh , hÖ thèng ®Þnh kú th«ng b¸o c¸c phe ®Ých tö trËn t×nh huèng 
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

str1 = "<#> chiÕn ®Êu giai ®o¹n : tr­íc m¾t t×nh huèng th­¬ng vong : tèng qu©n "..s_death.." ng­êi , tÝch ph©n "..s_result.."<#>; qu©n Kim "..j_death.."<#> ng­êi , tÝch ph©n "..j_result.."<#> . cßn thõa l¹i thêi gian :"..RestMin.."<#> ph©n "..RestSec.."<#> gi©y "; 

Msg2MSAll(1, str1); 

-- script viet hoa By http://tranhba.com  toµn cÇu th«ng b¸o chiÕn huèng chøc n¨ng t¾t 2004.11.5 
-- script viet hoa By http://tranhba.com  if (mod(V, 24) == 0) then 
-- script viet hoa By http://tranhba.com  str2 = " tèng kim chiÕn tr­êng ®ang tiÕn hµnh chiÕn ®Êu kÞch liÖt ! tr­íc m¾t tèng kim th­¬ng vong v× "..s_death..":"..j_death; 
-- script viet hoa By http://tranhba.com  AddGlobalCountNews(str2 , 1); 
-- script viet hoa By http://tranhba.com  end; 

end; 
