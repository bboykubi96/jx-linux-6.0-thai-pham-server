-- script viet hoa By http://tranhba.com  V� di s�n m� cung chi�n ��u NPC ? ? 01# n�m ��c 30 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if (UTask_wu >= 30*256+10) and (UTask_wu < 40*256) and (HaveItem(87) == 0) and (random(0,99) < 50) then
AddEventItem(87) 
		if (UTask_wu == 30*256+10) then
AddNote(" l�y ���c m�c h��ng ��nh ") 
Msg2Player(" l�y ���c m�c h��ng ��nh ") 
else 
Msg2Player("Ch�ng qua l� gi� m�c h��ng ��nh ") 
end 
end 
end; 
