-- script viet hoa By http://tranhba.com  Nh�n ��ng s�n d� gi�c ��ng m� cung chi�n ��u NPC ��i BOSS01# n�m ��c xu�t s� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 60*256+20) and (HaveItem(222) == 0) and (random(0,99) < 50) then
AddEventItem(222) 
AddNote("Ng��i ��nh b�i nh�n ��ng ph�i ��u l�nh , �em t� ��c ch�u c�m tr� v� Ng� ��c gi�o ") 
Msg2Player("Ng��i ��nh b�i nh�n ��ng ph�i ��u l�nh , �em t� ��c ch�u c�m tr� v� Ng� ��c gi�o ") 
end 
end; 
