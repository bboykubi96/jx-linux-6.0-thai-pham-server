-- script viet hoa By http://tranhba.com description: v� l�ng s�n ph�c l�u ��ng l�a con th�n l�n # Thi�n v��ng 40 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/26 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 40*256+50) and (HaveItem(93) == 0) and (random(0,99) < 50) then
AddEventItem(93) 
Msg2Player("B�t ���c l�a con th�n l�n v�y . ") 
AddNote(" � V� di s�n ph�c l�u ��ng ��nh b�i l�a con th�n l�n b�t ���c v�y . ") 
end 
end; 
