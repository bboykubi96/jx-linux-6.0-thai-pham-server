-- script viet hoa By http://tranhba.com description: thÊt s¸t ®éng tö tï 4# ngµy nhÉn 10 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4) 
	if ((UTask_tr == 10*256+50) and (HaveItem(54) == 0)) then
AddEventItem(54) 
Msg2Player("B¾t ®­îc lÖnh bµi m¶nh vôn bèn . ") 
AddNote("B¾t ®­îc thÊt s¸t ®éng lÖnh bµi m¶nh vôn bèn . ") 
end 
end; 
