-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y th�ng b� trai 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4); 
	if (UTask_tr == 20*256+30) then
AddNote(" � qu�ng tr��ng ph�a ��ng trong r�ng c�y t�m ���c th�ng b� trai , tr� l�i h�n m� ng� ") 
Msg2Player(" � qu�ng tr��ng ph�a ��ng trong r�ng c�y t�m ���c th�ng b� trai , tr� l�i h�n m� ng� ") 
Talk(3, "L20_Q1","Ng��i b�n nh� , �em nh�t nguy�t song ��i phi�n tr� l�i cho m�i v�a r�i c�i �� ��i ca ca , c� ���c hay kh�ng ?","Mu�n ta c�n nh�t nguy�t song ��i phi�n c�ng ���c , b�t qu� mu�n xem ng��i c� ph�i hay kh�ng so m�i v�a r�i c�i �� ngu ng�c th�ng minh m�t ch�t ?"," l�n n�y v�n �� c�ng nh�ng kh�c b�t ��ng , ng��i h�y nghe cho k� ") 
	elseif (UTask_tr == 20*256+40) then 
L20_Q1() 
	elseif (UTask_tr == 20*256+50) then
if (HaveItem(125) == 1) and (HaveItem(126) == 1) then 
Talk(1,"","A , ti�u Ho�ng # ti�u b�i # c�c ng��i qu� kh�ng ngoan , l�n sau kh�ng cho ch�y lo�n li�u # hai ng��i n�y r�ch b�nh xe c�ng kh�ng c� th� �n l�i kh�ng th� xuy�n , tr� ��p m�t ra m�t ch�t d�ng c�ng kh�ng c� , ch� c� c�c ng��i nh�ng th� n�y ��a ng�c m�i �em n� l�m th�nh b�o b�i , tr� l�i cho ng��i �i .") 
DelItem(125) 
DelItem(126) 
AddEventItem(58) 
Msg2Player("�em ti�u Ho�ng c�ng ti�u b�i tr� l�i cho th�ng b� trai , ��i l�y nh�t nguy�t song ��i phi�n . ") 
			SetTask(4, 20*256+80)
AddNote("�em ti�u Ho�ng c�ng ti�u b�i tr� l�i cho th�ng b� trai , ��i l�y nh�t nguy�t song ��i phi�n . ") 
else -- script viet hoa By http://tranhba.com  �� tr� l�i v�n �� , ch�a t�m ���c ti�u Ho�ng ch� c�ng ti�u b�i l� 
Talk(1,"","N�u nh� ng��i c� th� gi�p ta t�m v� m�t ��ch <color=Red> ti�u Ho�ng ch� <color> c�ng <color=Red> ti�u b�i l� <color> , ta li�n �em nh�t nguy�t song ��i phi�n tr� l�i cho ng��i .") 
end 
	elseif (UTask_tr == 20*256+80) and (HaveItem(58) == 0) then
AddEventItem(58) 
Talk(1,"","Nh�t nguy�t song ��i phi�n c�m �i �i .") 
else -- script viet hoa By http://tranhba.com  thi�u t�nh ��i tho�i 
if (random(0,1) == 0) then 
Talk(1,"","Ta ti�u Ho�ng ch� c�ng ti�u b�i l� v�a c� th� l�m l�i trung th�nh , h�n n�a cho t�i b�y gi� kh�ng n�i n�i nh�m , tr�n ��i n�y kh�ng c� so b�n h� t�t h�n n�a/r�i !") 
else 
Talk(1,"","Ta c� m�t c�i nh� ch� v�ng c�ng m�t con ti�u b�i l� , b�n h� nh�ng ngoan n�a/r�i , l� ta t�t nh�t ��ng b�n .") 
end 
end 
end; 

function L20_Q1() 
Say("M�t nh� c� huynh �� ba , trong �� ch� c� m�t th�ch n�i l�i th�t , ��i ca n�i nh� ca kho�c l�c , nh� ca n�i ti�u �� kho�c l�c , m� ti�u �� sau khi nghe n�i ��i ca c�ng nh� ca c�ng kho�c l�c , ng��i bi�t ba ng��i n�y trung , ��n t�t c�ng ai n�i ch�nh l� l�i th�t sao ?", 3,"��i ca /no","Nh� ca /L20_Q1_true","Ti�u �� /no") 
end; 

function L20_Q1_true() 
Talk(1,"","D�/� .... m�c d� ng��i so v�i h�n th�ng minh m�t ch�t , nh�ng l� tr� phi ng��i gi�p ta t�m v� m�t ��ch <color=Red> ti�u Ho�ng ch� <color> c�ng <color=Red> ti�u b�i l� <color> , ta m�i c� th� �em nh�t nguy�t song ��i phi�n tr� l�i cho ng��i .") 
	SetTask(4, 20*256+50)
AddNote("Tr� l�i ch�nh x�c , th�ng b� trai y�u c�u ng��i gi�p h�n t�m ti�u Ho�ng ch� c�ng ti�u b�i . ") 
Msg2Player("Tr� l�i ��i v�i th�ng b� trai ��ch v�n �� sau , h�n y�u c�u ng��i gi�p h�n t�m ti�u Ho�ng ch� c�ng ti�u b�i . ") 
end; 

function no() 
Talk(1,"","Ng��i t�a nh� ng��i kia m�t d�ng , ��u l� ng��i ngu xu�n ") 
	SetTask(4, 20*256+40)
end; 
