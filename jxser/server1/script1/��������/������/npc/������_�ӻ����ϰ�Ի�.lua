-- script viet hoa By http://tranhba.com  t�y b�c nam khu v�nh nh�c tr�n ti�m t�p h�a l�o b�n ��i tho�i 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");

function main(sel) 
local buttons = store_sel_village_extend(); 
Say("Kh�ch quan mu�n mua c�i g� ? c�i g� c�ng c� #",getn(buttons), buttons); 
end; 


function yes() 
Sale(84); -- script viet hoa By http://tranhba.com  b�n ra giao d�ch khu�ng 
end; 


function no() 
end;
