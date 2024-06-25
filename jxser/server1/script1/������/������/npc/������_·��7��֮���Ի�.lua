-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn ng­êi ®i ®­êng cèc chi lan ®èi tho¹i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
SetTask(1256, 2); 
return 
else 
Talk(1,"","Xong råi , thËt xong råi , ph¶i lµ tõ ta ®©y cã mét vŞ anh hïng hµo kiÖt cã thÓ tiÕn vµo trÊn nhá sao ? kh«ng nghÜ tíi ca ca ta bŞ tËt bÖnh ®o¹t ®i liÔu t¸nh m¹ng , thËt lµ ®¸ng tiÕc . # , hay lµ ®i hái mét chót ng­êi kh¸c ®i .") 
return 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
return 
end 

i = random(0,1) 

if (i == 0) then 
Say("Cèc chi lan # ®éc c« phu nh©n thËt cã phóc khİ , tr­îng phu lµ mét ng­êi ng­êi c¶nh ng­ìng ®İch ®¹i anh hïng , thËt ®Ó cho ng­êi h©m mé . ",0) 
return 
end; 

if (i == 1) then 
Say("Cèc chi lan # n÷ nh©n c¶ ®êi träng yÕu nhÊt chİnh lµ kh«ng muèn g¶ lçi ng­êi , t­¬ng lai cña ta còng muèn g¶ cho mét thiÕt cèt nhu t×nh ®İch ®¹i hiÖp . ",0) 
end; 

end; 
