-- script viet hoa By http://tranhba.com  ph¸i ThiÕu l©m b¸n trang bŞ ®İch ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld38 = GetByte(GetTask(38),2) 
if (GetFaction() == "shaolin") or (Uworld38 == 127) then 
Say("Ng­êi xuÊt gia kh«ng thÓ ph« tr­¬ng , nh÷ng thø nµy y m¹o ®Òu lµ tõ c¸c vŞ s­ huynh ®Ö lµm .", 2,"Giao dŞch /yes","Kh«ng giao dŞch /no") 
else 
Talk(1,"","Ch­ëng m«n cã lÖnh , bæn ph¸i trang bŞ chØ b¸n cho ®ång m«n ") 
end 
end; 

function yes() 
Sale(70) 
end; 

function no() 
end; 
