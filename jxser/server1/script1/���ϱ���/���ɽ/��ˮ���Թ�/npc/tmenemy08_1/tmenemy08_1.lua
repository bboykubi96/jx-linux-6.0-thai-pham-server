-- script viet hoa By http://tranhba.com description: ���ng m�n 50 c�p nhi�m v� n�i Thanh Th�nh vang n��c ��ng ���ng h�a 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
UTask_tm = GetTask(2) 
	if (UTask_tm == 50*256+60) then
Talk(1,"","H� # d� sao ta �� th�n b�i danh li�t , ��nh b�i ta , ng��i c�ng m� t��ng ���c # �m kh� ph� ## ta �em n� gi�u � s�n ��ng n�y trong , ng��i c� ��i c�ng ��ng m� t��ng t�m ���c . ") 
		SetTask(2, 50*256+80)
Msg2Player("��nh b�i n�i Thanh Th�nh vang n��c ��ng ���ng h�a , bi�t �m kh� ph� ��t � b�n trong ��ng ") 
AddNote("��nh b�i n�i Thanh Th�nh vang n��c ��ng ���ng h�a , bi�t �m kh� ph� ��t � b�n trong ��ng ") 
end 
end; 
