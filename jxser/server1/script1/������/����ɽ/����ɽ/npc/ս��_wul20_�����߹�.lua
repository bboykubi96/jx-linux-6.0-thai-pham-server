-- script viet hoa By http://tranhba.com  la ti�u s�n m� cung chi�n ��u NPC s�c qu� 01# n�m ��c 20 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
i = GetItemCount("��u ng��i ") 
	if (UTask_wu == 20*256+10) and (i < 7) and (random(0,99) < 80) then		-- script viet hoa By http://tranhba.com  �������У������ʴ����
AddEventItem(85) 
if (i >= 6) then 
Msg2Player("Ng��i gi�t la ti�u b�y qu� , c�m 7 c� ��u ") 
AddNote("Ng��i gi�t la ti�u b�y qu� , c�m 7 c� ��u , giao cho b�ch o�nh o�nh ") 
else 
Msg2Player(" l�y ���c m�t ��u ng��i ") 
end 
end 
end; 
