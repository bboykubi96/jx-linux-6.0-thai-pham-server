Include("\\script\\missions\\citywar_city\\head.lua");

function OnTimer() 
WriteLog(GetLoop().." ®Õn thêi gian chiÕn ®Êu liÔu . "); 
timestate = GetMissionV(MS_STATE); 
str = format("%s tranh ®o¹t thêi gian kÕt thóc !! b©y giê %d lÊy heo ®· kh«i phôc thuéc tÝnh ", GetGameCity(), MS_SYMBOLCOUNT); 
for i = 1, MS_SYMBOLCOUNT do 
		if (GetMissionV(MS_SYMBOLBEGIN + i - 1)  == 1) then
str = str .. " phßng thñ ph­¬ng " ; 
else 
str = str .. " tiÕn c«ng ph­¬ng "; 
end; 
end; 

if (timestate == 2) then -- script viet hoa By http://tranhba.com  khai chiÕn trung 
nCount = CheckWin(); 
if (nCount > MS_SYMBOLCOUNT / 2) then 
str = format("Cuèi cïng tiÕn c«ng ph­¬ng %s: %s lÊy ®­îc hoµn toµn th¾ng lîi ! lÊy ®­îc quyÒn thèng trÞ %s?",str,GetGamerName(2),GetGameCity()); 
AddGlobalNews(str); 
GameWin(2) 
return 
else 
str = format("Cuèi cïng phßng thñ ph­¬ng %s: %s hoµn toµn th¾ng lîi ! tiÕp tôc duy tr× thèng trÞ %s?",str,GetGamerName(2),GetGameCity()); 
AddGlobalNews(str); 
GameWin(1) 
return 
end; 
end; 

CloseMission(MISSIONID); 
end; 
