-- script viet hoa By http://tranhba.com description: ���ng m�n qu�i th�ch tr�n ��ch nh�n 1 20 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 20*256+20) and ( HaveItem(37) == 0)) then		-- script viet hoa By http://tranhba.com û�й�ʯ��˿��һ
AddEventItem(37) 
Msg2Player(" l�y ���c �i�u th� nh�t ti m�t , th��ng th� � thi�n � ch� ") 
AddNote(" l�y ���c �i�u th� nh�t ti m�t , th��ng th� � thi�n � ch� ") 
end 
end; 
