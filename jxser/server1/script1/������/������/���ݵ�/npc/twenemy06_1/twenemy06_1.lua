-- script viet hoa By http://tranhba.com description: thanh loa ��o ��ch nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnDeath() 
UTask_tw = GetTask(3); 
	if (UTask_tw == 60*256+20) and (HaveItem(101) == 0) and (random(0,99) < 50) then
AddEventItem(101) 
Msg2Player("B�t ���c c�i ch�a kh�a ") 
AddNote(" � thanh loa ��o b�t ���c khai b�o r��ng ��ch c�i ch�a kh�a . ") 
end 
end; 
