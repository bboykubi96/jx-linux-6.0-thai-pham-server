-- script viet hoa By http://tranhba.com description: tay m�i th�n _ l� d� 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com update 2003/7/25 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-09) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) s�a ��i trang b� thu�c t�nh sinh th�nh ph��ng th�c 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-20) v� sao VSS th��ng kh�ng ��i m�i ? n�ng vi�t s�a ��i nhi�m v� l�u tr�nh 

Include("\\script\\global\\itemhead.lua")

function main() 
UTask_world69=GetTask(69) 
if ((UTask_world69 == 0) and (GetLevel() >= 5)) then 
Talk(3, "select","Ai , v�t �o ti�m chi�u r�ng cu�i c�ng d�t kho�t , v� y ti�u ph�i ng��i ti�u t�y ","V� ��i ca n�y , ng��i c� l�ng th��ng ng��i ?","Ai , ch� ti�c n�ng cho t�i b�y gi� kh�ng ��ng ta c� b�t k� b�y t� , t�i sao tr�n c�i th� gi�i n�y c� ta nh� v�y bi th�m ng��i c�a ?") 
elseif (UTask_world69 == 4) then 
Talk(4,"W69_step2","Xu�n h��ng ra m�t n�i cho ng��i # v�t �o ti�m chi�u r�ng cu�i c�ng d�t kho�t , c�u n�y th� ��ch t�c gi� li�u v�nh l�i k�u c�i g� ?","Ta th�t s� l� kh�ng ngh� ra ���c !"," l�m sao s� v�n �� ��n gi�n nh� v�y c�ng s� kh�ng ?","Th�t kh�ng c� � , ng��i c� th� gi�p ta sao ?") 
elseif (UTask_world69 == 8) then 
Talk(2, "prise","Xu�n h��ng c� n��ng �� ��n nh�n ng��i t�n v�t , k�nh xin ng��i ��n nh� n�ng l�m kh�ch , ch�c m�ng ch�c m�ng !","Chi�c nh�n n�y l� c�a ta m�t ch�t t�m � , m�i/xin ng��i nh�n l�y #") 
elseif (UTask_world69 == 2) then 
Talk(1,"","N�ng g�i xu�n h��ng , � t�i tr�n ��ch ph�a ��ng . c�i thanh n�y hoa sen phi�n l� c�a ta t�n v�t , l�m phi�n ng��i gi�p ta giao cho n�ng .") 
elseif (UTask_world41==10) then 
Talk(1,"","Xu�n h��ng v�a �n nhu l�i hi�n hu� , c� th� l�y ���c n�ng l� c�i g� c�ng so ra k�m ��ch !") 
else 
Talk(1,"","S� ki�n ng��i n�o nhi�u nh� v�y t�nh !") 
end 
end 

function select() 
Say("Ng��i c� th� gi�p ta h��ng n�ng chuy�n ��t t�m � sao ?", 2,"Ta c� th� gi�p ng��i c�ng n�ng n�i . /yes","Chuy�n n�y ta kh�ng gi�p ���c . /no") 
end; 

function yes() 
Talk(1,"","N�ng g�i xu�n h��ng , � t�i tr�n ��ch ph�a ��ng . c�i thanh n�y hoa sen phi�n l� c�a ta t�n v�t , l�m phi�n ng��i gi�p ta giao cho n�ng .") 
AddEventItem(190) 
Msg2Player("Ti�p nh�n v� # gi�p l� d� nh�n nh� t�m � cho xu�n h��ng , mang l� d� ��ch t�n v�t hoa sen phi�n cho xu�n h��ng . ") 
SetTask(69,2) 
AddNote("Ti�p nh�n v� # gi�p l� d� nh�n nh� t�m � cho xu�n h��ng , mang l� d� ��ch t�n v�t hoa sen phi�n cho xu�n h��ng . ") 
end 

function no() 
end 

function W69_step2() 
Talk(1,"","Tu�n l�nh !") 
SetTask(69,6) 
AddNote(" l� d� tr� l�i kh�ng ra v�n �� , ng��i gi�p h�n tr� l�i . ") 
Msg2Player(" l� d� tr� l�i kh�ng ra v�n �� , ng��i gi�p h�n tr� l�i . ") 
end 

function prise() 
SetTask(69,10) 
AddRepute(7) -- script viet hoa By http://tranhba.com  danh v�ng th�m 7 �i�m 
AddNote("�em xu�n h��ng ��ch tr� l�i mang cho l� d� , nhi�m v� ho�n th�nh . ") 
Msg2Player("�em xu�n h��ng ��ch tr� l�i mang cho l� d� , nhi�m v� ho�n th�nh . ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if (random(0,3) == 0) then 
AddItem(0, 3, 0, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" l�y ���c ho�ng ng�c chi�c nh�n ") 
else 
AddItem(0, 3, 0, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" l�y ���c th�ch chi�c nh�n ") 
end 
Msg2Player("Ng��i giang h� danh ti�t gia t�ng 7 c� �i�m ") 
end 
