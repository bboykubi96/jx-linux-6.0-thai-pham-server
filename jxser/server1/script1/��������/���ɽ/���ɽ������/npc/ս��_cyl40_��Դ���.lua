-- script viet hoa By http://tranhba.com  �i�m th��ng s�n �c ph�ch ��ng chi�n ��u NPC ? ? ? 03# th�y kh�i c�a 40 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 40*256+20) and (HaveItem(198) == 0) and (random(0,100) < 30) then				-- script viet hoa By http://tranhba.com  30%�Ļ��ʳɹ�
AddEventItem(198) 
Msg2Player("B�t ���c ng�n c�i ch�a kh�a ") 
AddNote("T�m ra ng�n c�i ch�a kh�a ") 
end 
end; 
