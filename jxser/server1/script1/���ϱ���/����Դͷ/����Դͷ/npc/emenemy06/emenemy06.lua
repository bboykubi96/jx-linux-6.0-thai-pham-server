-- script viet hoa By http://tranhba.com description: ph�i Nga Mi Tr��ng giang ng�n ngu�n thanh c�ng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/6 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-12) 

function OnDeath() 
UTask_em = GetTask(1); 
	if ((UTask_em == 60*256+50) and (HaveItem(24) == 0) and (random(0,99) < 20)) then		-- script viet hoa By http://tranhba.com �����У�����û������ָ��������20%����
AddEventItem(24) 
-- script viet hoa By http://tranhba.com  SetTask(1, 68) 
AddNote("��nh b�i thanh c�ng ph�n �� , b�t ���c kh�i ng�n tay ng�c ho�n ") 
Msg2Player("��nh b�i thanh c�ng ph�n �� , b�t ���c kh�i ng�n tay ng�c ho�n ") 
end 
end; 
