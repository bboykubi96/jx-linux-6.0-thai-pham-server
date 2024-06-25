Include([[\script\missions\chrismas\ch_head.lua]]); 
Include("\\script\\lib\\gb_taskfuncs.lua")

function InitMission() 
local i; 
for i = 1, 40 do 
SetMissionV(i, 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, ""); 
end; 

strGlbNews = " l¹i cã mét nhãm ng­êi míi ®Õn t×m mÊt m¸c ®Ých lÔ vËt . " 
AddGlobalNews(strGlbNews); 
gb_SetTask("Gi¸ng sinh ho¹t ®éng ", 1, 1); 
SetGlbValue(GLB_CH_PHASE, 1); -- script viet hoa By http://tranhba.com  cã thÓ b¾t ®Çu b¸o danh 
StartMissionTimer(CH_PREPAREMISSIONID, CH_PREPARETIME, CH_RUNINTERVER); -- script viet hoa By http://tranhba.com  
end; 

function RunMission() 
SetGlbValue(GLB_CH_PHASE, 2); -- script viet hoa By http://tranhba.com  cÊm chØ ®i vµo n÷a ghi danh 
end; 

function EndMission() 
StopMissionTimer(CH_PREPAREMISSIONID, CH_PREPARETIME); 
SetGlbValue(GLB_CH_PHASE, 3); -- script viet hoa By http://tranhba.com  cÊm chØ ®i vµo n÷a ghi danh 
gb_SetTask("Gi¸ng sinh ho¹t ®éng ", 1, 2); 
end; 

function OnLeave() 
end 
