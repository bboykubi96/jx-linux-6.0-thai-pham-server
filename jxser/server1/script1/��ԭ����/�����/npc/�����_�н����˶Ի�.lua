-- script viet hoa By http://tranhba.com description: tay m�i th�n _ ���c ch�n th��ng nh�n 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 


function main() 
UTask_world38=GetTask(66) 
if (UTask_world38 == 2) then 
Say("Mu�n mua x� th�m kh�ng ? ta c� ch�nh t�ng t�n thu�c , ch� c�n 200 hai ! ", 2 ,"Mua /yes","Kh�ng mua /no") 
else 
Talk(1,""," l�m ���c ch�n th��ng nh�n , v�o nam ra b�c , th�t l� kh�ng d� , nh�n ta trong tay h�ng h�a , r�t kh� l�y ���c h�o h�a !") 
end 
end; 

function yes() 
if (GetCash()<200) then 
Talk(1,"","Ch� ng��i c� ti�n t�i t�m ta !") 
else 
Pay(200) 
AddEventItem(142) 
Msg2Player("T� ���c ch�n th��ng nh�n ch� mua ���c x� h��ng . ") 
AddNote("T� ���c ch�n th��ng nh�n ch� mua ���c x� h��ng . ") 
end 
end 

function no() 
end 
