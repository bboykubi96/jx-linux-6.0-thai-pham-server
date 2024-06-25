-- script viet hoa By http://tranhba.com description: §­êng m«n 30 cÊp nhiÖm vô nói Thanh Thµnh m©y tr¾ng ®éng trãi phØ 2 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 30*256+30) and (HaveItem(98) == 0) and (random(0,99) < 50) then		-- script viet hoa By http://tranhba.com  ¸ÅÂÊÓÉ33%¸ÄÎª50%
AddEventItem(98) 
Msg2Player(" lÊy ®­îc mét c¸i ch×a khãa ") 
AddNote("§¸nh b¹i trãi phØ ®Çu môc , lÊy ®­îc mét c¸i ch×a khãa ") 
end 
end; 
