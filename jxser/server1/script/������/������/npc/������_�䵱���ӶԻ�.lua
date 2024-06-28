-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn Vâ §­¬ng ®Ö tö ®èi tho¹i 

function main(sel) 
Talk(3, "select","Vâ §­¬ng ®Ö tö # thiªn h¹ vâ häc , b¾c t«ng ThiÕu L©m , nam sïng Vâ §­¬ng , ng­¬i nghÜ tÊt nghe nãi qua chø ? ","Bæn ph¸i vâ c«ng ®Ó ı lÊy tŞnh chÕ ®éng , lÊy nhu th¾ng c­¬ng , lÊy ng¾n th¾ng tr­êng , lÊy chËm kİch mau # lÊy ı vËn khİ , lÊy khİ vËn th©n , hËu ph¸t chÕ nh©n . h­íng h­ ®iÒm ®¹m , lÊy v« vi th¾ng cã chót , lÊy v« h×nh th¾ng h÷u h×nh , míi lµ vâ häc cao nhÊt c¶nh giíi . ","Bæn ph¸i vâ c«ng cã “ n¨m bÊt truyÒn ” , tøc nhu cèt chÊt thóy # t©m hiÓm # h¶o ®Êu # cuång r­îu # nhÑ lé ng­êi , bÊt truyÒn . "); 
end; 


function select() 
Say("Vâ §­¬ng ®Ö tö # muèn gia nhËp bæn m«n sao ? ", 2,"Gia nhËp /yes","Kh«ng gia nhËp /no"); 
end; 


function yes() 
if (GetSeries() ~= 4) then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i kh«ng thuéc vÒ thæ hÖ 
Say("Vâ §­¬ng ®Ö tö # ng­¬i kh«ng thuéc vÒ thæ hÖ , kh«ng thÓ gia nhËp bæn ph¸i . ", 0) 
else 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i ®· thuéc vÒ thæ hÖ ®İch mét m«n ph¸i 
Say("Vâ §­¬ng ®Ö tö # chØ cã kh«ng thuéc vÒ bÊt kú m«n ph¸i nµo ng­êi cña , míi cã thÓ gia nhËp bæn ph¸i . ", 0) 
else 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
SetFaction("Ph¸i Vâ §­¬ng ") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp Vâ §­¬ng 
-- script viet hoa By http://tranhba.com NewWorld(mapID, x, y) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
-- script viet hoa By http://tranhba.com SetFightState(1) -- script viet hoa By http://tranhba.com  nhµ ch¬i chuyÓn ®æi thµnh tr¹ng th¸i chiÕn ®Êu 
-- script viet hoa By http://tranhba.com SetRevPos(ID) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com SetTask(5, 10) 
Say("Hoan nghªnh ng­¬i gia nhËp ph¸i Vâ §­¬ng #",0) 
else 
Say("Vâ §­¬ng ®Ö tö # häc vâ chi ®¹o , dôc tèc th× bÊt ®¹t . ng­¬i míi vµo giang hå , hay lµ tr­íc thËt tèt häc hái kinh nghiÖm ®i #", 0) 
end 
end 
end 
end; 

function no() 
end; 
