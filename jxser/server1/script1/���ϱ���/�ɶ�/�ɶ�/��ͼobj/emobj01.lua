-- script viet hoa By http://tranhba.com description: t�y nam b�c khu th�nh �� ph� ph�i Nga Mi 10 c�p nhi�m v� l��ng m� b�c 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/24 

function main() 
SetPropState() 
AddEventItem(118) 
Msg2Player("Nh�t ���c m�t kh�i l��ng m� b�c . ") 
if (GetTask(1) > 10*256) and (GetTask(1) < 20*256) then 
AddNote(" � th�nh �� ph�a t�y ��ch trong r�ng c�y t�m ���c m�t kh�i l��ng m� b�c . ") 
end 
end; 
