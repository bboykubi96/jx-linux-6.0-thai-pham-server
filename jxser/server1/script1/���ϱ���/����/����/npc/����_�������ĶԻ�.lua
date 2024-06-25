-- script viet hoa By http://tranhba.com  t©y nam b¾c khu §­êng m«n b¸n binh khİ ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),1) 
if (GetFaction() == "tangmen") or (Uworld37 == 127) then 
Say("§­êng thiÕu # nh÷ng thø nµy binh khİ ®Òu lµ bæn m«n ¸m khİ phßng cïng háa khİ phßng chÕ t¹o ®İch , ë n¬i kh¸c còng kh«ng thÊy nhiÒu a . ", 2,"Giao dŞch /yes","Kh«ng giao dŞch /no") 
else 
Talk(1,"","M«n chñ cã lÖnh , bæn m«n binh khİ kh«ng ph¶i b¸n cho ngo¹i nh©n !") 
end 
end; 

function yes() 
Sale(54) 
end; 

function no() 
end; 
