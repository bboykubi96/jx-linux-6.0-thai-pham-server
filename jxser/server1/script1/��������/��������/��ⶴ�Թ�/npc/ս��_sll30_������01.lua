-- script viet hoa By http://tranhba.com  ki�m c�c th�c ��o ��o tr�i qua ng��i m� cung chi�n ��u NPC ? ? 30 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 

function OnDeath() 
UTask_sl = GetTask(7) 
	if (UTask_sl == 30*256+20) and (HaveItem(27) == 0) and (random(0,99) < 40) then
AddEventItem(27) 
Msg2Player("Mang v� B�n nh��c ba la m�t nghi ng� tr�i qua ") 
AddNote("Mang v� B�n nh��c ba la m�t nghi ng� tr�i qua ") 
end 
end; 
