-- script viet hoa By http://tranhba.com  Thi�u L�m ph�a sau n�i m�t th�t chi�n ��u NPC ??01# Thi�u L�m 40 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function OnDeath() 
UTask_sl = GetTask(7) 
UTask_sl40tmp = GetTaskTemp(44) 
	if (UTask_sl == 40*256+10) and (random(1,99) < 33) then
		SetTask(7,40*256+20)
AddNote("B�t ���c kh�u quy�t # ��m b�p ni t�m m� h�ng . ") 
Msg2Player("B�t ���c kh�u quy�t # ��m b�p ni t�m m� h�ng . ") 
end 
end; 
