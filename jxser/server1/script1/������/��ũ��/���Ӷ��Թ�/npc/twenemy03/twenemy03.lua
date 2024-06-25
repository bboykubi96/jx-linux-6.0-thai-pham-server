-- script viet hoa By http://tranhba.com description: thÇn n«ng chiÕc yÕn tö ®éng ®Þch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/25 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3); 
	if (UTask_tw == 30*256+20) and (HaveItem(145) == 0) and (random(0,99) < 50) then
AddEventItem(145) 
Msg2Player("§¸nh b¹i c­êng ®¹o , ®o¹t ngµy qua/n÷a v­¬ng lµm . ") 
-- script viet hoa By http://tranhba.com  SetTask(3, 35) 
AddNote(" ë miªu lÜnh yÕn tö ®éng ®¸nh b¹i tõ b¸o tö dÉn ®Çu ®Ých c­êng ®¹o nhãm ng­êi ®o¹t ngµy qua/n÷a v­¬ng lµm . ") 
end 
end; 
