-- script viet hoa By http://tranhba.com  Trung Nguyªn b¾c khu tèng kim chiÕn tr­êng tèng qu©n qu©n y 
-- script viet hoa By http://tranhba.com  t« vò 

function main(sel) 
if (GetCurCamp() == 1) then 
Say("Kh«ng sî hy sinh ®Ých binh míi lµ h¶o binh , ra cöa ®¸nh giÆc ph¶i b¶o träng th©n thÓ , mua chót thuèc sao ? ", 2,"Mua thuèc /yes","Kh«ng mua /no") 
else 
Talk(1,""," ë ®©u ra gian tÕ # vÖ binh mau ®­a ng­êi nµy b¾t l¹i #") 
end 
end; 

function yes() 
Sale(53) 
end; 

function no() 
end;
