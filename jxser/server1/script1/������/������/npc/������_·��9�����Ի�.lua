-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n ng��i �i ���ng 9 a ph��ng ��i tho�i 
-- script viet hoa By http://tranhba.com  ba l�ng huy�n tay m�i nhi�m v� # a ph��ng ��ch g� trang 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-09) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) s�a ��i trang b� thu�c t�nh sinh th�nh ph��ng th�c 

Include("\\script\\global\\itemhead.lua")

function main() 
UTask_world20 = GetTask(48); 
if ((UTask_world20 == 0) and (GetLevel() >= 2)) then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng 
Say("A ph��ng # cha m� �� an b�i cho ta h�o h�n s� li�u , nh�ng l� nh� ch�ng ta ngh�o ph�i ngay c� m�t gi�ng d�ng ��ch g� trang c�ng c�m kh�ng ra ���c , ai , v� lu�n nh� th� n�o , m�t gi�ng d�ng ��ch �� trang s�c �eo tay t�ng ��c c� a . g�n nh�t huy�n l� t�i m�t nh�m ngo�i ��a th��ng nh�n , ng��i c� th� gi�p ta �i xem m�t ch�t c� hay kh�ng ti�n nghi �� trang s�c �eo tay sao ? ", 2,"Gi�p m�t tay /yes","Kh�ng gi�p /no") 
elseif(UTask_world20 == 1) then 
if(HaveItem(181) == 1) then 
DelItem(181) 
SetTask(48, 3) -- script viet hoa By http://tranhba.com  nhi�m v� t�m th�i ��i th�nh kh�ng th� t�i di�n ho�n th�nh 
Talk(1,"","A ph��ng # a # ��y ��i v�i v�ng tai th�t l� qu� ��p , nh�ng c�ng kh�ng th� �� cho ng��i b�ch ti�u ti�n nha , c�i n�y ��nh c�i m� l� t� ta l�m , ng��i h�y thu �i . ") 
AddNote("�em v�ng tai ��a cho a ph��ng , ho�n th�nh nhi�m v� ") 
Msg2Player("�em v�ng tai ��a cho a ph��ng , ho�n th�nh nhi�m v� ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if(GetSex() == 0) then 
AddItem(0, 7, 6, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" l�y ���c b� c�n . ") 
else 
AddItem(0, 7, 8, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" l�y ���c ho�ng b� d�y c�t t�c ") 
end 
AddRepute(6) -- script viet hoa By http://tranhba.com  th�m danh v�ng 6 �i�m 
Msg2Player("Ng��i giang h� danh v�ng t�ng l�n 6 �i�m . ") 
else 
Talk(1,"","A ph��ng # nh�ng th��ng nh�n kia �ang � huy�n l� , l�m phi�n ng��i gi�p ta h�i m�t ch�t . ") 
end 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� ��i tho�i 
if (random(0,1) == 0) then 
Talk(1,"","A ph��ng # c� d�n ��ch n� nhi , cu�i c�ng ch� c� th� g� cho c� d�n , l�m m�t c� d�n ��ch th� t� . ") 
else 
Talk(1,"","A ph��ng # cha m� �� an b�i cho ta li�u h�n s� , m�c d� ta kh�ng mu�n l�m m�t c� ph� , nh�ng l� c�ng kh�ng c� bi�n ph�p , cha m� chi m�nh kh�ng th� vi a . ") 
end 
end 
end; 

function yes() 
Talk(1,"","A ph��ng # nh�ng th��ng nh�n kia �ang � huy�n l� , l�m phi�n ng��i gi�p ta h�i m�t ch�t . ") 
SetTask(48, 1) 
Msg2Player("Nh�n ���c nhi�m v� # a ph��ng th�nh c�u ng��i �i xem m�t ch�t , c� hay kh�ng ti�n nghi �� trang s�c �eo tay c� th� sung l�m g� trang ") 
AddNote("Nh�n ���c nhi�m v� # a ph��ng th�nh c�u ng��i �i xem m�t ch�t , c� hay kh�ng ti�n nghi �� trang s�c �eo tay c� th� sung l�m g� trang ") 
end; 

function no() 
end; 
