-- script viet hoa By http://tranhba.com description: th�n n�ng chi�c y�n t� ��ng ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/25 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3); 
	if (UTask_tw == 30*256+20) and (HaveItem(145) == 0) and (random(0,99) < 50) then
AddEventItem(145) 
Msg2Player("��nh b�i c��ng ��o , �o�t ng�y qua/n�a v��ng l�m . ") 
-- script viet hoa By http://tranhba.com  SetTask(3, 35) 
AddNote(" � mi�u l�nh y�n t� ��ng ��nh b�i t� b�o t� d�n ��u ��ch c��ng ��o nh�m ng��i �o�t ng�y qua/n�a v��ng l�m . ") 
end 
end; 
