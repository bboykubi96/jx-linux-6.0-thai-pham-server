-- script viet hoa By http://tranhba.com  t�y nam b�c khu giang t�n th�n ng��i �i ���ng 5 h� t� cha ��i tho�i 
-- script viet hoa By http://tranhba.com  giang t�n th�n tay m�i nhi�m v� # h� t� b�i s� 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) s�a ��i trang b� thu�c t�nh sinh th�nh ph��ng th�c 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
-- script viet hoa By http://tranhba.com  UTask_world20 = GetTask(48); 
UTask_world44 = GetTask(44) 
if (UTask_world44 == 0) then -- script viet hoa By http://tranhba.com  nhi�m v� kh�i ��ng #1 c�p l� ���c ti�p nh�n v� ) 
Say("Th�n b�n ngo�i c�i �� v� s� tho�t nh�n r�t c� b�n l�nh a . nh� ch�ng ta h� t� t� nh� h�o v� , n�u c� th� l�y v� kia v� s� vi s� l� t�t . ch�ng ta nh�ng l� ng��i b�nh th��ng nh� , kh�ng bi�t h�c v� c� ph�i hay kh�ng r�t hoa b�c a , ng��i c� th� gi�p ta �i h�i m�t ch�t v� kia v� s� sao !?", 2,"Tr� gi�p /yes","Kh�ng gi�p /no") 
elseif(UTask_world44 == 10) then 
Talk(1,"","V� kia v� s� �ang � th�n ph�a ��ng ��ch nh� l� c�nh .") 
elseif(UTask_world44 == 20) then 
Talk(1,"","C�i g� , h�n �� ��p �ng ? ai nha , v�y th� th�t l� th�t t�t qu� , c�i n�y ��nh c�i m� l� t� ta l�m , m�c d� kh�ng ��ng gi� bao nhi�u ti�n , tr� chuy�n bi�u t� � �i !") 
SetTask(44, 100) 
AddRepute(5) 
AddNote("N�i cho h� t� cha , ng��i s� ph� kia ��ng � thu h� t� l�m �� �� li�u , nhi�m v� ho�n th�nh ") 
Msg2Player("N�i cho h� t� cha , ng��i s� ph� kia ��ng � thu h� t� l�m �� �� li�u , nhi�m v� ho�n th�nh ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if(GetSex() == 0) then 
AddItem(0,7,6,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("��t ���c m�t kh�i b� c�n ") 
else 
AddItem(0,7,8,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("��t ���c m�t ng�n xoa ") 
end 
Msg2Player("Ng��i danh v�ng gia t�ng 5 �i�m ") 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� ��i tho�i 
Talk(1,"","Nh� ta kia l� c�i g� c�ng t�t , ch�nh l� th�ch cho ng��i ta l�m mai !") 
end 
end; 

function yes() 
Talk(1,"","V� kia v� s� �ang � th�n ph�a ��ng ��ch nh� l� c�nh .") 
SetTask(44, 10) 
AddNote("Ti�p nh�n v� # �i gi�p h� t� c�u h�c v� c�ng ") 
Msg2Player("Ti�p nh�n v� # �i gi�p h� t� c�u h�c v� c�ng ") 
end; 

function no() 
end; 
