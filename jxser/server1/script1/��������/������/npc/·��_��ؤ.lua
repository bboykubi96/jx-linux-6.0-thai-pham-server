-- script viet hoa By http://tranhba.com  long m�n tr�n ng��i �i ���ng t�n kh�t c�i tay m�i nhi�m v� # sao mi�ng tin/th� 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-04) 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
UTask_world26 = GetTask(26) 
if (UTask_world26 == 0) and (GetLevel() >= 2) then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng 
if (GetSex() == 0) then 
Talk(4,"W26_get","V� ��i hi�p n�y , xin gi�p ta chuy�n . ","Th� n�o ?","Ng��i c� th� gi�p ta cho tr�n tr�n ��ch Mi nhi c� n��ng sao c� mi�ng tin sao ? ","N�i c�i g� ") 
else 
Talk(4,"W26_get","V� ��i hi�p n�y , xin gi�p ta chuy�n . ","Th� n�o ?","Ng��i c� th� gi�p ta cho tr�n tr�n ��ch Mi nhi c� n��ng sao c� mi�ng tin sao ? ","N�i c�i g� ") 
end 
elseif (UTask_world26 == 6) then 
Talk(1,"W26_prise","Cu�i c�ng ng��i n�i cho ta bi�t n�i ra �� cho tri�u Mi nhi th�ng kh� tuy�t v�ng c� � ngh�a g� . th�t ��ng th��ng !") 
elseif (UTask_world26 >= 10) then 
Talk(1,"","Th�ng s�m kh�ng s�ng , �au / th��ng y�u ��n t�m can # ai n�i m�a xu�n m� , ch� th�y hoa �i�u linh . ��n n��c n�y c�n m�t m�i n�o g�p ng��i ��y !") 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� ��i tho�i 
Talk(1,"","C�i g� ? b� th� ta a ? �i m�t ch�t # ta kh�ng l�y ti�n , kh�ng n�n c�m th�y ta l� t�n kh�t c�i .") 
end 
end; 

function W26_get() 
Say("N�i cho n�ng bi�t ti�u �� �nh �� ch�t , c�n c� ��ng b�o l� l� ta n�i !",2,"Gi�p m�t tay /W26_get_yes","Kh�ng gi�p m�t tay /W26_get_no") 
end 

function W26_get_yes() 
Talk(1,"","Kh�ng bi�t ng��i n�i c�i g� # nh�ng ta c�ng l� mu�n �i m�t chuy�n !") 
SetTask(26,3) 
AddNote("K� ti�p nhi�m v� # gi�p t�n kh�t c�i sao mi�ng tin/th� cho tri�u Mi nhi ") 
Msg2Player("K� ti�p nhi�m v� # gi�p t�n kh�t c�i sao mi�ng tin/th� cho tri�u Mi nhi ") 
end 

function W26_get_no() 
Talk(2,"","Th�t l� k� qu�i th�nh c�u # ng��i kh�ng n�i r� r�ng ta kh�ng gi�p ."," l�i nh� v�y ta t�m ng��i kh�c gi�p m�t tay t�t l�m !") 
end 

function W26_prise() 
Talk(1,"",": m�t l�i kh� n�i h�t , ��y l� m�t ch�t � t� , xin/m�i nh�n l�y !") 
SetTask(26,10) 
AddNote("�em tri�u Mi nhi ��ch ph�n �ng n�i cho C�i Bang , ho�n th�nh nhi�m v� ") 
Msg2Player("�em tri�u Mi nhi ��ch ph�n �ng n�i cho C�i Bang , ho�n th�nh nhi�m v� ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,15) 
if(GetSex() == 0) then 
AddItem(0, 8, 1, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" l�y ���c m�t c� da h� c� tay . ") 
else 
AddItem(0, 8, 0, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" l�y ���c m�t ��ng xanh v�ng ng�c . ") 
end 
AddRepute(5) 
Msg2Player("Ng��i danh v�ng gia t�ng 5 �i�m ") 
end 
