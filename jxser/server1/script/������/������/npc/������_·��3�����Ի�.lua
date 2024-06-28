-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn ng­êi ®i ®­êng 3 a phóc ®èi tho¹i 

function main(sel) 

if ( GetTask(1256) == 1) then 

		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe nãi cã mét vÞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n . .") 
SetTask(1256, 2); 
else 
Talk(1,"","Ng­¬i tíi thËt lµ ®óng lóc . chóng ta nhanh lªn t×m ®­îc c¸i bÖnh nµy ®Ých c¨n nguyªn # ®Ó cho ng­êi ta rÊt lo l¾ng a .") 
end 
return 
elseif ( GetTask(1256) == 2) then 
Talk(1,"","Nghe nãi cã mét vÞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
return 
end 

Say("Muèn th­îng Hµnh S¬n häc vâ , lµm mét muèn ®éc c« ®¹i hiÖp ng­êi nh­ vËy , sõ c­êng phï nh­îc , thay trêi hµnh ®¹o , d­êng nµo uy phong #",0) 

end; 
