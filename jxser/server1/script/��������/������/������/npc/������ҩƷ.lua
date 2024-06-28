-- script viet hoa By http://tranhba.com  thóy khãi cöa b¸n thuèc ®İch ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld36 = GetByte(GetTask(36),2) 
if (GetFaction() == "cuiyan") or (Uworld36 == 127) then 
Say("Trang bŞ dÆm tr©n quı thuèc men cµng nhiÒu , l¹i cµng h÷u İch ", 2,"Giao dŞch /yes","Kh«ng giao dŞch /no") 
else 
Talk(1,"","M«n chñ cã lÖnh , bæn m«n thuèc men chØ b¸n cho ®ång m«n .") 
end 
end; 

function yes() 
Sale(68) 
end; 

function no() 
end; 
