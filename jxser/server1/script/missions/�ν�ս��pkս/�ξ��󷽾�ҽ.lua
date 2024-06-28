-- script viet hoa By http://tranhba.com  Trung Nguyªn b¾c khu tèng kim chiÕn tr­êng tèng qu©n sèng l¹i ®iÓm qu©n y 
-- script viet hoa By http://tranhba.com  lı h©n 2004-10-14 

function main(sel) 
if (GetCurCamp() == 1) then 
SetFightState(0) 
Say("Tr¸ng sÜ h¼n mua chót thuèc trŞ th­¬ng phßng th©n , chiÕn tr­êng sinh tö khã liÖu !", 2,"Mua thuèc /yes","Kh«ng mua /no") 
else 
Talk(1,"","B©y ®©u / ng­êi võa tíi , mau tíi b¾t gi¸n ®iÖp ") 
end; 
end; 

function yes() 
Sale(53) 
end; 

function no() 
end;
