-- script viet hoa By http://tranhba.com description: ���ng m�n 30 c�p nhi�m v� n�i Thanh Th�nh m�y tr�ng ��ng tr�i ph� 2 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 30*256+30) and (HaveItem(98) == 0) and (random(0,99) < 50) then		-- script viet hoa By http://tranhba.com  ������33%��Ϊ50%
AddEventItem(98) 
Msg2Player(" l�y ���c m�t c�i ch�a kh�a ") 
AddNote("��nh b�i tr�i ph� ��u m�c , l�y ���c m�t c�i ch�a kh�a ") 
end 
end; 
