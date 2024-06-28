-- script viet hoa By http://tranhba.com  t©y nam b¾c khu §­êng m«n b¸n thuèc ®Ých ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),1) 
if (GetFaction() == "tangmen") or (Uworld37 == 127) then 
Say("§­êng ®éc # bæn m«n tuyÖt xu©n tÈu ®Ých y thuËt cã thÓ nãi ®éc bé thiªn h¹ , h¾n nghiªn chÕ nh÷ng thuèc nµy hoµn , h¾c h¾c , nãi lµ ho¹t tö nh©n thÞt b¹ch cèt còng kh«ng qu¸ ®¸ng a #", 2,"Giao dÞch /yes","Kh«ng giao dÞch /no") 
else 
Talk(1,"","M«n chñ cã lÖnh , bæn m«n thuèc men kh«ng thÓ b¸n cho ngo¹i nh©n !") 
end 
end; 

function yes() 
Sale(56) 
end; 

function no() 
end; 
