-- script viet hoa By http://tranhba.com description: ph�c b� S�n ��ng ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/15 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-17) 

function OnDeath() 
UTask_wd = GetTask(5) 
	if (UTask_wd == 30*256+20) then	
AddEventItem(133) 
Msg2Player("��t ���c m�t to�t k� l�ng mi c� ") 
AddNote("��t ���c k� l�ng mi c� ") 
end; 
end; 
