-- script viet hoa By http://tranhba.com  t�y nam b�c khu giang t�n th�n ng��i �i ���ng 8 ng� h�ng mai ��i tho�i 
-- script viet hoa By http://tranhba.com  giang t�n th�n tay m�i nhi�m v� # Ng� l�o cha ��ch thu�c 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) s�a ��i trang b� thu�c t�nh sinh th�nh ph��ng th�c 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
UTask_world21 = GetTask(49); 
if (UTask_world21 == 3) then 
Talk(1,"","C�m �n ng��i cho ta cha h�t thu�c , ��y l� ta m�i v�a l�m gi�y , ng��i n�u l� kh�ng ch� s� c�m �i !") 
SetTask(49, 10) 
AddRepute(6) 
AddNote("Ho�n th�nh gi�p Ng� l�o h�t thu�c nhi�m v� ") 
Msg2Player("Ho�n th�nh gi�p Ng� l�o h�t thu�c nhi�m v� ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if(GetSex() == 0)then 
AddItem(0,5,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("��t ���c m�t ��i gi�y c� ") 
else 
AddItem(0,5,2,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("��t ���c m�t ��i t� hoa gi�y ") 
end 
Msg2Player("Ng��i danh v�ng gia t�ng 6 �i�m ") 
else 
Talk(1,"","Ng� h�ng mai # m� ta mu�n �n t�i n� b�ch th�t , nh�ng l� b�n th�t ��ch gi�ng nh� kh�ng c� �i ra , c�i n�y nh�ng nh� th� n�o cho ph�i ? ") 
end 
end; 
