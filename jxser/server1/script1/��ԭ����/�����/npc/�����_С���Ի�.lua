-- script viet hoa By http://tranhba.com description: tay m�i th�n _ ti�u Long 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/22 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 
-- script viet hoa By http://tranhba.com Update: Dan_Deng(2003-08-07) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) s�a ��i trang b� thu�c t�nh sinh th�nh ph��ng th�c 

Include("\\script\\global\\itemhead.lua")

function main() 
UTask_world45=GetTask(73) 
if (UTask_world45 == 1) then 
Talk(4, "Fpay","Ta l� ti�u Long , t� t� ta �ang t�m h�n , mau tr� v� �i th�i !","Ta c�n kh�ng mu�n tr� v� , t� t� cho ta 10 hai , �� cho ta mua ���ng , nh�ng l� ta �em ti�n v�t b� , t� t� s� m�ng ta ","Ta t�m r�t l�u , kh�ng c� t�m ���c . � � ...","Kh�ng c�n lo l�ng , ta cho ng��i 10 hai !") 
else 
Talk(1,"","T� t� ��i v�i ta r�t t�t , nh�ng l� ta s� n�ng !") 
end 
end 

function Fpay() 
if (GetCash() < 10) then 
Talk(1,"","Ta kh�ng c� ti�n , kh�ng th� gi�p ng��i !") 
else 
Pay(10) 
Talk(1,"","C�m �n ng��i , �i�u n�y �ai l�ng , ta kh�ng c�n ph�i , cho ng��i �i !") 
SetTask(73,10) 
AddNote("T�m ���c ti�u Long , cho h�n ti�n , thuy�t ph�c h�n v� nh� , nhi�m v� ho�n th�nh . ") 
Msg2Player("T�m ���c ti�u Long , cho h�n ti�n , thuy�t ph�c h�n v� nh� , nhi�m v� ho�n th�nh . ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
AddItem(0,6,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("��t ���c m�t c�i da �ai l�ng . ") 
AddRepute(5) 
Msg2Player("Ng��i danh v�ng gia t�ng 5 �i�m ") 
end 
end 

function no() 
end 
