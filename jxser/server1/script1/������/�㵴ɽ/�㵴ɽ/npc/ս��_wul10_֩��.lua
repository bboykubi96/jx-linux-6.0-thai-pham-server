-- script viet hoa By http://tranhba.com  Nh�n ��ng s�n m� cung chi�n ��u NPC con nh�n 01# n�m ��c 10 c�p nhi�m v� # quy�n nghi�ng thi�n h� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 10*256+10) then		-- script viet hoa By http://tranhba.com  �������У������ʴ����ȡ�����ʣ���
AddEventItem(86) -- script viet hoa By http://tranhba.com  v�t ph�m con nh�n 
if (GetItemCount(86) >= 10) then 
Msg2Player("Ng��i b�t ���c li�u 10 ch� ��c con nh�n ") 
AddNote("Ng��i b�t ���c li�u 10 ch� ��c con nh�n ") 
else 
Msg2Player("B�t ���c li�u 10 ch� ��c con nh�n ") 
end 
elseif (GetTask(75) == 10) and (GetTask(52) == 10) and (random(0,99) < 75) then -- script viet hoa By http://tranhba.com  quy�n nghi�ng thi�n h� nhi�m v� , theo nh� ky t� s� l�y ���c 
AddEventItem(86) 
if (GetItemCount(86) >= 7) then 
Msg2Player("B�t ���c li�u 7 ch� ��c con nh�n , c� th� �i v� , ph�ng m�nh ") 
else 
Msg2Player("B�t ���c m�t con ��c con nh�n ") 
end 
end 
end; 
