-- script viet hoa By http://tranhba.com  Ngò ®éc gi¸o b¸n thuèc ®Ých ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),2) 
if (GetFaction() == "wudu") or (Uworld37 == 127) then 
Say("MÆc dï bæn ph¸i c«ng phu lÊy ®éc lµm chñ , nh­ng lµ diÖu thñ håi xu©n ®Ých h¶o d­îc còng kh«ng cã thiÕu , muèn thö nh×n mét chót sao ", 2,"Giao dÞch /yes","Kh«ng giao dÞch /no") 
else 
Talk(1,"","Gi¸o chñ cã lÖnh : ng­¬i thuèc kh«ng thÓ b¸n cho ngo¹i nh©n ") 
end 
end; 

function yes() 
Sale(80) 
end; 

function no() 
end; 
