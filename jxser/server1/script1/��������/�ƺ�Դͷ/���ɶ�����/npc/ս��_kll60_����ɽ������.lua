-- script viet hoa By http://tranhba.com  Ho�ng H� ng�n ngu�n l�u ti�n ��ng m� cung 2F chi�n ��u NPC s�n t�c 02# C�n L�n xu�t s� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function OnDeath() 
UTask_kl = GetTask(9) 
	if ((UTask_kl == 60*256+20) and (HaveItem(12) == 0) and (random(1,99) < 50)) then
AddEventItem(12) 
Msg2Player(" l�y ���c vi�m �� c�i ch�a kh�a ") 
AddNote(" l�y ���c vi�m �� c�i ch�a kh�a ") 
end 
end; 
