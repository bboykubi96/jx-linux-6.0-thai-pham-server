-- script viet hoa By http://tranhba.com description: ph�i Nga Mi tin/th� t��ng t� h�u vi�n n�i ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/6 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-12) 

function OnDeath() 
UTask_em = GetTask(1); 
	if (UTask_em == 50*256+60) and (HaveItem(23) == 1) and (random(0,99) < 30) then							-- script viet hoa By http://tranhba.com �ȳ��Ⱥ����ɵĸ�����30%
Msg2Player("��nh b�i ph�n t�ng ��u m�c , c�u t� h�i ph��ng tr��ng , �em kim tuy�n t� ph�t kinh Kim C��ng cho h�n . ") 
DelItem(23) 
		SetTask(1, 50*256+80)
AddNote("��nh b�i ph�n t�ng ��u m�c , c�u t� h�i ph��ng tr��ng , �em kim tuy�n t� ph�t kinh Kim C��ng cho h�n . ") 
end 
end; 
