-- script viet hoa By http://tranhba.com  míi xu©n tiÓu lÔ tói 
-- script viet hoa By http://tranhba.com Suyu 2004.1.12 

function main(sel) 
-- script viet hoa By http://tranhba.com  b¶o th¹ch #10# tû lÖ ®­a b¶o th¹ch mét viªn # 
p=random(1,100); 
if(p<=10)then 
		AddEventItem((238+mod(p,3)))
end; 

-- script viet hoa By http://tranhba.com  bao tiÒn l× x× # gi¸ trÞ 10000 ®Ých bao tiÒn l× x× mét # 
AddItem(6,1,14,1,0,0,0); 

-- script viet hoa By http://tranhba.com  ph¸o b«ng #1 c¸ ph¸o b«ng # 
AddItem(6,0,11,1,0,0,0); 
return 0 
end
