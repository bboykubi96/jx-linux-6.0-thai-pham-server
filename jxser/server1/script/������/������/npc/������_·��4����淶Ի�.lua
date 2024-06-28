-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn ng­êi ®i ®­êng 4 triÖu ng©n ®Ô ®èi tho¹i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
SetTask(1256, 2); 
else 
Talk(1,"","A . b©y giê trÊn trªn cã cµng ngµy cµng nhiÒu ng­êi ®· chÕt còng kh«ng biÕt nguyªn nh©n . «ng trêi a #.") 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
return 
end 

i = random(0,1) 

if (i == 0) then 
Say("TriÖu ng©n ®Ô # ta thËt lµ nhí ®i häc ®­êng ®äc s¸ch , nh­ng lµ phô th©n kh«ng ®Ó cho , nãi c« g¸i ®äc s¸ch l¹i kh«ng thÓ thi c«ng danh , ch¼ng qua lµ l·ng phİ tiÒn . ",0) 
return 
end; 

if (i == 1) then 
Say("TriÖu ng©n ®Ô # phô th©n l·o thŞ ®¸nh ta , nãi ta lµ th­êng tiÒn hµng , cã lóc cßn ngay c¶ ta mÑ cïng nhau ®¸nh . nÕu nh­ ta gièng nh­ ng­¬i mét d¹ng cã b¶n l·nh , phô th©n cã ph¶i hay kh«ng còng sÏ kh«ng ®¸nh l¹i ta ? ",0) 
end; 

end; 
