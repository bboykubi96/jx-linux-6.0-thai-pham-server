-- script viet hoa By http://tranhba.com  ki�m c�c th�c ��o chi�n ��u NPC r�t ng��i 3 Thi�u L�m 20 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 
-- script viet hoa By http://tranhba.com  ��nh r�t ng��i trong qu� tr�nh kh�ng th� th�i lui ra , n�u kh�ng mu�n l�n n�a ��nh nhau . 

function OnDeath() 
UTask_sl = GetTask(7); 
	if (UTask_sl >= 20*256+64) and (UTask_sl < 20*256+128) and (GetBit(UTask_sl,3) == 0) then			-- script viet hoa By http://tranhba.com  ����������һֻδ���
UTask_sl = SetBit(UTask_sl,3,1) 
		if (UTask_sl == 20*256+64+31) then		-- script viet hoa By http://tranhba.com �����(bin(10000 + 01000 + 00100 + 00010 + 00001))
			SetTask(7,20*256+128)
AddNote("N�m r�t ng��i b� ng��i d�y ph�i t�m ph�c kh�u ph�c , cam k�t sau n�y tu t�m d��ng t�nh , kh�ng c� � ��y h� t�c phi vi li�u . ") 
Msg2Player("N�m r�t ng��i b� ng��i d�y ph�i t�m ph�c kh�u ph�c , cam k�t sau n�y tu t�m d��ng t�nh , kh�ng c� � ��y h� t�c phi vi li�u . ") 
else 
Msg2Player("Ng��i ��nh �i m�t r�t ng��i . ") 
SetTask(7,UTask_sl) 
end 
end 
end; 
