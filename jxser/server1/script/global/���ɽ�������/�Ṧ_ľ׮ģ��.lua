-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n c�i c�c g� t� vong tay m�i th�n luy�n c�p nhi�m v� ( kh�ng th� t�i di�n ��ch nhi�m v� ) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-09) 

function learn() 
UTask_world32 = GetTask(32) 
if (UTask_world32 >= 20) and (UTask_world32 < 70) then 
		SetTask(32,GetTask(32)+1)
end 
end; 
