-- script viet hoa By http://tranhba.com description: th�n n�ng chi�c ��a bi�u h�c l� h�u th� gi�i nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/30 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-16) t�m th�i che gi�u nhi�m v� , sau n�y n�ng vi�t 

function OnDeath() 
UTask_world03 = GetTask(15); 
if (1 == 0) and (UTask_world03 == 1) and (GetTaskTemp(13) < 10) then -- script viet hoa By http://tranhba.com  t�i m��i con sau kh�ng h� n�a ��m h�t 
		UTask_world03 = UTask_world03 + 1	
SetTaskTemp(13, UTask_world03) 
end 
end 
