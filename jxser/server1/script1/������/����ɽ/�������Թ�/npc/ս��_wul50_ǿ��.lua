-- script viet hoa By http://tranhba.com  la ti�u s�n nghi�t long ��ng chi�n ��u NPC c��ng ��o # n�m ��c 50 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 50*256+20) and (random(0,99) < 33) then		-- script viet hoa By http://tranhba.com  �������У������ʴ����
AddEventItem(88) 
AddNote("C�m t�i ng�c san h� ") 
Msg2Player("C�m t�i ng�c san h� ") 
end 
end; 
