-- script viet hoa By http://tranhba.com description: th�t s�t ��ng t� t� 4# ng�y nh�n 10 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4) 
	if ((UTask_tr == 10*256+50) and (HaveItem(54) == 0)) then
AddEventItem(54) 
Msg2Player("B�t ���c l�nh b�i m�nh v�n b�n . ") 
AddNote("B�t ���c th�t s�t ��ng l�nh b�i m�nh v�n b�n . ") 
end 
end; 
