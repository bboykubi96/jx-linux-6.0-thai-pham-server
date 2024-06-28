-- script viet hoa By http://tranhba.com  Trung Nguyªn b¾c khu tèng kim chiÕn tr­êng kim qu©n sèng l¹i ®iÓm qu©n y 
-- script viet hoa By http://tranhba.com  lý h©n 2004-10-14 

function main(sel) 
if (GetCurCamp() == 2) then 
SetFightState(0) 
Say("T­íng qu©n cÇn ph¶i mua c¸i g× kh«ng ?", 2,"Mua thuèc /yes","Kh«ng mua /no") 
else 
Talk(1,"","Xem ng­¬i tÆc mi thö nh·n , muèn g¹t ta b¸n cho ng­¬i ®¹i kim quèc ®Ých thÇn d­îc cho ng­¬i a ?") 
end; 
end; 

function yes() 
Sale(53) 
end; 

function no() 
end;
