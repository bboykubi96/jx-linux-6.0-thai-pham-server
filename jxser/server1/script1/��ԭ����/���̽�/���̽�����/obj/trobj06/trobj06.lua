-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y 20 c�p nhi�m v� ti�u b�i l� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4); 
	if (UTask_tr == 20*256+50) and (HaveItem(126) == 0) then
SetPropState() 
AddEventItem(126) 
Msg2Player("T�m ���c m�t ��ch ti�u b�i l� . ") 
AddNote("T�m ���c m�t ��ch ti�u b�i l� . ") 
end 
end; 
