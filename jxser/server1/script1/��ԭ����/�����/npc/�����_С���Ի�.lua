-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com description: tay m�i th�n _ ti�u lan 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/18 
-- script viet hoa By http://tranhba.com Modify:2003/7/21 wangzg 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 
-- script viet hoa By http://tranhba.com Update: 2003-08-07 Dan_Deng 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) s�a ��i trang b� thu�c t�nh sinh th�nh ph��ng th�c 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
UTask_world38=GetTask(66) 
if ((UTask_world38 == 0) and (GetLevel() >= 6)) then -- script viet hoa By http://tranhba.com  c�n 6 c�p tr� l�n m�i c� th� l�m nhi�m v� 
Talk(3, "select","Ti�u c� n��ng th� n�o kh�c th��ng t�m nh� v�y nha ?","Gia gia b� b�nh , nh�ng l� trong nh� kh�ng c� ti�n mua thu�c .","Mu�n mua g� ? ") 
elseif (UTask_world38 == 1) then 
Talk(1,"","C�m �n huynh tr��ng , tr��c gia gia thu�c l� ti�m thu�c l�o b�n c�m .") 
elseif (UTask_world38 == 5) then 
if (HaveItem(186) == 1) then 
DelItem(186) 
Talk(1,"","Th�t l� c�m �n ng��i , ta c� m�t chi�c nh�n , m�i/xin ng��i nh�n l�y !") 
SetTask(66,10) 
i = random(0,3) 
if (i < 3) then 
i = 8 
else 
i = 9 
end 
AddRepute(i) 
AddNote("��ng x� h��ng h� c�t cho ti�u lan , ho�n th�nh nhi�m v� ") 
Msg2Player("��ng x� h��ng h� c�t cho ti�u lan , ho�n th�nh nhi�m v� ") 
if (random(0,3) == 0) then -- script viet hoa By http://tranhba.com  25% ��ch ky t� s� ph�i c�p hai chi�c nh�n 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,15) 
AddItem(0,3,0,2,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("��t ���c chi�c nh�n . ") 
else 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
AddItem(0,3,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("��t ���c ho�ng ng�c chi�c nh�n ") 
end 
Msg2Player("Ng��i danh v�ng gia t�ng "..i.." �i�m .") 
else 
Say("Ng��i kh�ng c�n th�n l�y n�m x� h��ng h� c�t cao li�u , n�u nh� mu�n ho�n th�nh nhi�m v� , c�n ph�i c� x� h��ng h� c�t cao .", 2,"Ta �i t�m ti�n /find","T�m ti�m thu�c l�o b�n l�m m�i thu�c /redo") 
end 
elseif ((UTask_world38 > 1) and (UTask_world38 < 10)) then -- script viet hoa By http://tranhba.com  nhi�m v� trung ��ch b�nh th��ng ��i tho�i 
Talk(1,"","C�m �n ng��i . tr��c , gia gia thu�c l� ti�m thu�c l�o b�n l�m .") 
elseif (UTask_world38 >= 10) then -- script viet hoa By http://tranhba.com  ho�n th�nh nhi�m v� sau ��ch ��i tho�i 
Talk(1,"","C�m �n ng��i , c� thu�c , b�nh c�a gia gia nh�t ��nh s� h�o .") 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� ��i tho�i 
Talk(1,"","Gia gia s� tu�i �� cao , th�n th� kh�ng t�t . ta ch� hy v�ng m�nh hi�u y thu�t c� th� gi�p h�n ch�a b�nh .") 
end 
end; 

function select() 
Say("Ta c�ng kh�ng hi�u l� c�i g� thu�c , l� tr��c ti�m thu�c l�o b�n cho h�n ��ch .", 2,"Tr� gi�p l�m thu�c /yes","C�ng ta kh�ng c� quan h� /no") 
end; 

function yes() 
Talk(1,"","C�m �n ng��i , c�i n�y l� ti�m thu�c l�o b�n cho l�m thu�c .") 
SetTask(66,1) 
AddNote("Ti�p nh�n v� # gi�p ti�u lan t�m thu�c . ") 
Msg2Player("Ti�p nh�n v� # gi�p ti�u lan t�m thu�c . ") 
end; 

function no() 
end; 

function find() 
end; 

function redo() 
Talk(1,"","��n ti�m thu�c l�y thu�c !") 
SetTask(66, 2) 
SetTask(67, 0) 
AddNote("<color=red> b�i v� x� h��ng h� c�t cao m�t , xin/m�i �i t�m ti�m thu�c l�o b�n l�m thu�c . <color> ") 
Msg2Player("B�i v� x� h��ng h� c�t cao m�t , xin/m�i �i t�m ti�m thu�c l�o b�n l�m thu�c . ") 
end; 
