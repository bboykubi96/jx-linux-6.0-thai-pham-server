-- script viet hoa By http://tranhba.com  n�m ��c kim m�u r�n ��m m� cung chi�n ��u NPC m�t ki�ng v��ng m�ng x� 01# n�m ��c 40 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 40*256+10) and (HaveItem(143) == 0) and (random(0,99) < 60) then		-- script viet hoa By http://tranhba.com  �������У������ʴ����
if (HaveItem(142) == 1) then 
if (random(0,99) < 60) then 
AddEventItem(143) 
DelItem(142) 
AddNote("B�t ���c m�t ki�ng v��ng m�ng x� ") 
Msg2Player("Ng��i d�ng x� h��ng t�i kh�ng ch� n� cu�i c�ng c�ng ch�p ���c ") 
else 
Msg2Player("Ng��i d�ng th� x� h��ng t�i b�t m�t ki�ng v��ng m�ng x� , nh�ng l� kh�ng c�n th�n b� h�n ch�y tr�n ") 
end 
else 
Msg2Player("M�t ki�ng v��ng m�ng x� ��ch k�ch ��c kh�ng th� m� , n�u l� kh�ng c� x� h��ng kh�c ch� n� l� kh�ng c�ch n�o b�t l�i ��ch ") 
end 
end 
end; 
