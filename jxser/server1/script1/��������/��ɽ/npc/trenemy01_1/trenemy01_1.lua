-- script viet hoa By http://tranhba.com description: Hoa S�n ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/17 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_world30 = GetByte(GetTask(30),1) 
if ((UTask_world30 == 5) and (HaveItem(50) == 0) and (random(0,99) < 50)) then 
Talk(1,"","Ng��i l�y ���c m�t thanh v� v��ng ki�m # nh�ng l� m�i c�m l�n n� li�n c�t th�nh li�u 3 �o�n # nguy�n lai l� gi� . ") 
Msg2Player("Ph�t hi�n v� v��ng ki�m l� gi� ��ch ") 
end 
end; 
