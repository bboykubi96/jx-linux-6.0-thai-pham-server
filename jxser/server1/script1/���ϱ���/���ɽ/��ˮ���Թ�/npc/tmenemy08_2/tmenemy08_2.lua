-- script viet hoa By http://tranhba.com description: ���ng m�n 50 c�p nhi�m v� n�i Thanh Th�nh vang n��c ��ng qu�i v�t 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  nhi�m v� n�y �� �� ph�c t�p , mu�n �em n� h�y b� , th� v�o k� tha nhi�m v� trung �i d�ng . 

function OnDeath() 
UTask_tm = GetTask(2); 
	if ((UTask_tm == 50*256+80) and (HaveItem(48) == 0)) then
Msg2Player(" l�y ���c gi� # �m kh� ph� # , nguy�n lai l� m�t quy�n kh�ng c� ch� thi�n th� ") 
end 
end; 
