-- script viet hoa By http://tranhba.com  thóy khãi cöa b¸n trang bÞ ®Ých ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld36 = GetByte(GetTask(36),2) 
if (GetFaction() == "cuiyan") or (Uworld36 == 127) then 
Say("Muèn nh×n c¸c tû muéi v¸ y phôc sao ? bªn ngoµi kh«ng mua ®­îc .", 2,"Giao dÞch /yes","Kh«ng giao dÞch /no") 
else 
Talk(1,"","M«n chñ cã lÖnh , bæn m«n trang bÞ chØ b¸n cho ®ång m«n .") 
end 
end; 

function yes() 
Sale(67) 
end; 

function no() 
end; 
