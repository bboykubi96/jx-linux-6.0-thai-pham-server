-- script viet hoa By http://tranhba.com  long m�n tr�n ng��i �i ���ng kh�ch s�n l�o b�n n��ng tay m�i nhi�m v� # gi�i thi�u c�ng vi�c 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-04) 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
UTask_world25 = GetTask(25) 
UTask_world27 = GetTask(27) 
if (UTask_world25 == 3) then -- script viet hoa By http://tranhba.com  nhi�m v� � gi�i thi�u c�ng vi�c � ti�n h�nh trung 
Talk(5,"W25_step"," l�o b�n , y�u nh�n tay gi�p m�t tay sao ?","Gi�p m�t tay ? b�y gi� c�n k�m m�t qu�t d�n ti�u nh� ","C� ng��i ngh� ��n c� th� kh�ng ?","Mu�n nh�n m�t ch�t !","T� trong nguy�n ��n c�i n�y , l�n v�o ph�n c�m �n kh�ng d� d�ng a ") 
elseif (UTask_world27 == 0) and (GetLevel() >= 5) then 
Say("�i # cho ta t�m 3 kh�i heo r�ng th�t ��i kh�ch !",2,"Bi�t /W27_get_yes","Phi�n ch�t , t�m ng��i kh�c �i ! /W27_get_no") 
elseif (UTask_world27 == 5) then 
i = GetItemCount(228) 
if (i >= 3) then 
for j = 1,i do DelItem(228) end 
Talk(1,"","Nga # ��ng t�c r�t nhanh sao # cho # c�i n�y ��nh c�i m� ta c�ng ch�a d�ng t�i # ��a cho ng��i !") 
SetTask(27,10) 
AddRepute(9) 
AddNote("�em heo r�ng th�t mang �i giao cho l�o b�n , ho�n th�nh nhi�m v� ") 
Msg2Player("�em heo r�ng th�t mang �i giao cho l�o b�n , ho�n th�nh nhi�m v� ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,15) 
if(GetSex() == 0) then 
AddItem(0, 7, 6, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" l�y ���c m�t kh�i kh�n tay ") 
else 
AddItem(0, 7, 10, 2, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("Ph�i nh�n ���c m�t kh�i h�nh tr�n thi�t ") 
end 
Msg2Player("Ng��i danh v�ng gia t�ng 9 �i�m ") 
else 
Talk(1,""," l�m g� ��ng � ch� n�y ? xem ng��i nh� v�y , c�n kh�ng mau �i !") 
end 
elseif (UTask_world25 == 6) then 
Talk(1,"","A # ng��i n�i ng��i kia t�n g� th��ng quan thu , g�i h�n t�i . ta ch� n�y c�n x�c nh�n !") 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� nhi�m v� ��i tho�i 
Talk(1,"","Oa oa # kh�ch quan kh�ng ���c �i�m a ? ph��ng vi�n tr�m d�m c�n kh�ng c� nh� n�o c� th� so ���c v�i ta ��y long m�n tr�n ��y , kh�ng tin ng��i c� th� �i h�i m�t ch�t !") 
end 
end; 

function W25_step() 
Talk(1,"","T�t l�m , nhanh l�n �i g�i th�y thu�c t�i ��y gi�p ta !") 
SetTask(25,6) 
AddNote(" l�o b�n ��p �ng �� cho th��ng quan thu t�i h� tr� # mau ��a c�i tin t�c t�t n�y n�i cho h�n bi�t #! ") 
Msg2Player(" l�o b�n ��p �ng �� cho th��ng quan thu t�i h� tr� # mau ��a c�i tin t�c t�t n�y n�i cho h�n bi�t #! ") 
end 

function W27_get_yes() 
SetTask(27,5) 
AddNote("Ti�p nh�n v� # v�o trong r�ng c�y b�t ���c 3 kh�i heo r�ng th�t tr� l�i giao cho l�o b�n ") 
Msg2Player("Ti�p nh�n v� # v�o trong r�ng c�y b�t ���c 3 kh�i heo r�ng th�t tr� l�i giao cho l�o b�n ") 
end 

function W27_get_no() 
end 
