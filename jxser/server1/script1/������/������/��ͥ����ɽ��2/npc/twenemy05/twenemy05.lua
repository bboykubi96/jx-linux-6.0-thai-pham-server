-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p ��ng ��nh h� �� th� 2 t�ng n��c tr�ch # Thi�n v��ng 50 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3); 
	if (UTask_tw == 50*256+20) and (HaveItem(95) == 0) and (random(0,99) < 33) then
AddEventItem(95) 
Msg2Player("��nh b�i n��c tr�ch , b�t ���c t��ng tr�ng h�nh ph�c b�nh an ng� th�i th�ch . ") 
-- script viet hoa By http://tranhba.com  SetTask(3, 55) 
AddNote("T�m ���c trong s�n ��ng ��ch n��c tr�ch , ��nh b�i n� b�t ���c ng� th�i th�ch ") 
end 
end; 
