-- script viet hoa By http://tranhba.com description: ���ng m�n ph� th�y h� ��ch nh�n 20 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 20*256+40) and (HaveItem(41) == 0) then			-- script viet hoa By http://tranhba.com  ������50%��Ϊ100%
AddEventItem(41) 
Msg2Player(" l�y ���c kim h�ng v�ng ") 
AddNote(" � ph� th�y h� ��nh b�i x�ch di�m ng�c , l�y ���c kim h�ng v�ng ") 
end 
end; 
