-- script viet hoa By http://tranhba.com description: phôc bß S¬n §«ng ®Þch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/15 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-17) 

function OnDeath() 
UTask_wd = GetTask(5) 
	if (UTask_wd == 30*256+20) then	
AddEventItem(133) 
Msg2Player("§¹t ®­îc mét to¸t kÎ l«ng mi cá ") 
AddNote("§¹t ®­îc kÎ l«ng mi cá ") 
end; 
end; 
