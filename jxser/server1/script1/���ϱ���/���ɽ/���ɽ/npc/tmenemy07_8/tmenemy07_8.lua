-- script viet hoa By http://tranhba.com description: ���ng m�n 40 c�p nhi�m v� n�i Thanh Th�nh b�nh th��ng qu�i v�t 3 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 40*256+60) and (HaveItem(45) == 0)) then					-- script viet hoa By http://tranhba.com û����ܵ�Ƥ
AddEventItem(45) 
Msg2Player(" l�y ���c anh t�c ��ch x�c ") 
AddNote(" l�y ���c anh t�c ��ch x�c ") 
end 
end; 
