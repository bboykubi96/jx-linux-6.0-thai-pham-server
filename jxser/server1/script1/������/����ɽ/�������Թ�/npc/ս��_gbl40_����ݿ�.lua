-- script viet hoa By http://tranhba.com  la ti�u s�n chi�n ��u NPC mai ph�c qu�n Kim C�i Bang 40 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-28) 

function OnDeath() 
UTask_gb = GetTask(8); 
	if (UTask_gb == 40*256+10) and (HaveItem(236) == 0) and (random(0,100) < 33) then		-- script viet hoa By http://tranhba.com 33%����
AddEventItem(236) 
AddNote("��nh b�i mai ph�c ��ch qu�n Kim , ph�t hi�n li�n minh ��ch m�t ��o ") 
Msg2Player("��nh b�i mai ph�c ��ch qu�n Kim , ph�t hi�n li�n minh ��ch m�t ��o ") 
end 
end; 
