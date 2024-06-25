Include("\\script\\missions\\ËÎ½ğÕ½³¡PKÕ½\\ËÎ½ğÕ½³¡Í·ÎÄ¼ş.lua");

function OnDeath() 

State = GetMissionV(1) ; 
if (State ~= 2) then 
return 
end; 

if ( GetMissionV(5) + GetMissionV(6) >= (MAX_S_COUNT + MAX_J_COUNT) * 7 / 10) then
if (random(100) > 60) then 
return 
end; 
AddEventItem(195); 
Msg2Player("Ngµi thu ®­îc nh¹c v­¬ng kiÕm !"); 
end; 

-- script viet hoa By http://tranhba.com  c©u nµy lµ cho tÊt c¶ tham gia ®¹i chiÕn ®İch nhµ ch¬i ph¸t tin tøc 
str1 = "<#> tèng kim chiÕn dŞch kÕt qu¶ : kim ph­¬ng t­íng sÜ "..GetName().."<#> giÕt chÕt tèng ph­¬ng §¹i t­íng , kim ph­¬ng ®¹t ®­îc th¾ng lîi !"; 

-- script viet hoa By http://tranhba.com  phİa d­íi c©u nµy lµ cho chiÕn th¾ng ph­¬ng ph¸t tin tøc , vui mõng khİch lÖ lêi cña ! 
str = "<#> thËt tèt qu¸ #["..GetName().."<#>] giÕt chÕt tèng ®em , chóng ta ng­êi Kim th¾ng cuéc chiÕn ®Êu nµy ! c¸c t­íng sÜ hoan h« nha #"; 

Msg2MSAll(1, str1); 
Msg2MSGroup(1, str, 2); 
resultstr = WinBonus(2, 1); 
str1 = str1..resultstr; 
SetMissionV(2,1); 
SetMissionV(MS_STATE,3); 
AddGlobalCountNews(str1, 3); 
CloseMission(1); 
end; 
