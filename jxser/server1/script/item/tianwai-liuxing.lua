-- script viet hoa By http://tranhba.com  Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com  # sao r¬i # ®ao ph¸p # 
-- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng Thiªn Ngo¹i L­u Tinh 
-- script viet hoa By http://tranhba.com  ngµy nhÉn , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(362) 
if(party ~= "tianren") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ ngµy nhÉn 
Msg2Player("Ng­¬i cÇm # sao r¬i # ®ao ph¸p # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ ngµy nhÉn nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # sao r¬i # ®ao ph¸p # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt Ýt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # sao r¬i # ®ao ph¸p # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(362,1) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng 
Msg2Player("Häc ®­îc kü n¨ng “ Thiªn Ngo¹i L­u Tinh ” . ") 
return 0 
end 
end
