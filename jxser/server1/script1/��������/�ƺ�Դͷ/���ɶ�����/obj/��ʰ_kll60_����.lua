-- script viet hoa By http://tranhba.com  Ho�ng H� ng�n ngu�n m� cung b�o r��ng C�n L�n xu�t s� nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main() 
UTask_kl = GetTask(9) 
	if (UTask_kl == 60*256+20) then
if ((HaveItem(11) == 1) and (HaveItem(12) == 1) and (HaveItem(13) == 1) and (HaveItem(14) == 1) and (HaveItem(15) == 1)) then 
DelItem(11) 
DelItem(12) 
DelItem(13) 
DelItem(14) 
DelItem(15) 
AddEventItem(16) 
AddNote("B� ph�i �i c�m n�m m�u th�ch ") 
Msg2Player("Ng��i d�ng t�i ph��ng ��ch 5 c�i ch�a kh�a m� ra c�i r��ng c�m ng� th�i th�ch ") 
else 
Talk("Kh�ng c� kia 5 c�i ch�a kh�a , ng��i kh�ng c�ch n�o khai c�i r��ng c�m �� ") 
end 
else 
Talk(1,"","C�i n�y b�o r��ng kh�a n�i l�n ") 
end 
end; 
