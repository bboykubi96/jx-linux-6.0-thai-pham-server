-- script viet hoa By http://tranhba.com description: ph�c b� s�n thi�n t�m ��ng m� cung ��ch nh�n # V� ���ng 50 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/16 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-17) 

function OnDeath() 
UTask_wd = GetTask(5) 
	if (UTask_wd == 50*256+20) and (random(0,99) < 33) then
		SetTask(5, 50*256+50)
Earn(10000) 
Msg2Player("��nh b�i th� ph� ��u m�c thi�t c�c , b�t ���c b�n h� gi�nh ���c ��ch 1 v�n l��ng . ") 
AddNote(" � ph�c b� s�n thi�n t�m ��ng , ��nh b�i th� ph� ��u m�c thi�t c�c , b�t ���c b�n h� gi�nh ���c ��ch 1 v�n l��ng . ") 
end 
end; 
