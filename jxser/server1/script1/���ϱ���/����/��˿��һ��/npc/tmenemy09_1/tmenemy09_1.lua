-- script viet hoa By http://tranhba.com description: ���ng m�n xu�t s� nhi�m v� tr�c ti ��ng t�ng th� nh�t qu�i v�t 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/13 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 60*256+20) and (HaveItem(99) == 0) and (random(0,99) <= 40)) then		-- script viet hoa By http://tranhba.com ��������û��Կ�׶�ʱ������Ϊ50%
AddEventItem(99) 
Msg2Player(" l�y ���c c�i ch�a kh�a hai ") 
-- script viet hoa By http://tranhba.com  SetTask(2, 64) 
AddNote(" � tr�c ti ��ng t�ng th� nh�t , ��nh b�i qu�i v�t , l�y ���c c�i ch�a kh�a hai . ") 
end 
end; 
