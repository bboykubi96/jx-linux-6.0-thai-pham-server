-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ kü viÖn l·o b¶o ®èi tho¹i 

function main(sel) 

if ( GetSex() == 0 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i giíi tÝnh v× nam 

i = random(0,2) 

if (i == 0) then 
Say("Kü viÖn l·o b¶o # cã c©u c¸ch ng«n gäi “ th­íc chi ®Ých bµ di , tuy ®øc ®Ých h¸n ” , ng­¬i h¼n nghe nãi qua chø ? ",0) 
return 
end 

if (i == 1) then 
Say("Kü viÖn l·o b¶o # bän ta v¹n tö v­ên ®Ých n÷ oa nhi còng ®Òu lµ tõ th­íc chi tinh chän tÕ chän tíi , tõng c¸i mét kh«ng chØ cã d¸ng dÊp tÕ b× nén nhôc , b¹ch tr¾ng no·n tÞnh , h¬n n÷a nhu t×nh nh­ n­íc , thiÖn gi¶i nh©n ý , c«ng tö ®i vµo vui ®ïa mét chót ®i #", 0) 
return 
end 

if (i == 2) then 
Say("Kü viÖn l·o b¶o # ai yªu , ta tiÓu gia , ng­¬i thÝch g× d¹ng ®Ých c« n­¬ng ? ta ®©y mµ ®Ých c« n­¬ng ng­êi ng­êi ®Òu lµ quèc s¾c thiªn h­¬ng , tói ng­¬i hµi lßng #", 0) 
return 
end 

else -- script viet hoa By http://tranhba.com  nhµ ch¬i giíi tÝnh v× n÷ 

Say("Kü viÖn l·o b¶o # yªu , ®©y chÝnh lµ mãn míi mÎ chuyÖn , ®¹i khuª n÷ còng tíi ®i d¹o kü viÖn # ng­îng ngïng , ta ®©y n¬i nµy còng kh«ng tiÕp ®·i n÷ kh¸ch #", 0) 

end; 



end;
