-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y th�nh ��ng m�t t�ng ��ch nh�n h�t t� tinh # ng�y nh�n xu�t s� nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function OnDeath() 
UTask_tr = GetTask(4) 
Task_trtmp60 = GetTask(28) 
	if (UTask_tr == 60*256+50) and (GetBit(Task_trtmp60,3) == 0) then
SetTask(28, SetBit(Task_trtmp60,3,1)) 
AddNote(" l�y ���c kh�u quy�t � giang h� x� t�c . ") 
Msg2Player(" l�y ���c kh�u quy�t � giang h� x� t�c . ") 
end 
end; 
