-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn qu¸n r­îu l·o b¶n ®èi tho¹i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)
if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
SetTask(1256, 2); 
else 
Talk(1,"","Mêi kh¸ch quan dõng b­íc , chóng ta tiÓu ®iÕm kh«ng d¸m cöa më liÔu . h«m nay trÊn nhá ng­êi trªn kh«ng khái mµ chÕt , chóng ta n¬i nµy còng ®· chÕt mÊy qua ®­êng kh¸ch nh©n . b©y giê quan phñ ®ang ®iÒu tra , tiÓu nh©n b©y giê rÊt sî v× vËy kh«ng thÓ tiÕp tôc më tiÖm .") 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u ngåi ng«i ®Òn tíi s­ th¸i ph¸p lùc v« biªn , ng­¬i ®i hái mét chót nh×n .") 
return 
end 

Say("Qu¸n r­îu l·o b¶n # kÓ tõ ph¸i Hµnh S¬n ®İch ®éc c« ®¹i hiÖp lµm minh chñ vâ l©m sau , chóng ta c¸i nµy nho nhá nam nh¹c trÊn liÒn trë nªn n¸o nhiÖt lªn . trÊn trªn th­êng sÏ cã mét İt ®ao kh¸ch kiÕm hiÖp xuÊt hiÖn , ta ®©y İt r­îu qu¸n ®İch lµm ¨n còng so tr­íc kia tèt h¬n nhiÒu . ",0); 

end; 
