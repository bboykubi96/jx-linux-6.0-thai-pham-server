-- script viet hoa By http://tranhba.com  nam nh�c tr�n # ng��i �i ���ng # B�nh ��i gia ( t�n c�u ch�y l�a nhi�m v� ) 
-- script viet hoa By http://tranhba.com  2004/4/17 t�n c�u ch�y l�a nhi�m v� by fangjieying 

Include("\\script\\global\\repute_head.lua")

function main() 
Uworld76 = GetTask(76) 
-- script viet hoa By http://tranhba.com  if (GetLevel() >= 60) and (Uworld76 == 0) then -- script viet hoa By http://tranhba.com  ph� h�p nhi�m v� �i�u ki�n 
-- script viet hoa By http://tranhba.com  Talk (8,"","Nh� ch�i # l�o ��i gia , ng�i ��ch tr� u�ng v�o m�t h�p li�n mi�ng ��y sinh t�n , k�t ph�p ho�n to�n kh�ng c� a . ","B�nh ��i gia # kh�ng d�i g�t ng�i n�i , ti�u l�o nhi m�y th�p ni�n c�ng phu , c�ng hoa � n�i n�y ph�a tr�n . ","Nh� ch�i # t�i h� kinh ni�n b�n ba , th��ng b� ng�y ��c chi h�i , n�u c� th� ng�y ng�y u�ng ���c ng�i ��ch tr� l�nh , v�y th� th�t l� m�t qu� nhanh ho�t . ","B�nh ��i gia # ch�ng l� ng��i l� ng��i trong giang h� ? ","Nh� ch�i # kh�ng t� , l�o ��i gia th�t l� �nh m�t nh� �u�c . ","B�nh ��i gia # ai nha # th�t t�t qu� . ti�u huynh �� , ta th�y ng��i anh kh� b�c ng��i , l�i l� giang h� b�ng h�u . ti�u l�o nhi c�i n�y c� m�t vi�c mu�n m�i ng��i gi�p m�t tay , n�u c� th� th�nh l� ng��i h�m �� ���c chi kh� c�ng c� th� t� m� . ","Nh� ch�i # ��i gia ng�i thi�t m�c chi�t s�t ti�u t� , c� chuy�n c� vi�c n�i . ","B�nh ��i gia # ti�u huynh �� nh�n ta b�n ng��i con ng�a n�y . ") 
-- script viet hoa By http://tranhba.com  SetTask(76,10) 
-- script viet hoa By http://tranhba.com  Msg2Player("D� x�t B�nh ��i gia b�n c�nh m� ") 
if (Uworld76 == 10) then 
Talk (1,"","D� x�t B�nh ��i gia b�n c�nh m� . ") 
elseif (Uworld76 == 20) then 
SetTask(76,25) 
Talk (3,"W76_get","Mao s�c thu�n khi�t , th�n th� c��ng tr�ng , ch�y g�p nh� bay , th�t l� th�t h�o m� a . ","Ng��i th�t l� c� �nh m�t , ch�ng qua l� g�n nh�t n� ng� b�nh , c�n nhanh l�n m�t ch�t tr� li�u . ","# ��ng ti�c ta kh�ng ph�i l� th�y thu�c , kh�ng th� gi�i quy�t . ") 
elseif (Uworld76 == 25) then -- script viet hoa By http://tranhba.com  c�t ��t sau n�ng ti�p nh�n v� ��ch x� l� 
Talk(1,"W76_get","Nh� th� n�o , ��ng � gi�p ta sao ?") 
elseif (Uworld76 == 60) then 
Talk(1,"W76_prise","Qu� nhi�n ch�a h�t , kh�ng hi�u n�n th� n�o c�m t� ng��i !") 
elseif (Uworld76 == 30) then -- script viet hoa By http://tranhba.com  nhi�m v� ti�n h�nh trung 
if (HaveItem(393) == 0) then -- script viet hoa By http://tranhba.com  th� m�t x� l� 
Talk (1,"","Kh�ng ng� ng��i nh� v�y kh�ng c�n th�n , t�nh / ch�n , ta n�a vi�t m�t phong �i . ") 
AddEventItem(393) -- script viet hoa By http://tranhba.com  th�ng d�ng th� 
else 
Talk (1,"","Ti�u huynh �� , n� b�nh kh�ng th� ch� l�u , ph�i nhanh l�n m�t ch�t �i ") 
end 
elseif (Uworld76 == 70) then -- script viet hoa By http://tranhba.com  nhi�m v� �� ho�n th�nh 
Talk(1,"","M�c d� n� s� kh�ng n�i , nh�ng l� , ta c�m th�y n� r�t gi�ng ng��i ") 
else 
Talk(1,"","B�nh ��i gia # ng��i tu�i tr� , kh�ng c� chuy�n g� h�c �i�m th� ngh� , kh�ng mu�n c� ng�y c�ng thanh ki�m �� �� s�t s�t . ") 
end 
end 

function W76_get() 
Say("Kh�ng c�n ti�u huynh �� xu�t th� , ta bi�t m�t ng��i , y thu�t cao minh , hy v�ng ng��i c� th� gi�p ta !",2,"Kh�ng th�nh v�n �� , ta nh�t ��nh gi�p ng��i /W76_get_yes","H�m nay ta c� vi�c , h�m n�o �i /no") 
end 

function W76_get_yes() -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng 
Talk(2,"","# h�o , ta c� phong th� , ng��i ��a cho h�n , h�n nh�t ��nh t�i . h�n ch�a kh�i ng�a c�a ta sau , ta t�n l� h�n d�y y thu�t c�a ng��i , ng��i c�ng h�n h�u duy�n , l�n n�y nh�t ��nh ���c . ") 
SetTask(76,30) 
AddEventItem(393) -- script viet hoa By http://tranhba.com  th�ng d�ng th� 
Msg2Player("Nh�n ���c m�t phong th� , �i d��c v��ng c�c c�u m� ") 
AddNote("Nh�n ���c m�t phong th� , �i d��c v��ng c�c c�u m� ") 
end 

function W76_prise() 
Talk(1,"","B�nh ��i gia kh�ng c�n kh�ch kh� , ta c�ng t� trong h�c ���c m�t �t b�n l�nh ") 
SetTask(76,70) 
add_repute = ReturnRepute(40,70,3) -- script viet hoa By http://tranhba.com  danh v�ng t��ng th��ng # l�n nh�t 40 �i�m , t� 70 c�p kh�i m�i c�p �� gi�m 3% 
AddRepute(add_repute) 
Msg2Player("Nhi�m v� ho�n th�nh , ng��i danh v�ng gia t�ng "..add_repute.." �i�m .") 
AddNote("Ch�a kh�i m� ��ch b�nh , ho�n th�nh nhi�m v� ") 
end 

function no() 
end 
