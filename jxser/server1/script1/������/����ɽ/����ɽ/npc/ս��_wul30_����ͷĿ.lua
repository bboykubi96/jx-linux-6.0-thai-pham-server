-- script viet hoa By http://tranhba.com  V� di s�n m� cung chi�n ��u NPC ? ? 02# n�m ��c 30 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu == 30*256+20) and (HaveItem(221) == 0) and (random(0,99) < 40) then
AddEventItem(221) 
AddNote("��nh b�i ph�n �� , c�m tr� v� th�t m�c h��ng ��nh ") 
Msg2Player("��nh b�i ph�n �� , c�m tr� v� th�t m�c h��ng ��nh ") 
end 
end; 
