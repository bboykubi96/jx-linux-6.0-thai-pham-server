-- script viet hoa By http://tranhba.com  long m�n tr�n ch�c n�ng ti�m t�p h�a l�o b�n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-16) 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");
function main(sel) 
local buttons = store_sel_village_extend() 
Say("B�n �i�m tuy nh� nh�ng c�i g� c�ng c� . kh�ch quan mu�n mua g� ?",getn(buttons), buttons) 
end; 

function yes() 
Sale(26) 
end; 

function no() 
end; 
