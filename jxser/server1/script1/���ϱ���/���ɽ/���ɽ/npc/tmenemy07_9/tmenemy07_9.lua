-- script viet hoa By http://tranhba.com description: ���ng m�n 40 c�p nhi�m v� n�i Thanh Th�nh b�nh th��ng qu�i v�t 4 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 40*256+60) and (HaveItem(46) == 0)) then					-- script viet hoa By http://tranhba.com û����ܵ�Ƥ
AddEventItem(46) 
Msg2Player(" l�y ���c con b� c�p ��ch �u�i ") 
AddNote(" l�y ���c con b� c�p ��ch �u�i ") 
end 
end; 
