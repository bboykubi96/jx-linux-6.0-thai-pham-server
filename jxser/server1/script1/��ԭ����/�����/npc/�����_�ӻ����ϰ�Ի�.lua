-- script viet hoa By http://tranhba.com  Trung Nguy�n nam khu ��o h��ng th�n ti�m t�p h�a l�o b�n ��i tho�i 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");

function main(sel) 
local buttons = store_sel_village_extend(); 
Say("C�c n�i ��ch h�ng , ta ch� n�y ��u c� ",getn(buttons), buttons); 
end; 


function yes() 
Sale(90); -- script viet hoa By http://tranhba.com  b�n ra giao d�ch khu�ng 
end; 


function no() 
end;
