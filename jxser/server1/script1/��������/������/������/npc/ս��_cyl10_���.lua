-- script viet hoa By http://tranhba.com  th�y kh�i c�a chi�n ��u NPC ??? 10 c�p nhi�m v� # th�y v� tr�m # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-25) 

function OnDeath() 
UTask_cy = GetTask(6); 
	if (UTask_cy == 10*256+10) and (HaveItem(0) == 0) and (random(0,100) < 75) then			-- script viet hoa By http://tranhba.com �����У�75%���ʳ���
AddEventItem(0) 
Msg2Player("��t ���c th�y v� tr�m ") 
AddNote("��t ���c th�y v� tr�m ") 
end 
end; 
