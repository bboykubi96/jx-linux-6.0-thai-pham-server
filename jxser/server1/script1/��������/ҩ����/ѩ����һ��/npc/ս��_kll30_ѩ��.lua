-- script viet hoa By http://tranhba.com  C�n L�n tuy�t b�o s�n ��ng chi�n ��u NPC tuy�t b�o nh�p m�n nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-30) 

function OnDeath() 
UTask_kl = GetTask(9); 
	if (UTask_kl == 30*256+10) and (GetItemCount("D?Minh Ch�u") < 3) and (random(0,99) < 60) then
AddEventItem(111) 
Msg2Player("B�t ���c d� minh ch�u ") 
AddNote("T�m ���c d� minh ch�u ") 
end 
end; 
