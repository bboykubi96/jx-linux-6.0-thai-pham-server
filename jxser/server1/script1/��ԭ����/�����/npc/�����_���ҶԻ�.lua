-- script viet hoa By http://tranhba.com description: tay m�i th�n _ t� trung 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/22 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 

function main() 
UTask_world43=GetTask(71) 
if (UTask_world43==1) then 
Talk(3, "select","Huynh �� l� t� trung ? m� ng��i �ang lo l�ng ng��i !","Ta kh�ng mu�n m�u th�n lo l�ng , nh�ng l� ta quy�t ��nh nh�p ng� !","T�i sao ?") 
elseif (UTask_world43==2) then 
Talk(1,"","C�m �n ch� �i�m ! ") 
elseif (UTask_world43==3) then 
Talk(1,"","V�y l�m phi�n ng��i khuy�n m�u th�n ta ! ") 
else 
Talk(1,"","Ph� th�n ch�t b�i ng��i Kim tay , c�i th� n�y ta kh�ng th� qu�n ! ") 
end 
end; 

function select() 
Say("B�y gi� qu�c gia g�p n�n , ta l�m sao c� th� ch� �i h�c ?",2,"Khuy�n c�o /against","T�n th�nh /support") 
end 

function against() 
Talk(4,"","Nh�ng l� ng��i c�n tr� , qu�n t� b�o th� m��i n�m kh�ng mu�n , h�c th�m ch�t b�n l�nh , ng�y sau m�i c� th� gi�t ��ch ! ", "..... ng��i n�i c�ng c� ��o l� ","Ng��i bi�t l� t�t r�i , mau tr� v� nh�n m�u th�n �i , n�ng r�t nh� ng��i !","T�t , c�m �n !") 
SetTask(71,2) 
AddNote("Khuy�n t� trung th�nh c�ng . ") 
Msg2Player("Khuy�n t� trung th�nh c�ng . ") 
end 

function support() 
Talk(3,"","N�i r�t hay , ng��i m�c d� tr� tu�i , nh�ng l� ch� kh� ��i .","Ta mu�n nh�p ng� , nh�ng l� lo l�ng m�u th�n kh�ng cho �i .","Ng��i y�n t�m , ta gi�p ng��i khuy�n n�ng ") 
SetTask(71,3) 
AddNote(" �ng h� t� trung ��ch quy�t ��nh , tr� gi�p h�n khuy�n m�u th�n ") 
Msg2Player("�ng h� t� trung ��ch quy�t ��nh , tr� gi�p h�n khuy�n t� ��i m� ") 
end 
