-- script viet hoa By http://tranhba.com  hai hå khu Thiªn v­¬ng gióp b¸n trang bÞ ®Ých bang chóng ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld38 = GetByte(GetTask(38),1) 
if (GetFaction() == "tianwang") or (Uworld38 == 127) then 
Say("Thiªn v­¬ng bang chóng # bæn bang c¸c huynh ®Ö c¶ ngµy ®«ng b«n t©y bµo ®Ých , còng kh«ng thÓ kh«ng cã mét hai bé h¶o trang bÞ ®i ? ", 2,"Giao dÞch /yes","Kh«ng giao dÞch /no") 
else 
Talk(1,"","Bang chñ cã lÖnh # bæn bang binh khÝ chØ b¸n cho ®ång m«n huynh ®Ö ") 
end 
end; 

function yes() 
Sale(58); 
end; 

function no() 
end; 
