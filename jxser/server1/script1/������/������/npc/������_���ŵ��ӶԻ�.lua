-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n ���ng m�n �� t� ��i tho�i 

function main(sel) 
Talk(4, "select","���ng m�n �� t� # b�n m�n h�ng c� Xuy�n Th�c , b�ng v�o �m kh� c�ng h�a kh� ��c b� v� l�m , u�ng d� giang h� ��t m�y tr�m n�m l�u . ","Ng��i trong giang h� n�i b�n m�n m� bi�n s�c , c� th� th�y ���c b�n m�n ��ch l�i h�i #","C�i g� v� l�m ch�nh ��o # d�n t�c ��i ngh�a , t�t c� ��u l� ch� m� # ch�ng ta ch� d�a theo b�i c�a m�nh l� ra b�i , c�ng kh�ng nguy�n c�ng nh�ng th� kia n�u n�i danh m�n ch�nh ph�i k�t giao , c�ng kh�ng ti�t c�ng t� ma oai ��o v� ng� . ","Mu�n gia nh�p b�n m�n c�ng kh�ng ph�i l� m�t chuy�n d� d�ng chuy�n c�a , c� � b�t l��ng ng��i c�a ch�ng ta c�ng kh�ng n�n #"); 
end; 


function select() 
Say("���ng m�n �� t� # mu�n gia nh�p b�n m�n sao ? ", 2,"Gia nh�p /yes","Kh�ng gia nh�p /no"); 
end; 


function yes() 
if (GetSeries() ~= 1) then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i kh�ng thu�c v� m�c h� 
Say("���ng m�n �� t� # ng��i kh�ng thu�c v� m�c h� , kh�ng th� gia nh�p b�n m�n . ", 0) 
else 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i �� thu�c v� m�c h� ��ch m�t m�n ph�i 
Say("���ng m�n �� t� # ch� c� kh�ng thu�c v� b�t k� m�n ph�i n�o ng��i c�a , m�i c� th� gia nh�p b�n m�n . ", 0) 
else 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
SetFaction("���ng m�n ") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p ���ng m�n 
NewWorld(25, 3972, 5247) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
SetFightState(1) -- script viet hoa By http://tranhba.com  nh� ch�i chuy�n ��i th�nh tr�ng th�i chi�n ��u 
SetRevPos(15) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetTask(2, 10) 
Say("Hoan ngh�nh ng��i gia nh�p ���ng m�n #",0) 
else 
Say("���ng m�n �� t� # b�n ng��i c�p kh�ng �� , c�n l� ch� tu luy�n ��n c�p m��i sau t�i t�m ta n�a �i #", 0) 
end 
end 
end 
end; 

function no() 
end; 
