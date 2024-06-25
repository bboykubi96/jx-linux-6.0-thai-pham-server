-- script viet hoa By http://tranhba.com description: §­êng m«n 50 cÊp nhiÖm vô nói Thanh Thµnh vang n­íc ®éng qu¸i vËt 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2) 
	if ((UTask_tm == 50*256+80) and (HaveItem(48) == 0)) then					-- script viet hoa By http://tranhba.com Ã»ÓÐ°µÆ÷Æ×
AddEventItem(48) 
-- script viet hoa By http://tranhba.com  SetTask(2, 59) 
AddNote("§¸nh b¹i vang n­íc trong ®éng ®Ých ®Þch nh©n , lÊy ®­îc ¸m khÝ phæ ") 
Msg2Player(" lÊy ®­îc ¸m khÝ phæ ") 
end 
end; 
