-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� ng��i �i ���ng 8 a b� ��i tho�i 

Include("\\script\\task\\newtask\\branch\\zhongli\\branch_zhonglitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main(sel) 
Uworld1055 = nt_getTask(1055) 
if ( Uworld1055 ~= 0 ) then 
branch_aniu() 
else 
Say("A b� # ng��i ta n�i th��c chi ��ch n� oa xinh ��p nh�t , c�ng kh�ng bi�t l� th�t hay gi� , ta ��y ng��i li�n kh�ng c� ��ng ph�i m�t n�a ��y ? ",0) 
end 
end;
