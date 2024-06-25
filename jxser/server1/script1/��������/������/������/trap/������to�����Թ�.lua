-- script viet hoa By http://tranhba.com  t©y nam nam khu thóy khãi cöa to cÊm ®Þa mª cung # thóy khãi 60 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com Trap ID# t©y nam nam khu 17 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-09) 

function main(sel) 
UTask_cy = GetTask(6) 
if (UTask_cy > 60*256) and (GetFaction() == "cuiyan") then 
SetFightState(1) 
NewWorld(158, 1584, 3191); 
elseif (UTask_cy <= 60*256) then 
-- script viet hoa By http://tranhba.com  SetPos() 
Talk(1,"","Kh«ng thÓ vµo bæn m«n cÊm ®Þa !") 
else 
-- script viet hoa By http://tranhba.com  SetPos() 
Talk(1,"","§©y lµ thóy khãi cÊm ®Þa , kh«ng thÓ vµo !") 
end 
end; 
