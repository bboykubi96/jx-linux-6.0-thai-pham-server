-- script viet hoa By http://tranhba.com  Ho�ng H� ng�n ngu�n l�u ti�n ��ng m� cung 4F chi�n ��u NPC s�n t�c 04# C�n L�n xu�t s� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function OnDeath() 
UTask_kl = GetTask(9) 
	if ((UTask_kl == 60*256+20) and (HaveItem(14) == 0) and (random(1,99) < 30)) then
AddEventItem(14) 
Msg2Player("Mu�n �i t�m chuy�n h�c ") 
AddNote("Mu�n �i t�m chuy�n h�c ") 
end 
end; 
