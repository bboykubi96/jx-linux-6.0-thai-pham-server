-- script viet hoa By http://tranhba.com description: §­êng m«n xuÊt s­ nhiÖm vô tróc ti ®éng tÇng thø nhÊt qu¸i vËt 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/13 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 60*256+20) and (HaveItem(99) == 0) and (random(0,99) <= 40)) then		-- script viet hoa By http://tranhba.com ÈÎÎñÖĞÇÒÃ»ÓĞÔ¿³×¶şÊ±£¬¸ÅÂÊÎª50%
AddEventItem(99) 
Msg2Player(" lÊy ®­îc c¸i ch×a khãa hai ") 
-- script viet hoa By http://tranhba.com  SetTask(2, 64) 
AddNote(" ë tróc ti ®éng tÇng thø nhÊt , ®¸nh b¹i qu¸i vËt , lÊy ®­îc c¸i ch×a khãa hai . ") 
end 
end; 
