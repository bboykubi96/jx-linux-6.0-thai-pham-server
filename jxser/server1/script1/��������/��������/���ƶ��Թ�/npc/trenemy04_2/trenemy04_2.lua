-- script viet hoa By http://tranhba.com description: ki�m c�c th�c ��o kh�a v�n ��ng ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4); 
	if (UTask_tr == 40*256+20) and (HaveItem(159) == 0) then					-- script viet hoa By http://tranhba.com ȡ����������Ʒ���޵��жϣ��Ա���������
AddEventItem(159) 
Msg2Player("D� d�ng b�t ���c t�nh li�u ��ch , tr�n ng��i h�n t�m ���c cho T�ng tri�u ��ch m�t phong m�t th� . ") 
-- script viet hoa By http://tranhba.com  SetTask(4, 45) 
AddNote(" � ki�m c�c th�c ��o b�t ���c t�nh li�u ��ch , b�t ���c cho T�ng tri�u ��ch m�t th� . ") 
end 
end; 
