-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y th�nh ��ng t�ng hai b�o r��ng ng�y nh�n d�y ra s� nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4) 
	if (UTask_tr == 60*256+70) then
if (HaveItem(132) == 1) then 
Talk(1,"","B�o r��ng �� v� �ch ") 
elseif (HaveItem(102) == 1) then 
DelItem(102) 
AddEventItem(132) 
-- script viet hoa By http://tranhba.com  SetTask(4, 68) 
AddNote("M� ra b�o r��ng , l�y ���c ng�y nh�n th�nh da d� s�ch m�t quy�n ") 
Msg2Player("M� ra b�o r��ng , l�y ���c da d� s�ch m�t quy�n ") 
else 
Talk(1,"","Kh�ng c� c�i ch�a kh�a , m� kh�ng ra b�o r��ng .") 
end 
else 
Talk(1,"","Kh�ng c� c�i ch�a kh�a , m� kh�ng ra b�o r��ng .") 
end 
end; 
