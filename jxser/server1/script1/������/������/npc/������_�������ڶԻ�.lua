-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n Thi�n v��ng bang ch�ng ��i tho�i 

function main(sel) 
Talk(3, "select","Thi�n v��ng bang ch�ng # b�n bang bang ch� d��ng anh � tr�n giang h� h�ch h�ch n�i danh , ��ng xem n�ng l� c� c� g�i , nh�ng l� v� ngh� cao c��ng , ��m th�c h�n ng��i , kh�ng �� cho b�c m�y r�u , c�c huynh �� trong bang c�ng d�ng/u�ng n�ng #","B�n bang bang ch�ng tr�i r�ng hai h� , nhi�u ng��i th� l�n , thi�n h� kh�ng ng��i d�m khinh th��ng ch�ng ta #","B�n bang v�a kh�ng qu�n Kim # c�ng ph�n t�ng ��nh , c�c huynh �� ��u l� ngh�o kh� d�n ch�ng xu�t th�n , x�ng x�o giang h� c�ng ch� l� v� c� con ���ng s�ng . ho�ng �� n�o ng�i giang s�n , c�ng ch�ng ta c�ng kh�ng quan h� th� n�o #"); 
end; 

function select() 
Say("Thi�n v��ng bang ch�ng # ng��i ngh� gia nh�p b�n bang sao ? ", 2,"Gia nh�p /yes","Kh�ng gia nh�p /no"); 
end; 


function yes() 
if (GetSeries() ~= 0) then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i kh�ng thu�c v� kim h� 
Say("Thi�n v��ng bang ch�ng # l�y t� ch�t c�a ng��i c�ng c�n c�t kh�ng th�ch h�p tu luy�n b�n m�n v� c�ng , ch�ng ta kh�ng mu�n ng� ng��i con em , ng��i c�n l� kh�c ��u minh s� �i #", 0) 
else 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i �� thu�c v� kim h� ��ch m�t m�n ph�i 
Say("Thi�n v��ng bang ch�ng # ch� c� kh�ng thu�c v� b�t k� m�n ph�i n�o ng��i c�a , m�i c� th� gia nh�p b�n bang . ", 0) 
else 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
if ( GetSex() == 1 ) then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i gi�i t�nh v� n� 
Say("Thi�n v��ng bang ch�ng # b�n bang bang ch�ng ��u l� ch�t th� h�o ��i h�n , gi�ng nh� ng��i v�y ki�u t�ch t�ch ��ch c� n��ng c�ng kh�ng th�ch h�p b�n bang . ", 0) 
else -- script viet hoa By http://tranhba.com  nh� ch�i gi�i t�nh v� nam 
SetFaction("Thi�n v��ng gi�p ") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p Thi�n v��ng gi�p 
-- script viet hoa By http://tranhba.com NewWorld(59, 1425, 3472) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
-- script viet hoa By http://tranhba.com SetFightState(1) -- script viet hoa By http://tranhba.com  nh� ch�i chuy�n ��i th�nh tr�ng th�i chi�n ��u 
-- script viet hoa By http://tranhba.com SetRevPos(21) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com SetTask(3, 10) 
Say("Hoan ngh�nh ng��i gia nh�p Thi�n v��ng gi�p #",0) 
end 
else 
Say("Thi�n v��ng bang ch�ng # h�c v� chi ��o , d�c t�c th� b�t ��t . b�n ng��i c�p kh�ng �� , ch� tu luy�n ��n c�p m��i sau t�i t�m ta n�a �i #", 0) 
end 
end 
end; 
end; 
