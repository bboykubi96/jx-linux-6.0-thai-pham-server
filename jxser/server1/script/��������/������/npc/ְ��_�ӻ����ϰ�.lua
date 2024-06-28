-- script viet hoa By http://tranhba.com  long m«n trÊn chøc n¨ng tiÖm t¹p hãa l·o b¶n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-16) 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");
function main(sel) 
local buttons = store_sel_village_extend() 
Say("Bæn ®iÕm tuy nhá nh­ng c¸i g× còng cã . kh¸ch quan muèn mua g× ?",getn(buttons), buttons) 
end; 

function yes() 
Sale(26) 
end; 

function no() 
end; 
