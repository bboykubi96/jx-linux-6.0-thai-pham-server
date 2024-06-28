-- script viet hoa By http://tranhba.com description: t«n l®ng d≠Ìi Æ t mÈt t«ng Æﬁch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4); 
	if (UTask_tr == 30*256+20) and (HaveItem(59) == 0) then
AddEventItem(59) 
Msg2Player(" l y Æ≠Óc c∏p m∏u Æ· b∂o thπch . ") 
AddNote("T«n l®ng d≠Ìi Æ t , Æ∏nh bπi b∂o ng‰c ®n trÈm , l y Æ≠Óc c∏p m∏u Æ· b∂o thπch . ") 
end 
end; 
