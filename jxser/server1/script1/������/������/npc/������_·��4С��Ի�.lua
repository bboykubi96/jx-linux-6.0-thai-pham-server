-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n ng��i �i ���ng 4 ti�u c� ��i tho�i 
-- script viet hoa By http://tranhba.com  ba l�ng huy�n tay m�i nhi�m v� # ti�u c� ��ch ph� th�n 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-09) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) s�a ��i trang b� thu�c t�nh sinh th�nh ph��ng th�c 

Include("\\script\\global\\itemhead.lua")

function main() 
UTask_world18 = GetTask(46); 
if (UTask_world18 == 0) then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng 
Say("Ti�u c� # � � �� cha ta ng�y h�m qua ��nh c� g�p g� gi� l�n m�a , b� l�m b�nh , b�y gi� c�n n�ng r�n l�n ��y . cha ��ch b�nh c�n ch�a h�t , l�i kh�ng th� ��nh c� , ch�ng ta �n c�i g� a . ng��i c� th� gi�p ta �i c�u c�u xin Ng� th�n y sao ? Ng� th�n y l� m�t th�t t�t ng��i , h�n nh�t ��nh s� gi�p ch�ng ta ��ch . ",2,"Gi�p m�t tay /yes","Kh�ng gi�p /no") 
elseif(UTask_world18 == 1) then -- script viet hoa By http://tranhba.com  nhi�m v� ho�n th�nh 
if(HaveItem(180) == 1) then 
Talk(1,"","Ti�u c� # a # ��y ch�nh l� t� ba ho�n ? gi� h� t� ph� th�n ��ch b�nh r�t nhanh s� kh� h�n . ng��i th�t l� m�t th�t t�t ng��i , c�i n�y ��i gi�y l� m� ta l�m , ng��i nh�t ��nh ph�i nh�n l�y nha . ") 
DelItem(180) 
SetTask(46, 2) 
AddNote("�em t� ba ho�n giao cho ti�u c� , ho�n th�nh nhi�m v� . ") 
Msg2Player("�em t� ba ho�n giao cho ti�u c� , ho�n th�nh nhi�m v� . ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if(GetSex() == 0) then 
AddItem(0, 5, 0, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" l�y ���c gi�y c� . ") 
else 
AddItem(0, 5, 2, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" l�y ���c t� gi�y . ") 
end 
AddRepute(5) -- script viet hoa By http://tranhba.com  th�m danh v�ng 6 �i�m 
Msg2Player("Ng��i giang h� danh v�ng t�ng l�n 5 �i�m ") 
else 
SetTask(46, 1) 
Talk(1,"","Ti�u c� # c�n kh�ng c� t�m ���c t� ba ho�n sao ? ph� th�n ��ch b�nh nh�ng l�m sao b�y gi� nha , � � � ��") 
end 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� tr�ng th�i 
if (random(0,1) == 0) then 
Talk(1,"","Ti�u c� # cha ta cha l� ��ng ��nh h� ��ch c� d�n , m�i ng�y ��u ph�i h� �i l�n t�t v�ng b� c� , n�u nh� g�p ph�i li�u qu�t phong tr�i m�a , c� l�c s� ch�ng m�y ng�y c�ng kh�ng v� nh� ���c ��y . ") 
else 
Talk(1,"","Ti�u c� # cha r�t �au ta , nh�ng l� h�n l�o n�i n�u nh� ta l� con trai l� t�t , nh� v�y ta s� c� th� gi�p h�n b� c� . ") 
end 
end 
end; 

function yes() 
Talk(1,"","Ta nh� tr��c kia nghe ��i phu n�i ph�i h�n t� ba ho�n m�i c� th� ch�a kh�i s�t cao , nh�ng l� ch�ng ta ng��i ngh�o n�i �� mua ���c a . ") 
SetTask(46, 1) 
Msg2Player("Nh�n ���c nhi�m v� # ti�u c� ��ch ph� th�n b� b�nh , gi�p h�n �i mua t� ba ho�n tr� l�i ch�a b�nh ") 
AddNote("Nh�n ���c nhi�m v� # ti�u c� ��ch ph� th�n b� b�nh , gi�p h�n �i mua t� ba ho�n tr� l�i ch�a b�nh ") 
end; 

function no() 
Talk(1,"","Ti�u c� # ta ph�i � ch� n�y ti�p t�c ch� ng��i h�o t�m . ") 
end; 
