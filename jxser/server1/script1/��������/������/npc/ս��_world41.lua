-- script viet hoa By http://tranhba.com  long m�n tr�n - c� d��ng ��ng -� y�u �ao � tri�u ph��ng ( th� gi�i nhi�m v� � c�u ti�u ��p �) 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2004-03-03) 

function OnDeath() 
Uworld41 = GetByte(GetTask(41),1) 
if (Uworld41 >= 10) and (Uworld41 < 100) and (HaveItem(352) == 0) and (random(0,99) < 50) then -- script viet hoa By http://tranhba.com  nhi�m v� trung h�n n�a kh�ng c� c�i ch�a kh�a , 50% ky t� s� 
if (Uworld41 == 10) then -- script viet hoa By http://tranhba.com  l�n ��u ti�n ��nh l�c t�ng l�n t�nh ��i tho�i , c�ng thay ��i l��ng ph� tr� gi� 
if (GetSex() == 0) then -- script viet hoa By http://tranhba.com  ��i tho�i nam n� b�t ��ng 
Talk(1,"","Anh h�ng tha m�ng , ng�y h�m qua gi�nh ���c ti�u ��p sau n�ng li�u ch�t kh�ng theo , b�y gi� c�n nh�t � ng�c t�i b�n trong ��y . ��y l� c�i ch�a kh�a , ch� c�u anh h�ng b� qua cho nh� / ti�u nh�n m�ng ch� !") 
else 
Talk(1,"","N� hi�p tha m�ng , ng�y h�m qua gi�nh ���c ti�u ��p sau n�ng li�u ch�t kh�ng theo , b�y gi� c�n nh�t � ng�c t�i b�n trong ��y . ��y l� c�i ch�a kh�a , ch� c�u anh h�ng b� qua cho nh� / ti�u nh�n m�ng ch� !") 
end 
Uworld41 = SetByte(GetTask(41),1,30) 
SetTask(41,Uworld41) 
AddNote("��nh b�i c��ng ��o ��u m�c � y�u �ao � tri�u ph��ng , l�y ���c m�t thanh m� ra ng�c t�i c�u ti�u ��p ��ch c�i ch�a kh�a ") 
end 
AddEventItem(352) -- script viet hoa By http://tranhba.com  c� quan c�i ch�a kh�a 
Msg2Player("B�t ���c c� quan c�i ch�a kh�a ") 
end 
end; 
