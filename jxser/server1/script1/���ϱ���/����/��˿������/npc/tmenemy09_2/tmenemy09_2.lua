-- script viet hoa By http://tranhba.com description: §­êng m«n xuÊt s­ nhiÖm vô tróc ti ®éng tÇng thø hai qu¸i vËt 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/13 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 60*256+40) and (HaveItem(100) == 0) and (random(0,99) <= 30) then 		-- script viet hoa By http://tranhba.com ¸ÅÂÊÓÉ20%¸ÄÎª30%
AddEventItem(100) 
Msg2Player("B¾t ®­îc thø ba c¸i ch×a khãa . ") 
-- script viet hoa By http://tranhba.com  SetTask(2, 66) 
AddNote(" ë tróc ti ®éng tÇng thø hai , ®¸nh b¹i ®Þch nh©n , tiÕn vµo tÇng thø ba . ") 
end 
end; 
