-- script viet hoa By http://tranhba.com  Trung Nguy�n b�c khu ph�c b� s�n ph�c b� S�n T�y ng��i �i ���ng _ l�c c�u thi�n .lua## quy�n nghi�ng thi�n h� nhi�m v� ( d� c�u quy�n nhi�m v� )# 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-24) 

Include("\\script\\global\\repute_head.lua")

function main(sel) 
Uworld75 = GetTask(75) 
U75_sub1 = GetTask(52) 
U75_sub2 = GetTask(53) 
U75_sub3 = GetTask(54) 
U75_sub4 = GetTask(55) 
U75_sub5 = GetTask(56) 
-- script viet hoa By http://tranhba.com  if (Uworld75 < 10) and (GetLevel() >= 30) and (GetCamp() == 0) and (GetReputeLevel(GetRepute()) >= 3) then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng 
-- script viet hoa By http://tranhba.com  Talk(10,"U75_get"," l�c c�u thi�n # quy�n ph�p ng�y , ch��ng ph�p ��a , ch� ph�p t�m . t�ch nh�t long chi�n v�i d� , V� l�o m�t quy�n ph�i thi�n ��a linh kh� , k�nh t� sinh l�ng , nh�t th�i v��ng ph�ch kh� b�n d�ng , r�ch c� long v�i v� h�nh , quy�n th� thi�n h� # th�y ��i t�n v� thi�n h� , quy�n t�n d� c�u . ","Nh� ch�i # xin h�i t�n gi� m�i v�a ��c l� c�i g� ? t�i h� v� sao � t� th� ng� kinh trung t� kh�ng th�y th�c . "," l�c c�u thi�n # a , ti�u hi�p kh�ng bi�t , c�n ��y l� ��i tr��c v� l�m th�n tho�i � quy�n h�o � v� thi�n h� ��ch t� truy�n . ","Nh� ch�i # t�i h� t�ng nghe n�i ��i tr��c v� l�m b�n k� trung ��ch � m�t s�ng �� long � long �u�i v� thi�n khi�n cho gi�t long th��ng ph�p , kh�ng bi�t ti�n sinh theo nh� l�i ��i hi�p c� th� c�ng c�ng ph�p t��ng t�a nh� ? "," l�c c�u thi�n # c�p c�p c�p c�p �� Long th� ti�u nhi , kh�i c� th� c�ng kh�c th�ng tranh huy . V� l�o n�m �� bi�n chu �� h�i , v�i o�nh lai ��i chi�n th�n long , � m�nh m�ng t� nhi�n trung l�nh ng� d� c�u quy�n ph�p , ba chi�u tuy�t s�t �c long . th�t l� c� kim ng��i th� nh�t , �� l� b�c n�o ��ch h�o d�ng # Long ti�u t� s�ng t�n �� long , s� r�ng ngay c� long ��ch c�i b�ng c�ng kh�ng ra m�t . ","Nh� ch�i # kh�ng ngh� t�i trong ch�n giang h� c�n c� nh�n v�t l�i h�i nh� th� , v� sao ch�a t�ng nghe n�i ? "," l�c c�u thi�n # V� l�o l�y thi�n h� l�m tr�ng , l�i nh� th� n�o � n�i n�y lo�i nh�y l��ng ti�u s�u ��ch v� ��i/s�n nh�y trung xu�t hi�n . hu�ng chi n�m �� quy�n th� thi�n h� sau , giang h� h�c ��o t�m ��m c�u li�t , ho�ng ho�ng kh�ng th� c� ng�y . m�y th�p ni�n th�i b�nh th�nh th� , l�i sao ��ng gi� V� ti�n sinh ra l�i quy�n . ","Nh� ch�i # l�i c� nh� th� k� chi�u ? kh�ng bi�t ��i hi�p nh�ng hi�u ���c n�y b�/v� quy�n ph� tung t�ch . "," l�c c�u thi�n # b�t t�i L�c m� , ch�nh l� ti�n s� �� t� , c�ng t�ng t�p ���c da l�ng . ","Nh� ch�i # a # ng�m ti�n sinh d�y ta #") 
if (Uworld75 == 10) and (U75_sub1 == 20) and (U75_sub2 == 20) and (U75_sub3 == 20) and (U75_sub4 == 20) and (U75_sub5 == 20) and (HaveItem(384) == 1) then -- script viet hoa By http://tranhba.com  nhi�m v� ho�n th�nh 
DelItem(384) 
Talk(2,"U75_prise","H�o ti�u t� , ta qu� nhi�n kh�ng c� nh�n l�m ng��i , t�i n�i n�y , h�c nhanh l�n m�t ch�t .","V� h�c m�t ��o , thi�n ngo�i h�u thi�n . ng��i n�u kh�ng �o�n luy�n t�p , n�i n�y c� c� th� c�ng phu : th�i gian ��ch bia , ch� c�n m�t quy�n l� c� th� ��nh n�t , khi �� ng��i quy�n li�n tr� th�nh thi�n h� th�n ti�n c�p b�c . ") 
elseif (Uworld75 == 10) and (HaveItem(384) == 0) then -- script viet hoa By http://tranhba.com  nhi�m v� trung , tin/th� m�t 
AddEventItem(384) 
Msg2Player(" l�i nh�n ���c l�c c�u thi�n ��ch th� gi�i thi�u li�u . ") 
Talk(1,""," l�o th� nh� v�y n�m , t�i sao c� th� l�m ��i s� ? t�nh / ch�n , s� cho ng��i c� c�i c� h�i , ta n�a vi�t m�t phong th� cho ng��i , nh� kh�ng mu�n v�t b� ") 
elseif (Uworld75 == 10) then 
Talk(1,"","��u ti�n ng��i mu�n v��t qua b�y ng�y n�m s� �� , ta m�i c� th� d�y ng��i !") 
elseif (Uworld75 == 255) then 
Talk(1,"","D� c�u quy�n mu�n m�i ng�y luy�n t�p m�i c� th� luy�n th�nh , ng��i c�n ph�i c� nh�n n�i .") 
else 
Talk(1,"","Quy�n ph�p ng�y , ch��ng m�n ��a , ch� ph�p t�m . quy�n ph�p .... r�t kh� nh� ") 
end 
end; 

function U75_get() 
Say("N�n quy�n ph�p kh�ng th� u�ng nh�ng kh�c n�i c�ng c�ng nhau luy�n t�p , n�u nh� ng��i ngh� gia nh�p nh�ng m�n ph�i kh�c , th� kh�ng th� h�c . ng��i ngh� xong ch�a ?",2,"Ta mu�n c�n th�n , xin cho ta h�c d� c�u quy�n . /U75_get_yes","�� cho ta mu�n mu�n !/no") 
end 

function U75_get_yes() 
Talk(5,"U75_go","B�i v� mu�n h�c d� c�u quy�n , kh�ng mu�n gia nh�p nh�ng m�n ph�i kh�c .","Ha ha , th�t l� tr�i ban k� t�i , ta xem ng��i g�n c�t r�t m�nh tr�ng , tr�n giang h� r�t �t . nh�ng l� mu�n phi�n to�i nh�ng huynh �� kh�c m�i c� th� d�y ng��i .","�a t� s� ph� ? ","N�i n�y c� m�t phong th� , ng��i mang �i th�nh �� , ��i L� , ph��ng t��ng , bi�n kinh t�m ph��ng th�ch , hoa n�ng , Th�i ��i th�c , ph� nam b�ng c�ng t� tu�n . n�m ng��i n�y ��u ��ng � ng��i luy�n t�p k� n�ng . ","T�t , s� b� ") 
end 

function U75_go() 
Talk(1,"","���ng r�t nguy hi�m , ng��i c�n chu�n b� xong . t� c� ch� kim , l�m ��i s� nghi�p ng��i c�a , m�i ng��i kh�ng tr�i qua kh� n�n ") 
AddEventItem(384) -- script viet hoa By http://tranhba.com  l�c c�u thi�n th� gi�i thi�u 
SetTask(75,10) 
SetTask(52,0) -- script viet hoa By http://tranhba.com  t� thay ��i l��ng m�i b�t ��u h�a 
SetTask(53,0) 
SetTask(54,0) 
SetTask(55,0) 
SetTask(56,0) 
AddNote("Nh�n quy�n nghi�ng thi�n h� nhi�m v� # c�m l�c c�u thi�n ��ch th� gi�i thi�u �i th�nh �� t�m ph��ng th�ch , ��i L� t�m hoa n�ng , ph��ng t��ng t�m Th�i ��i th�c , bi�n kinh t�m ph� nam b�ng , tr��c khi an t�m t� tu�n , c�u h�c d� c�u quy�n . ") 
Msg2Player("Nh�n quy�n nghi�ng thi�n h� nhi�m v� # c�m l�c c�u thi�n ��ch th� gi�i thi�u �i th�nh �� t�m ph��ng th�ch , ��i L� t�m hoa n�ng , ph��ng t��ng t�m Th�i ��i th�c , bi�n kinh t�m ph� nam b�ng , tr��c khi an t�m t� tu�n , c�u h�c d� c�u quy�n . ") 
end 

function U75_prise() 
Talk(1,"","�� t� ti�p nh�n ch� gi�o .") 
DelItem(384) 
SetTask(75,255) 
AddRepute(30) 
if (HaveMagic(395) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(395) 
end 
AddNote("Quy�n nghi�ng thi�n h� nhi�m v� # nhi�m v� ho�n th�nh , h�c ���c d� c�u quy�n k� n�ng , ng��i danh v�ng gia t�ng 30 �i�m . ") 
Msg2Player("Quy�n nghi�ng thi�n h� nhi�m v� # nhi�m v� ho�n th�nh , h�c ���c d� c�u quy�n k� n�ng , ng��i danh v�ng gia t�ng 30 �i�m . ") 
end 

function no() 
end 
