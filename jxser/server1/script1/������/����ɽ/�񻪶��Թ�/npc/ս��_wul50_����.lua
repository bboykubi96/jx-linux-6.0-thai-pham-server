-- script viet hoa By http://tranhba.com  V� di s�n ng�c hoa ��ng m� cung chi�n ��u NPC l�u kh�u 01# n�m ��c 50 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 50*256+10) then
		SetTask(10,50*256+20)
AddNote("�i la ti�u s�n ��nh b�i c��ng ��o , c�m tr� v� ng�c san h� ") 
Msg2Player("B�t ���c ��u l�nh , m�i tr� l�i ng�c san h� b� V� di s�n ��ch c��ng ��o �o�t �i , b�n h� c�ng � la ti�u ��ch c��ng ��o l� m�t phe ") 
end 
end; 
