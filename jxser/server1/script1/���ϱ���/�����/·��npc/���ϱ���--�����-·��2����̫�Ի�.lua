-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  t�y nam b�c khu giang t�n th�n ng��i �i ���ng 2 Ng� l�o th�i ��i tho�i 

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")


function main(sel) 
Uworld1051 = nt_getTask(1051) 
if ( Uworld1051 ~= 0 ) then 
branch_wulaotai() 
else 
Say("Ng� l�o th�i # ta m�c d� kh�ng c� con trai , nh�ng l� nu�i c� hi�u thu�n ��ch h�o khu� n� , nhai ph��ng ��u n�i l�o b� ta c� ph�c kh� . ",0) 
end 
end;
