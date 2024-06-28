-- script viet hoa By http://tranhba.com description: vò l¨ng s¬n phôc l­u ®éng löa con th»n l»n # Thiªn v­¬ng 40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/26 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 40*256+50) and (HaveItem(93) == 0) and (random(0,99) < 50) then
AddEventItem(93) 
Msg2Player("B¾t ®­îc löa con th»n l»n v¶y . ") 
AddNote(" ë Vò di s¬n phôc l­u ®éng ®¸nh b¹i löa con th»n l»n b¾t ®­îc v¶y . ") 
end 
end; 
