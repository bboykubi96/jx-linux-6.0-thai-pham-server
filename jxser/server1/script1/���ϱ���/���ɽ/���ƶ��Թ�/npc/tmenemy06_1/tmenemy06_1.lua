-- script viet hoa By http://tranhba.com description: ���ng m�n 30 c�p nhi�m v� n�i Thanh Th�nh m�y tr�ng ��ng tr�i ph� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 30*256+20) then 
Talk(1,"","H� # coi nh� ��nh b�i ta , ng��i c�ng ��ng mu�n d� d�ng l�y ���c # h�a kh� ph� # . ��ng ho�ng n�i cho ng��i bi�t , # h�a kh� ph� # s� � �� c� b�o r��ng trong , khai b�o r��ng ��ch c�i ch�a kh�a ng��i c� b�n l�nh �ang � trong ��ng t� t� t�m �i !") 
		SetTask(2, 30*256+30)
AddNote("��nh b�i ��u m�c cu�ng sa , bi�t h�a kh� ph� ��t � b�o r��ng trong ! ") 
Msg2Player("��nh b�i ��u m�c cu�ng sa , bi�t h�a kh� ph� ��t � b�o r��ng trong ! ") 
end 
end; 
