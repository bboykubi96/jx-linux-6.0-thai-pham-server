-- script viet hoa By http://tranhba.com  t�y nam b�c khu giang t�n th�n ng��i �i ���ng 1 Ng� l�o cha ��i tho�i 
-- script viet hoa By http://tranhba.com  giang t�n th�n tay m�i nhi�m v� # Ng� l�o cha ��ch thu�c 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 

function main(sel) 
UTask_world21 = GetTask(49); 
if ((UTask_world21 == 0) and (GetLevel() >= 3)) then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng 
Say("Ho khan , ho khan , ta ��y ho khan ch�nh l� kh�ng ng�ng ���c , ai , c�ng kh�ng bi�t h�ng mai l�c n�o tr� l�i , l� th�i �i�m n�n �i d��c ph�ng h�t thu�c li�u , ho khan m�t c�i ho khan ", 2,"Gi�p m�t tay /yes","Kh�ng gi�p m�t tay /no") 
elseif (UTask_world21 == 1) then 
if (HaveItem(179) == 1) then -- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i c� hay kh�ng b�t ���c thu�c 
Talk(1,"","# c�m �n , �u�i Minh nhi , ta t�n l� h�ng mai l�m cho ng��i ��i gi�y !") 
DelItem(179) -- script viet hoa By http://tranhba.com  b�i b� nh� ch�i tr�n ng��i thu�c 
SetTask(49, 3) 
AddNote("Gi�p l�o Ng� c�m tr� v� 10 c� xuy�n b�i ho�n , ng� h�ng mai ��a m�t ��i gi�y t� �n ") 
Msg2Player("Gi�p l�o Ng� c�m tr� v� 10 c� xuy�n b�i ho�n , ng� h�ng mai ��a m�t ��i gi�y t� �n ") 
else 
Talk(1,"","Ng��i c� th� �i ti�m thu�c lang trung n�i �� h�i m�t ch�t , li�n t� n�i n�y �i t�y �i , kh�ng c� m�y b��c �� ��n , ho khan m�t c�i �� nh� k� li�u l� m��i vi�n xuy�n b�i ho�n , l�m phi�n ng��i !") 
end 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� ��i tho�i 
Talk(1,"","Ng� l�o cha # ta c�ng l�o th�i b� ��ch th�n th� c�ng kh�ng t�t , khu� n� v� chi�u c� ch�ng ta , ��n b�y gi� c�n kh�ng c� t�m nh� ch�ng , ch�ng ta l�m cha m� ��ch th�t l� xin l�i n�ng nha #") 
end 
end; 

function yes() 
Talk(1,"","Ng� l�o cha # ng��i c� th� �i ti�m thu�c lang trung n�i �� h�i m�t ch�t , li�n t� n�i n�y �i t�y �i , kh�ng c� m�y b��c �� ��n , ho khan m�t c�i �� nh� k� li�u l� m��i vi�n xuy�n b�i ho�n , l�m phi�n ng��i . ") 
SetTask(49, 1) 
AddNote("Ti�p nh�n v� , gi�p Ng� l�o gia �i ti�m thu�c l�y thu�c ") 
Msg2Player("Ti�p nh�n v� , gi�p Ng� l�o gia �i ti�m thu�c l�y thu�c ") 
end; 

function no() 
end; 
