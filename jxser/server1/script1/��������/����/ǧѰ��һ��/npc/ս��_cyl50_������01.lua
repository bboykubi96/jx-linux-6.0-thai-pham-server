-- script viet hoa By http://tranhba.com  th�nh ��i L� s�ng th�nh t� ng�n t�m th�p chi�n ��u NPC ��o t�c 01# th�y kh�i c�a 50 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-27) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy >= 50*256+32) and (UTask_cy < 50*256+50) and (HaveItem(5) == 0) then		-- script viet hoa By http://tranhba.com 50�����������޵���
UTask_cy = SetBit(UTask_cy,1,1) 
		if (UTask_cy == 50*256+32+7) then		-- script viet hoa By http://tranhba.com �����(bin(100 + 010 + 001))
			SetTask(6,50*256+32)
AddEventItem(5) 
Msg2Player("��nh b�i ��o t�c , �o�t l�i b� ��nh c�p ��ch m�a ��ng Quan �m ") 
AddNote("��nh b�i ��o t�c , �o�t l�i b� ��nh c�p ��ch m�a ��ng Quan �m ") 
else 
SetTask(6,UTask_cy) 
Msg2Player("��nh b�i ��o t�c , nh�ng l� , kh�ng c� t�m ���c m�a ��ng Quan �m ") -- script viet hoa By http://tranhba.com  c� mu�n hay kh�ng �� k� nh� ch�i ? 
end 
end 
end; 
