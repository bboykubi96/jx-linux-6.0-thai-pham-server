-- script viet hoa By http://tranhba.com  long m�n tr�n ng��i �i ���ng th��ng quan thu tay m�i nhi�m v� # gi�i thi�u c�ng vi�c 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-04) 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
UTask_world25 = GetTask(25) 
if (UTask_world25 == 0) then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng 
Talk(2,"W25_get","V� tr�nh n� chi�n lo�n , t�i h� t� trong nguy�n ��n c�i n�y . nh�ng l� kh�ng bi�t b�y gi� n�n �i h��ng ph��ng n�o !","Ng��i c� th� t�m c� c�ng vi�c , ch�m n�a ch�m mu�n chuy�n sau n�y !") 
elseif (UTask_world25 == 6) then 
Talk(1,"W25_prise","Qu�n tr� l�o b�n ��ng � cho ng��i �i gi�p m�t tay !") 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� ��i tho�i 
Talk(1,"","## Trung Nguy�n ��ch chi�n tranh th�t s� l� qu� th�m thi�t , ta b� b�t �i run r�y �� hai n�m , th�t s� l� kh�ng ch�u n�i m�i ch�y tr�n , hy v�ng c� th� � n�i n�y tr�n nh� b�nh an qu� m�t ��i #") 
end 
end; 

function W25_get() 
Say("T�i h� ��i v�i c�i n�y m�t d�y m�t ch�t c�ng kh�ng bi�t , c�ng kh�ng bi�t n�i n�o ch�a ch�p ta !",2,"Gi�p h�n ngh� bi�n ph�p ! /W25_get_yes","Kh�ch l� h�n ! /W25_get_no") 
end 

function W25_get_yes() 
Talk(1,"","Ch� ta gi�p ng��i h�i m�t ch�t c� hay kh�ng th�ch h�p c�ng vi�c !") 
SetTask(25,3) 
AddNote("Ti�p nh�n nhi�m v� cho th��ng quan thu gi�i thi�u c�ng vi�c ") 
Msg2Player("Ti�p nh�n nhi�m v� cho th��ng quan thu gi�i thi�u c�ng vi�c ") 
end 

function W25_get_no() 
Talk(1,"","Nh� v�y ta �� gi�p kh�ng ���c ng��i . nh�ng l� ng��i ph�i tin t��ng thi�n v� tuy�t nh�n ���ng . l�n tinh th�n t�i . s� c� bi�n ph�p !") 
end 

function W25_prise() 
Talk(1,"","Ta th�t kh�ng bi�t th� n�o c�m t� ng��i m�i ph�i , ��y l� ta ch�y tr�n tr�n ���ng ph�ng th�n ��ch �� , hy v�ng ng��i c� th� d�ng ��ch th��ng ") 
SetTask(25,10) 
AddRepute(3) 
AddNote("N�i cho th��ng quan thu t�m ���c c�ng t�c , ho�n th�nh nhi�m v� ") 
Msg2Player("N�i cho th��ng quan thu t�m ���c c�ng t�c , ho�n th�nh nhi�m v� ") 
i = random(0,8) 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if(i <= 5) then 
AddItem(0, 0, i, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
else 
i = i - 6 
AddItem(0, 1, i, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
end 
Msg2Player(" l�y ���c m�t thanh binh kh� ") 
Msg2Player("Ng��i danh v�ng gia t�ng 3 �i�m ") 
end 
