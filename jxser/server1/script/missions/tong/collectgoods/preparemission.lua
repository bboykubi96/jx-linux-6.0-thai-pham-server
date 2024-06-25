Include([[\script\missions\tong\collectgoods\head.lua]]); 

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

strGlbNews = " minh chñ vâ l©m ®ang triÖu tËp mäi ng­êi sÜ ®i t×m t©y h¹ th­¬ng nh©n hµng hãa ®¹i trë l¹i , mäi ng­êi cã thÓ ®Õn ho¹t ®éng ph­êng tæng qu¶n chç ghi danh tham gia ." 
AddGlobalNews(strGlbNews); 
SetGlbValue(GLB_COLLG_PHASE, 1); -- script viet hoa By http://tranhba.com  cã thÓ b¾t ®Çu b¸o danh 
gb_SetTask(COLLG_NAME, 1, 1); 
StartMissionTimer(COLLG_PREPAREMISSIONID, COLLG_PREPARETIME, COLLG_RUNINTERVER); 
end; 

function RunMission() 
end; 

function EndMission() 
StopMissionTimer(COLLG_PREPAREMISSIONID, COLLG_PREPARETIME); 
SetGlbValue(GLB_COLLG_PHASE, 2); -- script viet hoa By http://tranhba.com  cÊm chØ ®i vµo n÷a ghi danh 
gb_SetTask(COLLG_NAME, 1, 2); 
collg_gameover(COLLG_MAPID[1], COLLG_PREPAREMISSIONID); 
end; 

function OnLeave() 
end 
