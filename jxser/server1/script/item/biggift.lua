-- script viet hoa By http://tranhba.com  míi xu©n ®¹i lÔ tói 
-- script viet hoa By http://tranhba.com Suyu 2004.1.12 

function main(sel) 
-- script viet hoa By http://tranhba.com  trang bŞ #10# tû lÖ ®­a huyÕn khèc phi phong mét mãn 
p=random(1,100); 
if(p<=10)then 
AddItem(6,1,15,1,0,0,0) 
end; 

-- script viet hoa By http://tranhba.com  b¶o th¹ch #50# tû lÖ ®­a b¶o th¹ch mét viªn # 
p=random(1,100); 
if(p<=50)then 
		AddEventItem((238+mod(p,3)))
end; 

-- script viet hoa By http://tranhba.com  bao tiÒn l× x× # gi¸ trŞ 100000 ®İch bao tiÒn l× x× mét # 
AddItem(6,1,13,1,0,0,0); 

-- script viet hoa By http://tranhba.com  ph¸o b«ng #2 c¸ ph¸o b«ng # 
AddItem(6,0,11,1,0,0,0); 
AddItem(6,0,11,1,0,0,0); 
return 0 
end
