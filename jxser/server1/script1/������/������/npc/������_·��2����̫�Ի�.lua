-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n ng��i �i ���ng 2 c� x�a qu� ��ng tho�i 
-- script viet hoa By http://tranhba.com  ba l�ng huy�n tay m�i nhi�m v� # c� x�a qu� ��ch b�o b�i 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-09) 

function main(sel) 
UTask_world19 = GetTask(47); 
if ((UTask_world19 == 0) and (GetLevel() >= 6)) then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng 
Say("C� x�a qu� # ta ti�u nhi t� ba ng�y tr��c �i ra ngo�i ��nh c� , ��n b�y gi� v�n ch�a v� , ta gi� r�i , �i kh�ng ��ng . ng��i gi�p ta ��n b�n h� �i xem h�n m�t ch�t c� ph�i l� �� tr� l�i hay kh�ng ���c ch� ? ",2,"Gi�p m�t tay /yes","Kh�ng gi�p /no") 
elseif(UTask_world19 == 1) then 
if(HaveItem(182) == 1) then 
Talk(2, "","C� x�a qu� # ��y kh�ng ph�i l� ta ti�u nhi t� ��ch ng�c b�i sao , ch�ng l� �� ch�ng l� �� � � � , con trai c�a ta c�a b�n ��ch th�t th� th�m nha , �� cho ta ��y c� l�o b� t� sau n�a ��i s�ng th� n�o nha ��","C� x�a qu� # c�m �n ng��i gi�p m�t tay t�m ���c kh�i ng�c b�i n�y , nh�n n� ta c�m gi�c ���c con trai �ang � b�n c�nh ta �� , t� n�y ch� v� l� gia truy�n b�o b�i , ta ��y c� l�o th�i b� m�t ch� c�ng kh�ng bi�t , s� ��a cho ng��i �i . � � � ��") 
DelItem(182) 
AddEventItem(183) 
SetTask(47, 2) 
AddNote("�em ng�c b�i ��a v� cho c� x�a qu� . ") 
Msg2Player("�em ng�c b�i ��a v� cho c� x�a qu� . ") 
AddRepute(4) -- script viet hoa By http://tranhba.com  th�m danh v�ng 6 �i�m 
Msg2Player("Ng��i giang h� danh v�ng t�ng l�n 4 �i�m ") 
else 
Talk(1,"","C� x�a qu� # b�n t�u �ang � huy�n th�nh ��ch ph�a ��ng , ��nh c� ng��i c�a nh� c�ng t� n�i �� l�n b� , ng��i th�y h�n h�y c�ng h�n n�i m� n� � ch� n�y ch� h�n li�t , ho khan m�t c�i ��") 
end 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� ��i tho�i 
if (random(0,1) == 0) then 
Talk(1,"","C� x�a qu� # c� d�n kh� a # ta c� hai ��a con trai ��u l� � h� th��ng ��nh c� ��ch th�i �i�m g�p g� s�ng gi� ch�t ch�m . ") 
else 
Talk(1,"","C� x�a qu� # ��nh c� ng��i c�a nh� kh�ng c� c� �n , kh�ng ��nh c� l�i c�a ngay c� c�m c�ng kh�ng c� �n #z") 
end 
end 
end; 

function yes() 
Talk(1,"","C� x�a qu� # ng��i xem ta c�ng l�o h� �� , qu�n n�i cho ng��i bi�t h�n h�nh d�ng g� , ho khan m�t c�i �� tr�n c� h�n mang theo m�t kh�i ng�c b�i , r�t t�t nh�n ��ch . ") 
SetTask(47, 1) 
AddNote("Nh�n ���c nhi�m v� # c� x�a qu� ��ch ti�u nhi t� ��nh c� ba ng�y kh�ng tr� v� , gi�p n�ng �i huy�n th�nh b�n t�u ph� c�n t�m m�t ch�t . ") 
Msg2Player("Nh�n ���c nhi�m v� # c� x�a qu� ��ch ti�u nhi t� ��nh c� ba ng�y kh�ng tr� v� , gi�p n�ng �i huy�n th�nh b�n t�u ph� c�n t�m m�t ch�t . ") 
end; 

function no() 
Talk(1,"","C� x�a qu� # ng��i c� chuy�n l�i c�a c�ng kh�ng l�m phi�n ng��i . ") 
end; 
