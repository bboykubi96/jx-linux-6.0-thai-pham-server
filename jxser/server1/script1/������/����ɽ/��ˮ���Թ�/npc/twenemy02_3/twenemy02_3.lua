-- script viet hoa By http://tranhba.com description: v� l�ng s�n b�ch n��c ��ng ��ch nh�n 3# Thi�n v��ng 20 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/25 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3) 
	if (UTask_tw == 20*256+50) then
UTask_twtmp20 = SetBit(GetTaskTemp(10),3,1) 
SetTaskTemp(10,UTask_twtmp20) 
		if (UTask_twtmp20 == 7) then		-- script viet hoa By http://tranhba.com  bin: 100 + 010 + 001
Msg2Player("��nh b�i th� ph� , ph� c�n th�n d�n ��a ra m�t Di�n C�m K� l�m c�m t� . ") 
AddEventItem(92) 
-- script viet hoa By http://tranhba.com  SetTask(3, 28) 
AddNote(" � V� di s�n b�ch n��c ��ng ��nh b�i 3 t�n gi� m�o Thi�n v��ng gi�p �� t� ��ch th� ph� , l�y ���c ph� c�n th�n d�n ��a c�m k� . ") 
end 
end 
end; 
