-- script viet hoa By http://tranhba.com  d��c v��ng c�c d��c v��ng ��ng chi�n ��u NPC th� ph� C�n L�n 20 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-30) 

function OnDeath() 
UTask_kl = GetTask(9); 
	if (UTask_kl == 20*256+10) and (HaveItem(7) == 0) and (random(0,99) < 60) then
AddEventItem(7) 
Msg2Player("B�t ���c m�t l�c �� ��u l�u ") 
AddNote("B�t ���c m�t l�c �� ��u l�u ") 
end 
end; 
