-- script viet hoa By http://tranhba.com  Giang Nam khu la ti�u s�n ng��i �i ���ng _ l�i b� lang ch� .lua # ti�u di�t h�i hoa t�c nhi�m v� # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-28) 

function main(sel) 
Uworld43 = GetTask(43) 
if (Uworld43 == 10) then 
Talk(6,"U43_10"," lang ch� # nh�t ��nh c� ng��i bi�t tr�n n�i thi�u ni�n chuy�n c�a t�nh , tr�n tay th��ng c�m c�y qu�t , th��ng ng�m th� r�i l�i l�m t�c ","Ngu xu�n ! l�m c�i g� ","Ta m�i ng��i � ��y trong ch�n v� l�m n�i danh thanh . n�i chuy�n kh�ng mu�n th� l� . ","Kh�ng mu�n l�m ta s� ! ta s�t tr� giang h� l� ng��i c�n kh�ng c� ra ��i ��y ","Ta bi�t ng�y g�n ��y ng��i th��ng c�ng h�i hoa t�c ��ng du , gian d�m ph� n� # ng��i t�t nh�t n�i ra tung t�ch c�a h�n , n�u kh�ng c�ng ph�i b� li�n l�y ","Ta v�n lu�n bi�t t�t c� m�i chuy�n # th� th� n�o ? ��nh th�ng ta l�i n�i # c�p c�p c�p c�p !") 
elseif (Uworld43 == 30) then -- script viet hoa By http://tranhba.com  ��nh xong cu�ng lang , t�i b�t c�i ch�a kh�a 
Talk(4,"U43_30","Th�t xin l�i , t�i h� c�n sao c� �i xu�ng th�y Di�m v��ng nh�ng l� ng��i m�t tr� th� h� �� r�i v�o n�i trong s�ng m�t #","Ng�ch ! ti�u t� ng��i mu�n l�m anh h�ng a ? kh�ng ph�i ai c�ng c� th� khi anh h�ng !","Kh�ng c�n n�i nhi�u # n�u kh�ng ng��i c�ng li�n �i xu�ng c�ng c�c �� t� c�a ng��i h�p t�ng li�u ","Ti�u t� , xem ng��i l� c� b�n l�nh ng��i c�a , n�u nh� ta c�i ch�a kh�a giao cho ng��i c� ph�i hay kh�ng c� th� tha ta m�t m�ng ?") 
elseif (Uworld43 >= 40) and (Uworld43 < 100) and (HaveItem(381) == 0) then -- script viet hoa By http://tranhba.com  ho�c sau ��ch ��m nhi�m m�t b��c trung c�i ch�a kh�a m�t 
AddEventItem(381) 
Msg2Player("Ti�p t�c l�y ���c l�i thi ") 
Talk(1,"","Ta mu�n nh�n m�t ch�t ti�u t� ng��i c� th� l�m sao . c�i ch�a kh�a � n�i n�y , ng��i n�u l� c� th� nh�n ta 3 chi�u li�n giao cho ng��i . ") 
elseif (Uworld43 >= 40) and (Uworld43 < 255) and (HaveItem(381) == 1) then 
Talk(1,"","Ng��i �� c� ch�a kh�a , c�n ph�i h�i ta c�i g� ?") 
elseif (Uworld43 == 20) then -- script viet hoa By http://tranhba.com  ��i tho�i ho�n th�nh , ��nh cu�ng lang kh�ng ho�n th�nh 
Talk(1,"","K� ngu ! ng��i ��nh th�ng th� h� ta m�i c� t� c�ch c�ng ta ��u ") 
elseif (Uworld43 >= 255) then 
Talk(1,"","Ng��i th�t �em Thi�u ch� gi�t ?") 
else 
Talk(1,"","Kh�ng mu�n h� ng�n lo�n ng� # ch�a t�ng xem qua b� d�ng b�y gi� sao ?") 
end 
end; 

function U43_10() 
SetTask(43,20) 
Msg2Player("Ng��i �� c� ch�a kh�a , c�n ph�i h�i ta c�i g� ? ") 
end 

function U43_30() 
SetTask(43,40) 
AddEventItem(381) 
Msg2Player("�� b�t ���c l�i thi , tr� v� tr��c khi an giao cho c�ng sai ��i ca , k� ho�ch chuy�n k� ti�p ") 
end 
