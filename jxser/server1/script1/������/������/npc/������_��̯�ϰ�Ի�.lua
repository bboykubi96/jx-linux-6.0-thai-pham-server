-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn trµ than l·o b¶n ®èi tho¹i 

function main(sel) 
if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)
if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u c¸ ng«i ®Òn bªn trong tíi s­ th¸i , ph¸p lùc v« biªn , ng­¬i ®i hái mét chót ®i .") 
SetTask(1256, 2); 
else 
Talk(1,"","Ng­¬i tíi hái th¨m liªn quan tíi ng­êi chÕt tin tøc ®óng kh«ng ? # , gÇn nhÊt Hµnh S¬n d­íi ch©n cã rÊt nhiÒu ng­êi chÕt . kh«ng biÕt míi tiÕn triÓn sao , ng­¬i ®i hái mét chót ng­êi kh¸c ®i .") 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe nãi cã mét vŞ kh«ng biÕt tõ ®©u c¸ ng«i ®Òn bªn trong tíi s­ th¸i , ph¸p lùc v« biªn , ng­¬i ®i hái mét chót ®i .") 
return 
end; 

i = random(0,2) 
if (i == 0) then 
Talk(1,"","Trµ than l·o b¶n # kh¸ch quan , ®i tíi Hµnh S¬n d­íi ch©n , nhÊt ®Şnh ph¶i nÕm thö mét chót chóng ta n¬i nµy m©y mï trµ . ") 
elseif (i == 1) then 
Talk(1,"","Trµ than l·o b¶n #“ danh s¬n tªn n­íc næi danh trµ ” , m©y mï trµ lµ chóng ta Hµnh S¬n ®İch ®Æc s¶n , cöu phô næi danh , ngay tõ lóc ®­êng thay mÆt liÒn bŞ liÖt vµo cèng phÈm . ") 
else 
Talk(1,"","Trµ than l·o b¶n # m©y mï trµ t­ vŞ thuÇn hËu , mïi th¬m nång nÆc , thuÇn mµ kh«ng ®¹m , nång mµ kh«ng s¸p . # th­îng mét bÇu , kh«ng chØ cã thÓ sinh t©n mæ ph¹p , vÉn cã thÓ tiªu thö gi¶i ®éc ®©y . ") 
end 
end 
