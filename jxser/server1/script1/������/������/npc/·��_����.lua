-- script viet hoa By http://tranhba.com  nam nh�c tr�n ng��i �i ���ng ch�y l�a 
-- script viet hoa By http://tranhba.com  2004/4/17 t�n c�u ch�y l�a nhi�m v� by fangjieying 

function main() 
Uworld76 = GetTask(76) 
if (Uworld76 == 10) then 
Talk(1,"","M�t con tu�n m� ��ng d��i t�ng c�y , �ang th� tr� l� tai nghe ��ng b�n ��ch ti�ng k�u ") 
SetTask(76,20) 
Msg2Player("Xem ra con ng�a n�y b� b�nh , ph�i l� c�ng chuy�n n�y c� li�n quan ") 
elseif (Uworld76 == 50) and (HaveItem(375) == 1) then -- script viet hoa By http://tranhba.com  ch�a h�t 
DelItem(375) 
SetTask(76,60) 
DelMagic(396) 
if (HaveMagic(397) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(397) 
end 
Msg2Player("Ng��i l�nh ng� ��n v� ���ng s�ng l�i t�m ph�p ") 
Talk(1,"","Ng��i �em m�u dung h�p cho m� nu�t v�o , ��ng th�i v�n gi� xu�n m�a m�c k� thu�t t�m ph�p , ch�y l�a �nh m�t c�a d�n d�n s�ng l�n . ��n b�y gi� ng��i m�i l�nh ng� ��n m�a m�c s�ng l�i t�m ph�p ") 
elseif (Uworld76 >10) and (Uworld76 < 50) then 
Talk(1,"","Ch�y l�a k�u m�t ti�ng , gi�ng nh� s�m ��nh m�t d�ng ") 
elseif (Uworld76 > 50) then 
Talk(1,"","Ng��i y t�t l�m ch�y l�a ��ch b�nh ") 
else 
Talk(1,"","Con ng�a n�y mao �� nh� m�u , t�n g�i ' ch�y l�a '") 
end 
end 
