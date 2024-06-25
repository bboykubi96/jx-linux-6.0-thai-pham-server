Include("\\script\\missions\\ËÎ½ğÕ½³¡PKÕ½\\ËÎ½ğÕ½³¡Í·ÎÄ¼ş.lua");

function InitMission() 
-- script viet hoa By http://tranhba.com Msg2Player("ChiÕn sù khÈn cÊp , ®¹i chiÕn võa ch¹m vµo tøc ph¸t ."); 
StartMissionTimer(1,4,TIMER_1); 
SetMissionV(1,1);-- script viet hoa By http://tranhba.com  cho phĞp b¸o danh 
SetMissionV(MS_KEY, random(100000)) 
RevivalAllNpc(); 
HideNpc("Nam Tèng t­íng qu©n ",1000000); 
HideNpc("Kim quèc §¹i t­íng ",1000000); 

RestMin, RestSec = GetMinAndSec(1800); 
local str1 = "<#> tèng kim ®¹i chiÕn ®ang tiÕn vµo ghi danh giai ®o¹n , muèn ng­êi tham chiÕn xin mau sím ë tèng kim chiÕn tr­êng hai nhËp khÈu mét trong ghi danh , ghi danh cßn thõa l¹i thêi gian :"..RestMin.."<#> ph©n "..RestSec.."<#> gi©y ".."<#> . tham chiÕn ®iÒu kiÖn : cÊp bËc kh«ng nhá víi 40 cÊp , tiÒn ghi danh 3000 hai . "; 
AddGlobalCountNews(str1, 1); 
end; 

function RunMission() 
SetMissionV(1,2); 
SetMissionV(MS_J_NPCDEATH, 0); 
SetMissionV(MS_S_NPCDEATH, 0); 
SetMissionV(MS_S_SHOWKING, 0); 
SetMissionV(MS_J_SHOWKING, 0); 
RevivalAllNpc(); 
HideNpc("Nam Tèng t­íng qu©n ",1000000); 
HideNpc("Kim quèc §¹i t­íng ",1000000); 
HideNpc("Tèng qu©n qu©n y ",1000000); 
HideNpc("Kim quèc qu©n y ",1000000); 
idx = 0; 

for i = 1 , 500 do 
idx, pidx = GetNextPlayer(1,idx, 0); 

if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
SetFightState(1); 
end; 

-- script viet hoa By http://tranhba.com  lóc nµy v× GM ph¸t ra mÖnh lÖnh , chİnh thøc ®¸nh vang chiÕn ®Êu 
PutMessage("§Şch qu©n ®· b¾t ®Çu hµnh ®éng , c¸c t­íng sÜ ch¹y tíi tiÒn tuyÕn , phÊn dòng giÕt ®Şch nha !"); 
end; 

StartMissionTimer(1,5, TIMER_2); 
end; 

function EndMission() 

for i = 1, 20 do 
SetMissionV(i , 0); 
end; 

StopMissionTimer(1,4); 
StopMissionTimer(1,5); 
GameOver(); 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
str2 = GetName().." thèi lui ra khái chiÕn tr­êng "; 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nhµ ch¬i r¬i tuyÕn còng sÏ tõ Mission trung OnLeave , v× vËy kh«ng thÓ ë chç nµy ®iÒu dông SetLogoutRV(0) , nhÊt ®Şnh ph¶i ë ®em nhµ ch¬i NewWorld ra Mission b¶n ®å ®İch ®Şa ph­¬ng ®iÒu dông Fanghao_Wu 2006-3-21 
SetPKFlag(0) 
ForbidChangePK(0); 
Msg2MSAll(1, str2); 
end; 
