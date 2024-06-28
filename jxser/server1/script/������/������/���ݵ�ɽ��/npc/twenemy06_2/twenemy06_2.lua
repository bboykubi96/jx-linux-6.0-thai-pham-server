-- script viet hoa By http://tranhba.com description: thanh loa ®¶o s¬n ®éng ®Þch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3); 
	if (UTask_tw == 60*256+40) and (HaveItem(96) == 0) and (random(0,99) < 25) then
AddEventItem(96) 
Msg2Player("Tõ kim quèc s¸t thñ trong tay ®o¹t lÊy Thiªn v­¬ng di th­ . ") 
-- script viet hoa By http://tranhba.com  SetTask(3, 66) 
AddNote(" ë S¬n §«ng thanh loa ®¶o , ®¸nh b¹i s¸t thñ ®o¹t ngµy qua/n÷a v­¬ng di th­ ") 
end 
end; 
