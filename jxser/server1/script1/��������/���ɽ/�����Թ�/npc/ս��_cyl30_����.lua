-- script viet hoa By http://tranhba.com  �i�m th��ng s�n chi�n ��u NPC th� ph� # th�y kh�i c�a 30 c�p nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 30*256+20) and (random(0,100) < 50) then				-- script viet hoa By http://tranhba.com  30�������У�50%����
		SetTask(6,30*256+30)
AddNote("C�u ra h��ng s�n th� ph� trong tay �o�n hoa n�ng ��ch ch�u g�i . ") 
Msg2Player("C�u ra h��ng s�n th� ph� trong tay �o�n hoa n�ng ��ch ch�u g�i . ") 
end 
end; 
