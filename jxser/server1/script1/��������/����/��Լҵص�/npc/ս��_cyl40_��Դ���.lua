-- script viet hoa By http://tranhba.com  th�nh ��i L� �c ph�ch b� ��o chi�n ��u NPC ? ? ? # th�y kh�i c�a 40 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 40*256+10) and (random(0,100) < 40) then				-- script viet hoa By http://tranhba.com  40%�Ļ��ʳɹ�
		SetTask(6,40*256+20)
AddNote("Gi�i c�u b� v�y � trong m�t ��o ��ch thi�u n� , bi�t �c ph�ch �� �em nh�ng kh�c c� g�i mang �i Th��ng S�n li�u . ") 
Msg2Player("��nh b�i �c ph�ch ��ch tr� th� , gi�i c�u b� v�y � trong m�t ��o ��ch thi�u n� , bi�t �c ph�ch �� �em nh�ng kh�c c� g�i mang �i Th��ng S�n li�u . ") 
end 
end; 
