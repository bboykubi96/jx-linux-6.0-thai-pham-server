-- script viet hoa By http://tranhba.com description: ���ng m�n xu�t s� nhi�m v� tr�c ti ��ng t�ng th� hai qu�i v�t 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/13 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 60*256+40) and (HaveItem(100) == 0) and (random(0,99) <= 30) then 		-- script viet hoa By http://tranhba.com ������20%��Ϊ30%
AddEventItem(100) 
Msg2Player("B�t ���c th� ba c�i ch�a kh�a . ") 
-- script viet hoa By http://tranhba.com  SetTask(2, 66) 
AddNote(" � tr�c ti ��ng t�ng th� hai , ��nh b�i ��ch nh�n , ti�n v�o t�ng th� ba . ") 
end 
end; 
