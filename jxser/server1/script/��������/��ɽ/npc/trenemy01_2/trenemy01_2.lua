-- script viet hoa By http://tranhba.com description: Hoa S¬n ®Þch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/17 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_world30 = GetByte(GetTask(30),1) 
if ((UTask_world30 == 5) and (HaveItem(50) == 0) and (random(0,99) < 50)) then 
AddEventItem(50) 
Msg2Player("B¾t ®­îc vò v­¬ng kiÕm ") 
-- script viet hoa By http://tranhba.com  SetTask(30, 8) 
AddNote("B¾t ®­îc vò v­¬ng kiÕm ") 
end 
end; 
