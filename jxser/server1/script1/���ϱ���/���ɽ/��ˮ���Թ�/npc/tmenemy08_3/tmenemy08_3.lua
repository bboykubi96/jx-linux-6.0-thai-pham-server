-- script viet hoa By http://tranhba.com description: ���ng m�n 50 c�p nhi�m v� n�i Thanh Th�nh vang n��c ��ng qu�i v�t 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2) 
	if ((UTask_tm == 50*256+80) and (HaveItem(48) == 0)) then					-- script viet hoa By http://tranhba.com û�а�����
AddEventItem(48) 
-- script viet hoa By http://tranhba.com  SetTask(2, 59) 
AddNote("��nh b�i vang n��c trong ��ng ��ch ��ch nh�n , l�y ���c �m kh� ph� ") 
Msg2Player(" l�y ���c �m kh� ph� ") 
end 
end; 
