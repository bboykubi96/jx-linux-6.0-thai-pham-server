-- script viet hoa By http://tranhba.com  t©y nam b¾c khu §­êng m«n b¸n trang bŞ ®İch ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),1) 
if (GetFaction() == "tangmen") or (Uworld37 == 127) then 
Say("§­êng nhÑ # ®Ö tö bæn m«n th©n ph¸p khinh linh , kh«ng chØ cã bëi v× tËp chİnh lµ ®éc m«n tuyÖt häc , cßn ph¶i İch víi nh÷ng thø nµy nhÑ liÒn ®İch trang bŞ ——", 2,"Giao dŞch /yes","Kh«ng giao dŞch /no") 
else 
Talk(1,"","M«n chñ cã lÖnh , bæn m«n trang bŞ chØ b¸n cho ®ång m«n !") 
end 
end; 

function yes() 
Sale(55) 
end; 

function no() 
end; 
