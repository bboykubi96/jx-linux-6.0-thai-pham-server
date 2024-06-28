-- script viet hoa By http://tranhba.com description: §­êng m«n 40 cÊp nhiÖm vô nói Thanh Thµnh b×nh th­êng qu¸i vËt 1 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 40*256+60) and (HaveItem(43) == 0)) then					-- script viet hoa By http://tranhba.com Ã»ÓĞó¸òÜµÄÆ¤
AddEventItem(43) 
Msg2Player(" lÊy ®­îc thiÒm thõ ®İch da ") 
AddNote(" lÊy ®­îc thiÒm thõ ®İch da ") 
end 
end; 
