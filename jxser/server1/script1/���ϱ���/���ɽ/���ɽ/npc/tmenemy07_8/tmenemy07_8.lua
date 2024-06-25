-- script viet hoa By http://tranhba.com description: §­êng m«n 40 cÊp nhiÖm vô nói Thanh Thµnh b×nh th­êng qu¸i vËt 3 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 40*256+60) and (HaveItem(45) == 0)) then					-- script viet hoa By http://tranhba.com Ã»ÓÐó¸òÜµÄÆ¤
AddEventItem(45) 
Msg2Player(" lÊy ®­îc anh tóc ®Ých x¸c ") 
AddNote(" lÊy ®­îc anh tóc ®Ých x¸c ") 
end 
end; 
