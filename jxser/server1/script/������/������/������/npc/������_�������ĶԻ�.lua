-- script viet hoa By http://tranhba.com  hai hå khu Thiªn v­¬ng gióp b¸n binh khİ bang chóng ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld38 = GetByte(GetTask(38),1) 
if (GetFaction() == "tianwang") or (Uworld38 == 127) then 
Say("Thiªn v­¬ng bang chóng # xem mét chót chóng ta Thiªn v­¬ng gióp c¸c huynh ®Ö chÕ t¹o ®İch binh khİ ®i #", 2,"Giao dŞch /yes","Kh«ng giao dŞch /no") 
else 
Talk(1,"","Bang chñ cã lÖnh # bæn bang binh khİ chØ b¸n cho ®ång m«n huynh ®Ö ") 
end 
end; 

function yes() 
Sale(57); 
end; 

function no() 
end; 
