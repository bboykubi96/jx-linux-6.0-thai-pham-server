-- script viet hoa By http://tranhba.com description: ph¸i Nga Mi nói Thanh Thµnh thÇn tiªn ®éng ®Þch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/5 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-12) 

function OnDeath() 
UTask_em = GetTask(1) 
	if (UTask_em == 40*256+10) then	
		SetTask(1, 40*256+20)
end 
end; 
