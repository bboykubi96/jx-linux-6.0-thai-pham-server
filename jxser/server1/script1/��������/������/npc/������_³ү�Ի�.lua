-- script viet hoa By http://tranhba.com description: tay m�i th�n _ L� gia 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com -70 UTask_world42 
-- script viet hoa By http://tranhba.com update 2003/7/24 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) s�a ��i trang b� thu�c t�nh sinh th�nh ph��ng th�c 

Include("\\script\\global\\itemhead.lua")

function main() 
UTask_world42=GetTask(70) 
if (UTask_world42==0) then 
Say("S�ng tr�n ��i kh�ng c� s�ch hay nh�n th�t l� nh�m ch�n , tr�n nam ��ch l�o c�t nh� c� m�t quy�n s�ch hay , nh�ng l� ta k�o kh�ng d��i n�t m�t gi� nua �i m��n ", 2,"Ta �i gi�p ng��i m��n /yes","Mu�n nh�n s�ch s� ph�i �i m��n . /no") 
elseif (UTask_world42==2) then 
Talk(1,""," l�i nh� v�y tr��c h�t c�m �n ng��i , c�t l�o ��u � tr�n tr�n ��ch ph�a nam .") 
elseif (UTask_world42==4) then 
Talk(2, "step2","C�t l�o n�i mu�n d�ng di ki�n ch� ��i k� th�n l�c .","C�i n�y l�o h� ly , mu�n v� kh� kh�n ta # ���c r�i , l�m phi�n ng��i mang �i cho h�n ") 
elseif ((UTask_world42 == 6) and (HaveItem(189) == 0)) then -- script viet hoa By http://tranhba.com  s�ch m�t 
Talk(1,"","Ti�u t� , d�m nh� v�y , t�i sao c�m s�ch b� ch�y ? ") 
AddEventItem(189) 
Msg2Player(" l�y ���c di ki�n ch� ") 
elseif ((UTask_world42==8) and (HaveItem(188) == 1)) then 
Talk(3, "WTask70_prise", " L� ��i th�c , ��y l� ng��i mu�n s�ch .","Th�t t�t qu� ","��y l� da tr�u �ai l�ng , ta kh�ng c�n ph�i , ��a cho ng��i �i . ") 
else 
Talk(1,"","Ng��i tu�i tr� , s�ng tr�n ��i ph�i nhi�u �i h�c , kh�ng mu�n th�nh thi�n m�i �ao m�i ki�m ") 
end 
end; 

function yes() 
Talk(1,""," l�i nh� v�y tr��c h�t c�m �n ng��i , c�t l�o ��u � tr�n tr�n ��ch ph�a nam .") 
SetTask(70,2) 
AddNote("Ti�p nh�n v� tr� gi�p L� l�o ��u ��n tr�n nam t�m c�t l�o ��u m��n s�ch . ") 
Msg2Player("Ti�p nh�n v� tr� gi�p L� l�o ��u ��n tr�n nam t�m c�t l�o ��u m��n s�ch . ") 
end 

function no() 
end 

function step2() 
AddEventItem(189) 
Msg2Player(" l�y ���c di ki�n ch� ") 
SetTask(70,6) 
AddNote("T� L� l�o ch� l�y ���c di ki�n ch� ") 
end 

function WTask70_prise() 
DelItem(188) 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
AddItem(0,6,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
SetTask(70,10) 
AddRepute(5) -- script viet hoa By http://tranhba.com  th�m danh v�ng 5 �i�m 
AddNote("�em k� th�n l�c cho L� gia , ho�n th�nh nhi�m v� , l�y ���c m�t c�i da tr�u �ai l�ng #. ") 
Msg2Player(" l�y ���c m�t c�i da tr�u �ai l�ng #. ") 
Msg2Player("Ng��i danh v�ng gia t�ng 5 �i�m ") 
end 
