-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn §­êng m«n ®Ö tö ®èi tho¹i 

function main(sel) 
Talk(4, "select","§­êng m«n ®Ö tö # bæn m«n hïng cø Xuyªn Thôc , b»ng vµo ¸m khİ cïng háa khİ ®éc bé vâ l©m , uèng dù giang hå ®¹t mÊy tr¨m n¨m l©u . ","Ng­êi trong giang hå nãi bæn m«n mµ biÕn s¾c , cã thÓ thÊy ®­îc bæn m«n ®İch lîi h¹i #","C¸i g× vâ l©m ch¸nh ®¹o # d©n téc ®¹i nghÜa , tÊt c¶ ®Òu lµ chã m¸ # chóng ta chØ dùa theo bµi cña m×nh lı ra bµi , còng kh«ng nguyÖn cïng nh÷ng thø kia nÕu nãi danh m«n chİnh ph¸i kÕt giao , còng kh«ng tiÕt cïng tµ ma oai ®¹o v× ngò . ","Muèn gia nhËp bæn m«n còng kh«ng ph¶i lµ mét chuyÖn dÔ dµng chuyÖn cña , cè ı bÊt l­¬ng ng­êi cña chóng ta còng kh«ng nªn #"); 
end; 


function select() 
Say("§­êng m«n ®Ö tö # muèn gia nhËp bæn m«n sao ? ", 2,"Gia nhËp /yes","Kh«ng gia nhËp /no"); 
end; 


function yes() 
if (GetSeries() ~= 1) then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i kh«ng thuéc vÒ méc hÖ 
Say("§­êng m«n ®Ö tö # ng­¬i kh«ng thuéc vÒ méc hÖ , kh«ng thÓ gia nhËp bæn m«n . ", 0) 
else 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i ®· thuéc vÒ méc hÖ ®İch mét m«n ph¸i 
Say("§­êng m«n ®Ö tö # chØ cã kh«ng thuéc vÒ bÊt kú m«n ph¸i nµo ng­êi cña , míi cã thÓ gia nhËp bæn m«n . ", 0) 
else 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
SetFaction("§­êng m«n ") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp §­êng m«n 
NewWorld(25, 3972, 5247) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
SetFightState(1) -- script viet hoa By http://tranhba.com  nhµ ch¬i chuyÓn ®æi thµnh tr¹ng th¸i chiÕn ®Êu 
SetRevPos(15) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
SetTask(2, 10) 
Say("Hoan nghªnh ng­¬i gia nhËp §­êng m«n #",0) 
else 
Say("§­êng m«n ®Ö tö # bän ng­¬i cÊp kh«ng ®ñ , cßn lµ chê tu luyÖn ®Õn cÊp m­êi sau tíi t×m ta n÷a ®i #", 0) 
end 
end 
end 
end; 

function no() 
end; 
