-- script viet hoa By http://tranhba.com  Ng� ��c gi�o n�m ��c ��ng chi�n ��u NPC thi�m th� 01# n�m ��c nh�p m�n nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
Uworld37 = GetByte(GetTask(37),2) 
if ((Uworld37 == 10) and (HaveItem(225) == 0) and (random(0,99) < 80)) then -- script viet hoa By http://tranhba.com  � nhi�m v� trung h�n n�a v� nhi�m v� v�t ph�m 
AddEventItem(225) 
Msg2Player("Ng��i l�y ���c c�y th� th� kh�ng t��c v� mao . ") 
AddNote("Ng��i l�y ���c c�y th� th� kh�ng t��c v� mao . ") 
end 
end; 
