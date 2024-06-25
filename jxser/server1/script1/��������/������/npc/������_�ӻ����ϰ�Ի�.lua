-- script viet hoa By http://tranhba.com  t©y b¾c nam khu vÜnh nh¹c trÊn tiÖm t¹p hãa l·o b¶n ®èi tho¹i 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");

function main(sel) 
local buttons = store_sel_village_extend(); 
Say("Kh¸ch quan muèn mua c¸i g× ? c¸i g× còng cã #",getn(buttons), buttons); 
end; 


function yes() 
Sale(84); -- script viet hoa By http://tranhba.com  b¾n ra giao dÞch khu«ng 
end; 


function no() 
end;
