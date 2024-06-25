Include("\\script\\missions\\championship\\tryout\\head.lua")
function InitMission() 
for i = 1, 100 do 
SetMissionV(i , 0); 
end; 
SetMissionS(1, "") 
SetMissionS(2, "") 
StartMissionTimer(MISSIONID, 34, TRYOUT_TIMER_2); 
StartMissionTimer(MISSIONID, 33, TRYOUT_TIMER_1); 

SetMissionV(MS_STATE,1);-- script viet hoa By http://tranhba.com  cho phÐp b¸o danh 
RunMission(MISSIONID) 
end; 

function RunMission() 
end; 

function EndMission() 
StopMissionTimer(MISSIONID, 33); 
StopMissionTimer(MISSIONID, 34); 
GameOver(); 
for i = 1, 100 do 
SetMissionV(i , 0); 
end; 
if(tonumber(date("%y%m%d%H")) >= CP_END_TRYOUT) then 
resultstr = " ®¹i héi vâ l©m m«n ph¸i dù chän cuéc so tµi ®· kÕt thóc , xin/mêi c¸c vÞ ®Õn tr­íc khi an thÊy ®¹i héi vâ l©m quan viªn (182, 203) nh×n danh s¸ch . danh s¸ch trung ®Ých nhµ ch¬i cã thÓ ®Õn vò l©m ®¹i héi quan viªn chç (182, 203) dÉn danh hiÖu ." 
else 
resultstr = " h«m nay ®¹i héi vâ l©m dù chän cuéc so tµi ®· kÕt thóc , c¸c vÞ tuyÓn thñ ngµy mai ­íc ®Þnh trë l¹i ®i ." 
end 
AddGlobalNews(resultstr) 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nhµ ch¬i r¬i tuyÕn còng sÏ tõ Mission trung OnLeave , v× vËy kh«ng thÓ ë chç nµy ®iÒu dông SetLogoutRV(0) , nhÊt ®Þnh ph¶i ë ®em nhµ ch¬i NewWorld ra Mission b¶n ®å ®Ých ®Þa ph­¬ng ®iÒu dông Fanghao_Wu 2006-3-21 
ForbidChangePK(0); 
SetCreateTeam(1); 
DisabledStall(0) -- script viet hoa By http://tranhba.com  cho phÐp bµy s¹p 
SetTaskTemp(200, 0) 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
ForbidChangePK(0); 
ForbitTrade(0); 
RestoreOwnFeature(); 
end;
