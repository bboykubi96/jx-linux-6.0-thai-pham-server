-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n ��ng ��nh h� b�n t�u thuy�n phu 2 ��i tho�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) r�t xu�ng ra th�n c�p b�c y�u c�u v� 5 c�p 

function main(sel) 
Say("Thuy�n phu # c� c�u n�i ��ch h�o , kh�o s�n c�t s�n , kh�o th�y c�t th�y . c�i n�y t�m tr�m d�m ��ng ��nh h� , ch�nh l� ch�ng ta c� d�n ��ch �o c�m cha m� . ng��i mu�n ng�i thuy�n sao ? ", 2,"�i Thi�n v��ng ��o /yes","Kh�ng ng�i /no"); 
end; 

function yes() 
if (GetLevel() >= 5) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
if (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i l� Thi�n v��ng gi�p �� t� , ng�i thuy�n kh�ng thu ti�n 
Say("Thuy�n phu # nguy�n lai l� Thi�n v��ng gi�p ��ch huynh �� , h�o thuy�t # ng�i ta thuy�n kh�ng c�n ti�n , ng�i xong #", 1,"�a t� /ok1") 
else 
Say("Thuy�n phu # Thi�n v��ng ��o ? ng��i b�nh th��ng c� th� ��n g�n kh�ng ph�i , mu�n �i l�i c�a , ng��i nhi�u l�m cho ch�t b�c . ", 1,"���c r�i /ok2") 
end 
else 
Say("Thuy�n phu # th�t xin l�i , kh�ng t�i c�p n�m ��ch tay m�i kh�ng th� ng�i thuy�n ra th�n . ", 0) 
end 
end; 

function no() 
end; 


function ok1() 
NewWorld(59, 1425, 3472) 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
end; 


function ok2() 
if (GetCash() >= 100) then -- script viet hoa By http://tranhba.com  tham kh�o tr� gi� 
Pay(100) 
NewWorld(59, 1425, 3472) 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
else 
Say("Thuy�n phu # mu�n �i Thi�n v��ng ��o , kh�ng c� b�c kh�ng th� ���c . ", 0) 
end 
end;
