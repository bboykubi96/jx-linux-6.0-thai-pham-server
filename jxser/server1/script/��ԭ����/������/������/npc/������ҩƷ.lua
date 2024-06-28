-- script viet hoa By http://tranhba.com  ph¸i ThiÕu l©m b¸n thuèc ®İch ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld38 = GetByte(GetTask(38),2) 
if (GetFaction() == "shaolin") or (Uworld38 == 127) then 
Say("MÆc dï nãi bæn ph¸i vâ c«ng cã thÓ c­êng th©n kiÖn thÓ , nh­ng lµ còng cã ng· bÖnh ®İch thêi ®iÓm , cho nªn , cÇn ph¶i cã c¸c lo¹i thuèc men .", 2,"Giao dŞch /yes","Kh«ng giao dŞch /no") 
else 
Talk(1,"","Ch­ëng m«n cã lÖnh , bæn ph¸i thuèc men chØ b¸n cho ®ång m«n ") 
end 
end; 

function yes() 
Sale(71) 
end; 

function no() 
end; 
