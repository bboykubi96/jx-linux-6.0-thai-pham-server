-- script viet hoa By http://tranhba.com description: ph�i V� ���ng 40 c�p nhi�m v� ph�c b� g� n�i quan ��ng n�m con b�ch ng�c h� 2# V� ���ng 40 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/15 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-17) 

function OnDeath() 
	if (GetTask(5) == 40*256+20) then
UTask_wd40tmp = SetBit(GetTaskTemp(16),2,1) 
if (UTask_wd40tmp == 31) then 
			SetTask(5,40*256+40)
AddNote("Thu ph�c 5 ch� nhu�n m� b�ch ng�c h� . ") 
Msg2Player("Thu ph�c 5 ch� nhu�n m� b�ch ng�c h� . ") 
else 
SetTaskTemp(16, UTask_wd40tmp) 
end 
end 
end; 
