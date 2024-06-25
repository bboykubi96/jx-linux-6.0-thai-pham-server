Include([[\script\missions\tong\tong_disciple\head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

strGlbNews = " c¸c bang sÏ cö hµnh c¸c vÞ nh©n sÜ ®i chiªu mé ®Ö tö , lµm lùc l­îng trõ bÞ ho¹t ®éng ph­êng tæng qu¶n ®ang chê mäi ng­êi ®Ých trî gióp ." 
AddGlobalNews(strGlbNews); 
SetGlbValue(GLB_DIS_PHASE, 1); -- script viet hoa By http://tranhba.com  cã thÓ b¾t ®Çu b¸o danh 
gb_SetTask(CHRISMAS_SHREWMOUSE, 1, 1); 
StartMissionTimer(DIS_PREPAREMISSIONID, DIS_PREPARETIME, DIS_RUNINTERVER); -- script viet hoa By http://tranhba.com  
end; 

function RunMission() 
end; 

function EndMission() 
StopMissionTimer(DIS_PREPAREMISSIONID, DIS_PREPARETIME); 
gameover(DIS_MAPID[1], DIS_PREPAREMISSIONID); 
end; 

function OnLeave() 
end 
