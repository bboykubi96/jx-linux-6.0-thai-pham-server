-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn kh¸ch s¹n l·o b¶n ®èi tho¹i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
SetTask(1256, 2); 
else 
Talk(1,"","Mêi kh¸ch quan vµo , ®õng sî ®õng sî , mÆc dï ë trong phßng kh¸ch ®Ó vµi híp quan tµi , nh­ng lµ ta vÉn cöa më ®ãn kh¸ch còng lµ v× y bÖnh . ta sî kh«ng ph¶i lµ c¸i ®ã . a a , tiÓu ®iÕm rÊt an toµn , dÜ nhiªn ë lo¹n thÕ trung c¸i nµy thu lÖ phİ nhÊt ®Şnh ph¶i líp m­êi ®iÓm .") 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
return 
end 

Say("Kh¸ch s¹n l·o b¶n # kh¸ch xem quan ®İch d¸ng vÎ , còng lµ mét ë vÕt ®ao th­îng kiÕm sèng ng­êi ®i ? chóng ta n¬i nµy th­êng sÏ cã ng­êi trong giang hå xuÊt nhËp , ®Òu lµ lªn nói b¸i pháng ®éc c« ®¹i hiÖp ®İch . ",0); 

end; 
