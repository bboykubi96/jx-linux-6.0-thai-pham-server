-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn Nga Mi ®Ö tö ®èi tho¹i 

function main(sel) 
Talk(4, "select","Nga Mi ®Ö tö # thiªn h¹ c« g¸i s¸ng chÕ ®İch trong m«n ph¸i , lÊy bæn ph¸i lµ thø nhÊt . ","Bæn ph¸i ®Ö tö ®Òu v× c« g¸i , kh«ng chØ cã vâ c«ng cao c­êng , h¬n n÷a ®a tµi ®a nghÖ , cÇm kú th­ häa kh«ng chç nµo kh«ng tinh . ","Cã ng­êi nãi giang hå lµ nam nh©n thÕ giíi , nh­ng lµ bæn ph¸i l¹i cã thÓ cïng ThiÕu L©m Vâ §­¬ng ®Ønh lËp , v× vËy ng­êi trong vâ l©m kh«ng khái kİnh ®Ö tö bæn m«n ba ph©n . ","Bæn ph¸i chØ lÊy n÷ ®Ö tö . "); 
end; 

function select() 
Say("Nga Mi ®Ö tö # ng­¬i nghÜ gia nhËp bæn ph¸i sao ? ", 2,"Gia nhËp /yes","Kh«ng gia nhËp /no"); 
end; 


function yes() 
if (GetSeries() ~= 2) then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i kh«ng thuéc vÒ thñy hÖ 
Say("Nga Mi ®Ö tö # ng­¬i kh«ng thuéc vÒ thñy hÖ , kh«ng thÓ gia nhËp bæn ph¸i . ", 0) 
else 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i ®· thuéc vÒ thñy hÖ ®İch mét m«n ph¸i 
Say("Nga Mi ®Ö tö # chØ cã kh«ng thuéc vÒ bÊt kú m«n ph¸i nµo ng­êi cña , míi cã thÓ gia nhËp bæn ph¸i . ", 0) 
else 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
if ( GetSex() == 0 ) then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i giíi tİnh v× nam 
Say("Nga Mi ®Ö tö # bæn m«n chØ lÊy n÷ ®Ö tö . ", 0) 
else -- script viet hoa By http://tranhba.com  nhµ ch¬i giíi tİnh v× n÷ 
SetFaction("Ph¸i Nga Mi ") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp ph¸i Nga Mi 
NewWorld(13, 1867, 5021) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
SetFightState(1) -- script viet hoa By http://tranhba.com  nhµ ch¬i chuyÓn ®æi thµnh tr¹ng th¸i chiÕn ®Êu 
SetRevPos(13) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
SetTask(1, 10) 
Say("Hoan nghªnh ng­¬i gia nhËp ph¸i Nga Mi #",0) 
end 
else 
Say("Nga Mi ®Ö tö # bän ng­¬i cÊp kh«ng ®ñ , thiÕt chí thao chi qu¸ cÊp . tu luyÖn ®Õn cÊp m­êi sau tíi t×m ta n÷a ®i #", 0) 
end 
end 
end; 
end; 

function no() 
end; 
