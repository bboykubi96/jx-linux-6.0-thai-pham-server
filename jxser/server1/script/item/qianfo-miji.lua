-- script viet hoa By http://tranhba.com  Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com  # ngµn phËt bİ tŞch # 
-- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng ngµn phËt ngµn l¸ 
-- script viet hoa By http://tranhba.com  Nga Mi , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(380) 
if(party ~= "emei") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ Nga Mi 
Msg2Player("Ng­¬i cÇm # Nga Mi phËt quang ch­ëng bİ tŞch # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ Nga Mi nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # Nga Mi phËt quang ch­ëng bİ tŞch # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt İt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # Nga Mi phËt quang ch­ëng bİ tŞch # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(380,1) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng 
Msg2Player("Häc ®­îc kü n¨ng “ phong s­¬ng bÓ ¶nh ” . ") 
return 0 
end 
end
