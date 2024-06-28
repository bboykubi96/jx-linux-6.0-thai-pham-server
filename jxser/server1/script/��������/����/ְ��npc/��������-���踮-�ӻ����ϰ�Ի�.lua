-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ tiÖm t¹p hãa l·o b¶n ®èi tho¹i 
Include("\\script\\global\\global_zahuodian.lua");

function main(sel) 
local Buttons = store_sel_extend(); 
Say("TiÖm t¹p hãa l·o b¶n # muèn mua ®iÓm g× ? ta ®©y n¬i nµy ®Ých hµng nh­ng ®Çy ®ñ hÕt liÔu , muèn g× cã g× , xem mét chót ®i . ", 2,"Giao dÞch /yes","Kh«ng giao dÞch /no"); 
end; 


function yes() 
Sale(20); -- script viet hoa By http://tranhba.com  b¾n ra giao dÞch khu«ng 
end; 

function BuyChristmasCard() 
Sale(97); 
end 


function no() 
end; 
