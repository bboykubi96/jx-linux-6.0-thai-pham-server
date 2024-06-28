-- script viet hoa By http://tranhba.com  Trung Nguyªn nam khu ®¹o h­¬ng th«n tiÖm t¹p hãa l·o b¶n ®èi tho¹i 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");

function main(sel) 
local buttons = store_sel_village_extend(); 
Say("C¸c n¬i ®Ých hµng , ta chç nµy ®Òu cã ",getn(buttons), buttons); 
end; 


function yes() 
Sale(90); -- script viet hoa By http://tranhba.com  b¾n ra giao dÞch khu«ng 
end; 


function no() 
end;
