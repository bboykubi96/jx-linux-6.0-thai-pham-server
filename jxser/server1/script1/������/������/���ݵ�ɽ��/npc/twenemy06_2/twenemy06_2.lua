-- script viet hoa By http://tranhba.com description: thanh loa ��o s�n ��ng ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3); 
	if (UTask_tw == 60*256+40) and (HaveItem(96) == 0) and (random(0,99) < 25) then
AddEventItem(96) 
Msg2Player("T� kim qu�c s�t th� trong tay �o�t l�y Thi�n v��ng di th� . ") 
-- script viet hoa By http://tranhba.com  SetTask(3, 66) 
AddNote(" � S�n ��ng thanh loa ��o , ��nh b�i s�t th� �o�t ng�y qua/n�a v��ng di th� ") 
end 
end; 
