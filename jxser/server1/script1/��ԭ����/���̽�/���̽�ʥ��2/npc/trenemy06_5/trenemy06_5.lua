-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y th�nh ��ng t�ng hai ��ch nh�n con b� c�p v��ng # ng�y nh�n xu�t s� nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4) 
	if (UTask_tr == 60*256+70) and (HaveItem(102) == 0) then
AddEventItem(102) 
Msg2Player("��t ���c m�t c�i ch�a kh�a . ") 
AddNote(" � th�nh ��ng t�ng th� hai , ��nh b�i con b� c�p v��ng , b�t ���c c�i ch�a kh�a khai b�o r��ng . ") 
end 
end; 
