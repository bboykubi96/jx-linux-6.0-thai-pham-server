-- script viet hoa By http://tranhba.com  Ho�ng H� ng�n ngu�n l�u ti�n ��ng m� cung 3F chi�n ��u NPC s�n t�c 03# C�n L�n xu�t s� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function OnDeath() 
UTask_kl = GetTask(9) 
	if ((UTask_kl == 60*256+20) and (HaveItem(13) == 0) and (random(1,99) < 40)) then
AddEventItem(13) 
Msg2Player("B�t ���c thi�u h�o kh�a ") 
AddNote("B�t ���c thi�u h�o kh�a ") 
end 
end; 
