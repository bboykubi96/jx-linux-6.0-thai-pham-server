-- script viet hoa By http://tranhba.com  §¹i Lý # chøc n¨ng tiÖm t¹p hãa l·o b¶n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-16) 
Include("\\script\\global\\global_zahuodian.lua");

function main(sel) 
local Buttons = store_sel_extend(); 
Say("Ta ®©y ®Ých ®å l¹i tiÖn nghi l¹i h¶o b¸n , ngµy h«m qua míi võa vµo míi hµng trë l¹i , thËt vui vÎ ", getn(Buttons), Buttons) 
end; 

function yes() 
Sale(17) 
end; 

function BuyChristmasCard() 
Sale(97); 
end 

function no() 
end; 
