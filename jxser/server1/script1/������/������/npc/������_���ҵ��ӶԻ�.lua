-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n Nga Mi �� t� ��i tho�i 

function main(sel) 
Talk(4, "select","Nga Mi �� t� # thi�n h� c� g�i s�ng ch� ��ch trong m�n ph�i , l�y b�n ph�i l� th� nh�t . ","B�n ph�i �� t� ��u v� c� g�i , kh�ng ch� c� v� c�ng cao c��ng , h�n n�a �a t�i �a ngh� , c�m k� th� h�a kh�ng ch� n�o kh�ng tinh . ","C� ng��i n�i giang h� l� nam nh�n th� gi�i , nh�ng l� b�n ph�i l�i c� th� c�ng Thi�u L�m V� ���ng ��nh l�p , v� v�y ng��i trong v� l�m kh�ng kh�i k�nh �� t� b�n m�n ba ph�n . ","B�n ph�i ch� l�y n� �� t� . "); 
end; 

function select() 
Say("Nga Mi �� t� # ng��i ngh� gia nh�p b�n ph�i sao ? ", 2,"Gia nh�p /yes","Kh�ng gia nh�p /no"); 
end; 


function yes() 
if (GetSeries() ~= 2) then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i kh�ng thu�c v� th�y h� 
Say("Nga Mi �� t� # ng��i kh�ng thu�c v� th�y h� , kh�ng th� gia nh�p b�n ph�i . ", 0) 
else 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i �� thu�c v� th�y h� ��ch m�t m�n ph�i 
Say("Nga Mi �� t� # ch� c� kh�ng thu�c v� b�t k� m�n ph�i n�o ng��i c�a , m�i c� th� gia nh�p b�n ph�i . ", 0) 
else 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
if ( GetSex() == 0 ) then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i gi�i t�nh v� nam 
Say("Nga Mi �� t� # b�n m�n ch� l�y n� �� t� . ", 0) 
else -- script viet hoa By http://tranhba.com  nh� ch�i gi�i t�nh v� n� 
SetFaction("Ph�i Nga Mi ") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p ph�i Nga Mi 
NewWorld(13, 1867, 5021) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
SetFightState(1) -- script viet hoa By http://tranhba.com  nh� ch�i chuy�n ��i th�nh tr�ng th�i chi�n ��u 
SetRevPos(13) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetTask(1, 10) 
Say("Hoan ngh�nh ng��i gia nh�p ph�i Nga Mi #",0) 
end 
else 
Say("Nga Mi �� t� # b�n ng��i c�p kh�ng �� , thi�t ch� thao chi qu� c�p . tu luy�n ��n c�p m��i sau t�i t�m ta n�a �i #", 0) 
end 
end 
end; 
end; 

function no() 
end; 
