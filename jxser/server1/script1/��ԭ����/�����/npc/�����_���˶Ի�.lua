-- script viet hoa By http://tranhba.com description: tay m�i th�n _ th� s�n 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 

function main() 
UTask_world38=GetTask(66) 
if (UTask_world38==2) then 
Say("Ta ra l�nh kh�ng t� , g�n nh�t l�n n�i ��nh t�i m�t con m�nh h� , h� c�t l� qu� tr�ng d��c li�u , ta mu�n mua 150 hai .", 2 ,"Mua /yes","Kh�ng mua /no") 
else 
Say(" � ch� n�y s�n th� ng��i c�a , ta l� th� hai , li�n kh�ng ai th� nh�t ! ",0) 
end 
end; 

function yes() 
if (GetCash() < 150) then 
Talk(1,"","Ch� c� ti�n , ng��i t�m ��n ta !") 
else 
Pay(150) 
AddEventItem(185) 
Msg2Player("T� th� s�n ch� mua h� c�t ") 
AddNote("T� th� s�n ch� mua h� c�t ") 
end 
end; 

function no() 
end 
