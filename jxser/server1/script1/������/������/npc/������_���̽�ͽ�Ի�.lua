-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n ng�y nh�n gi�o �� ��i tho�i 

function main(sel) 
Talk(2, "select","Ng�y nh�n gi�o �� # b�n gi�o tin ph�ng ��i kim qu�c ��ch n��c d�y t�t m�n d�y , gi�o ch� ch�nh l� qu�c s� ho�n nhan ho�nh li�t , h�n t�nh t�nh cu�ng ng�o , m�u tr� h�n ng��i , ngay c� ��i kim ho�ng �� ��i v�i h�n c�ng l� nh��ng ba ph�n . ","B�n gi�o v� s� cao th� , chi�u m� li�u nh�m l�n kim t�ng hai n��c ��ch cao th� , c� th� n�i ��m r�ng hang h� . "); 
end; 

function select() 
Say("Ng�y nh�n gi�o �� # mu�n gia nh�p b�n gi�o sao ? ", 2,"Gia nh�p /yes","Kh�ng gia nh�p /no"); 
end; 


function yes() 
if (GetSeries() ~= 3) then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i kh�ng thu�c v� h�a h� 
Say("Ng�y nh�n gi�o �� # ng��i kh�ng thu�c v� h�a h� , kh�ng th� gia nh�p b�n m�n . ", 0) 
else 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i �� thu�c v� h�a h� ��ch m�t m�n ph�i 
Say("Ng�y nh�n gi�o �� # ch� c� kh�ng thu�c v� b�t k� m�n ph�i n�o ng��i c�a , m�i c� th� gia nh�p b�n gi�o . ", 0) 
else 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
SetFaction("Ng�y nh�n d�y ") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p ng�y nh�n d�y 
-- script viet hoa By http://tranhba.com NewWorld(45, x, y) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
-- script viet hoa By http://tranhba.com SetFightState(1) -- script viet hoa By http://tranhba.com  nh� ch�i chuy�n ��i th�nh tr�ng th�i chi�n ��u 
-- script viet hoa By http://tranhba.com SetRevPos(ID) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com SetTask(4, 10) 
Say("Hoan ngh�nh ng��i gia nh�p ng�y nh�n d�y #",0) 
else 
Say("Ng�y nh�n gi�o �� # b�n gi�o �� t� ��u l� tinh anh h�ng ng��i , gi�ng nh� ng��i v�y ��ch tay m�i , b�n gi�o ph�i kh�ng thu ��ch . ", 0) 
end 
end 
end 
end; 

function no() 
end; 
