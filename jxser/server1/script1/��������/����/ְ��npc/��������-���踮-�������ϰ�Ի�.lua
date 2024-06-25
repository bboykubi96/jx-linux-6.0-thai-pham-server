-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ thî rÌn cöa hµng l·o b¶n ®èi tho¹i 

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc> thî rÌn # muèn mua ®iÓm g× binh khÝ ? tïy tiÖn chän , tïy tiÖn nh×n , kh«ng cã chuyÖn g× . " 
function main(sel) 
tiejiang_city(TIEJIANG_DIALOG); 
end; 


function yes() 
Sale(19); -- script viet hoa By http://tranhba.com  b¾n ra giao dÞch khu«ng 
end; 
