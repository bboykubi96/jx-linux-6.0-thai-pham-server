-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn ng­êi ®i ®­êng 8 nghe thÊy tuÖ ®èi tho¹i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)
if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
SetTask(1256, 2); 
return 
else 
Talk(1,"","Bëi v× c¸i nµy qu¸i bÖnh khãa tr¸i th­îng Hµnh S¬n ®İch ®­êng , ta kh«ng cã mÆt thÊy ®éc c« ®¹i hiÖp liÔu .") 
return 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
return 
end 

Say("Nghe thÊy tuÖ # ng­¬i còng lµ lªn nói b¸i pháng ®éc c« ®¹i hiÖp sao ? h¾n nh­ng lµ thÇn t­îng cña ta , ng­¬i nÕu lµ thÊy h¾n , phiÒn to¸i ®Ó cho h¾n cho ta kı c¸ tªn . ? ",0) 

end; 
