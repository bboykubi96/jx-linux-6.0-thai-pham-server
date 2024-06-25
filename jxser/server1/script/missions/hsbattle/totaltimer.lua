Include("\\script\\missions\\hsbattle\\hshead.lua");

function OnTimer() 

State = GetMissionV(MS_STATE) ; 
if (State == 0) then 
return 
end; 

Rest1 = GetMissionV(MS_TONG1VALUE); 
Rest2 = GetMissionV(MS_TONG2VALUE); 

if (Rest1 > Rest2) then 
Msg2MSAll(MISSIONID, "<#> tranh tµi kÕt thóc ,"..GetMissionS(1).."<#> ®¹t ®­îc th¾ng lîi !"); 
str = "<#> <#> tranh tµi thêi gian kÕt thóc !"..GetMissionS(1).."<#> th¾ng lîi !"..GetMissionS(2).."!"; 
WinBonus(1) 
elseif (Rest2 > Rest1) then 
Msg2MSAll(MISSIONID, "<#> tranh tµi kÕt thóc ,"..GetMissionS(2).."<#> ®¹t ®­îc th¾ng lîi !") 
str = "<#> <#> tranh tµi thêi gian kÕt thóc !"..GetMissionS(2).."<#> th¾ng lîi !"..GetMissionS(1).."<#>!"; 
WinBonus(2) 
else 
if (GetTotalLevel() == 1) then 
Msg2MSAll(MISSIONID, "<#> tranh tµi kÕt thóc ,"..GetMissionS(1).."<#> ®¹t ®­îc th¾ng lîi !") 
str = "<#> <#> tranh tµi thêi gian kÕt thóc !"..GetMissionS(1).."<#> th¾ng lîi !"..GetMissionS(2).."<#>!"; 
WinBonus(1) 
else 
Msg2MSAll(MISSIONID, "<#> tranh tµi kÕt thóc ,"..GetMissionS(2).."<#> ®¹t ®­îc th¾ng lîi !") 
str = "<#> <#> tranh tµi thêi gian kÕt thóc !"..GetMissionS(2).."<#> th¾ng lîi !"..GetMissionS(1).."<#>!"; 
WinBonus(2) 
end; 
end; 
AddGlobalNews(str); 
SetMissionV(MS_STATE,3); 
CloseMission(MISSIONID); 
end; 

function GetTotalLevel() 
idx = 0; 
nTotalLevel1 = 0; 
nTotalLevel2 = 0; 

for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 1); 

if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
   			nTotalLevel1 = nTotalLevel1 + GetLevel();
end 
end; 

idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 2); 

if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
   			nTotalLevel2 = nTotalLevel2 + GetLevel();
end 
end; 

if (nTotalLevel1 < nTotalLevel2) then 
return 1 
else 
return 0 
end; 
end; 