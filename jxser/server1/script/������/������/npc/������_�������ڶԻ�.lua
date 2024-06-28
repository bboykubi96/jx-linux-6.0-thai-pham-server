-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn Thiªn v­¬ng bang chóng ®èi tho¹i 

function main(sel) 
Talk(3, "select","Thiªn v­¬ng bang chóng # bæn bang bang chñ d­¬ng anh ë trªn giang hå h¸ch h¸ch næi danh , ®õng xem nµng lµ c¸ c« g¸i , nh­ng lµ vâ nghÖ cao c­êng , ®¶m thøc h¬n ng­êi , kh«ng ®Ó cho bùc mµy r©u , c¸c huynh ®Ö trong bang còng dïng/uèng nµng #","Bæn bang bang chóng tr¶i réng hai hå , nhiÒu ng­êi thÕ lín , thiªn h¹ kh«ng ng­êi d¸m khinh th­êng chóng ta #","Bæn bang võa kh¸ng qu©n Kim # còng ph¶n tèng ®×nh , c¸c huynh ®Ö ®Òu lµ nghÌo khæ d©n chóng xuÊt th©n , x«ng x¸o giang hå còng chØ lµ v× cã con ®­êng sèng . hoµng ®Õ nµo ngåi giang s¬n , cïng chóng ta còng kh«ng quan hÖ thÕ nµo #"); 
end; 

function select() 
Say("Thiªn v­¬ng bang chóng # ng­¬i nghÜ gia nhËp bæn bang sao ? ", 2,"Gia nhËp /yes","Kh«ng gia nhËp /no"); 
end; 


function yes() 
if (GetSeries() ~= 0) then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i kh«ng thuéc vÒ kim hÖ 
Say("Thiªn v­¬ng bang chóng # lÊy t­ chÊt cña ng­¬i cïng c¨n cèt kh«ng thİch hîp tu luyÖn bæn m«n vâ c«ng , chóng ta kh«ng muèn ngé ng­êi con em , ng­¬i cßn lµ kh¸c ®Çu minh s­ ®i #", 0) 
else 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i ®· thuéc vÒ kim hÖ ®İch mét m«n ph¸i 
Say("Thiªn v­¬ng bang chóng # chØ cã kh«ng thuéc vÒ bÊt kú m«n ph¸i nµo ng­êi cña , míi cã thÓ gia nhËp bæn bang . ", 0) 
else 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
if ( GetSex() == 1 ) then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i giíi tİnh v× n÷ 
Say("Thiªn v­¬ng bang chóng # bæn bang bang chóng ®Òu lµ chót th« hµo ®¹i h¸n , gièng nh­ ng­¬i vËy kiÒu tİch tİch ®İch c« n­¬ng còng kh«ng thİch hîp bæn bang . ", 0) 
else -- script viet hoa By http://tranhba.com  nhµ ch¬i giíi tİnh v× nam 
SetFaction("Thiªn v­¬ng gióp ") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp Thiªn v­¬ng gióp 
-- script viet hoa By http://tranhba.com NewWorld(59, 1425, 3472) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
-- script viet hoa By http://tranhba.com SetFightState(1) -- script viet hoa By http://tranhba.com  nhµ ch¬i chuyÓn ®æi thµnh tr¹ng th¸i chiÕn ®Êu 
-- script viet hoa By http://tranhba.com SetRevPos(21) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com SetTask(3, 10) 
Say("Hoan nghªnh ng­¬i gia nhËp Thiªn v­¬ng gióp #",0) 
end 
else 
Say("Thiªn v­¬ng bang chóng # häc vâ chi ®¹o , dôc tèc th× bÊt ®¹t . bän ng­¬i cÊp kh«ng ®ñ , chê tu luyÖn ®Õn cÊp m­êi sau tíi t×m ta n÷a ®i #", 0) 
end 
end 
end; 
end; 
