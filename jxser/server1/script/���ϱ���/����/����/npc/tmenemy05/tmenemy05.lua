-- script viet hoa By http://tranhba.com description: §­êng m«n phØ thóy hå ®Şch nh©n 20 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 20*256+40) and (HaveItem(41) == 0) then			-- script viet hoa By http://tranhba.com  ¸ÅÂÊÓÉ50%¸ÄÎª100%
AddEventItem(41) 
Msg2Player(" lÊy ®­îc kim h¹ng vßng ") 
AddNote(" ë phØ thóy hå ®¸nh b¹i xİch diÔm ng¹c , lÊy ®­îc kim h¹ng vßng ") 
end 
end; 
