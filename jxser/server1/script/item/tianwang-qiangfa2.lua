-- script viet hoa By http://tranhba.com  Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com  # Thiªn v­¬ng th­¬ng ph¸p # cuèn hai # 
-- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng ®uæi tinh trôc th¸ng 
-- script viet hoa By http://tranhba.com  Thiªn v­¬ng , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(323) 
if(party ~= "tianwang") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ Thiªn v­¬ng 
Msg2Player("Ng­¬i cÇm # Thiªn v­¬ng th­¬ng ph¸p # cuèn hai # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ Thiªn v­¬ng nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # Thiªn v­¬ng th­¬ng ph¸p # cuèn hai # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt Ýt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # Thiªn v­¬ng th­¬ng ph¸p # cuèn hai # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(323,1) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng 
Msg2Player("Häc ®­îc kü n¨ng “ ®uæi tinh trôc th¸ng ” . ") 
return 0 
end 
end
