-- script viet hoa By http://tranhba.com description: ph�i V� ���ng 40 c�p nhi�m v� ph�c b� g� n�i quan ��ng b�nh th��ng qu�i v�t 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/15 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-17) 

function OnDeath() 
UTask_wd = GetTask(5); 
	if (UTask_wd == 40*256+60) and (HaveItem(164) == 0) and (random(0, 99) < 33) then
AddEventItem(164) 
Msg2Player("Ti�p thu nhu�n m� th� h�i �m ") 
-- script viet hoa By http://tranhba.com  SetTask(5, 48) 
AddNote("Thu ph�c 5 ch� nhu�n m� b�ch ng�c h� , ��t ���c th� h�i �m ") 
end 
end; 
