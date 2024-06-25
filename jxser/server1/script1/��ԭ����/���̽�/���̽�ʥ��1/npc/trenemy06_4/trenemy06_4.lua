-- script viet hoa By http://tranhba.com description: ngµy nh…n dπy th∏nh ÆÈng mÈt t«ng Æﬁch nh©n con bﬂ cπp v≠¨ng # ngµy nh…n xu t s≠ nhi÷m vÙ 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4) 
Task_trtmp60 = GetTask(28) 
	if (UTask_tr == 60*256+50) and (GetBit(Task_trtmp60,4) == 0) then
SetTask(28, SetBit(Task_trtmp60,4,1)) 
AddNote(" l y Æ≠Óc kh»u quy’t ì duy ta dπy v≠¨ng . ") 
Msg2Player(" l y Æ≠Óc kh»u quy’t ì duy ta dπy v≠¨ng . ") 
end 
end; 
