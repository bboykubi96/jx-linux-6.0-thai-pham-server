-- script viet hoa By http://tranhba.com  �i�m th��ng s�n �c ph�ch ��ng chi�n ��u NPC ? ? ? 01# th�y kh�i c�a 40 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 40*256+20) and (HaveItem(197) == 0) and (random(0,100) < 50) then			-- script viet hoa By http://tranhba.com  50%�Ļ��ʳɹ�
AddEventItem(197) 
Msg2Player("B�t ���c ��ng c�i ch�a kh�a ") 
AddNote("T�m ra ��ng c�i ch�a kh�a ") 
end 
end; 
