-- script viet hoa By http://tranhba.com  hai h� khu Thi�n v��ng gi�p nh�p m�n nhi�m v� ch�ng c�t r��u t�nh gi� ch�n v�n 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnTimer() 
StopTimer() -- script viet hoa By http://tranhba.com  k�t th�c t�nh gi� 
Msg2Player("Ch�ng c�t r��u th�i gian �� ��n #") 
SetTask(38,SetByte(GetTask(38),1,80)) 
end; 
