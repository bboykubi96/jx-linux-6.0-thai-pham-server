-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n V� ���ng �� t� ��i tho�i 

function main(sel) 
Talk(3, "select","V� ���ng �� t� # thi�n h� v� h�c , b�c t�ng Thi�u L�m , nam s�ng V� ���ng , ng��i ngh� t�t nghe n�i qua ch� ? ","B�n ph�i v� c�ng �� � l�y t�nh ch� ��ng , l�y nhu th�ng c��ng , l�y ng�n th�ng tr��ng , l�y ch�m k�ch mau # l�y � v�n kh� , l�y kh� v�n th�n , h�u ph�t ch� nh�n . h��ng h� �i�m ��m , l�y v� vi th�ng c� ch�t , l�y v� h�nh th�ng h�u h�nh , m�i l� v� h�c cao nh�t c�nh gi�i . ","B�n ph�i v� c�ng c� � n�m b�t truy�n � , t�c nhu c�t ch�t th�y # t�m hi�m # h�o ��u # cu�ng r��u # nh� l� ng��i , b�t truy�n . "); 
end; 


function select() 
Say("V� ���ng �� t� # mu�n gia nh�p b�n m�n sao ? ", 2,"Gia nh�p /yes","Kh�ng gia nh�p /no"); 
end; 


function yes() 
if (GetSeries() ~= 4) then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i kh�ng thu�c v� th� h� 
Say("V� ���ng �� t� # ng��i kh�ng thu�c v� th� h� , kh�ng th� gia nh�p b�n ph�i . ", 0) 
else 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i �� thu�c v� th� h� ��ch m�t m�n ph�i 
Say("V� ���ng �� t� # ch� c� kh�ng thu�c v� b�t k� m�n ph�i n�o ng��i c�a , m�i c� th� gia nh�p b�n ph�i . ", 0) 
else 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
SetFaction("Ph�i V� ���ng ") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p V� ���ng 
-- script viet hoa By http://tranhba.com NewWorld(mapID, x, y) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
-- script viet hoa By http://tranhba.com SetFightState(1) -- script viet hoa By http://tranhba.com  nh� ch�i chuy�n ��i th�nh tr�ng th�i chi�n ��u 
-- script viet hoa By http://tranhba.com SetRevPos(ID) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com SetTask(5, 10) 
Say("Hoan ngh�nh ng��i gia nh�p ph�i V� ���ng #",0) 
else 
Say("V� ���ng �� t� # h�c v� chi ��o , d�c t�c th� b�t ��t . ng��i m�i v�o giang h� , hay l� tr��c th�t t�t h�c h�i kinh nghi�m �i #", 0) 
end 
end 
end 
end; 

function no() 
end; 
