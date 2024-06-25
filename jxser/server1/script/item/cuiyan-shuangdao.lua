-- script viet hoa By http://tranhba.com  Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com  # thóy khãi song ®ao # 
-- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng b¨ng t©m tiªn tö 
-- script viet hoa By http://tranhba.com  thóy khãi , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(337) 
if(party ~= "cuiyan") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ thóy khãi 
Msg2Player("Ng­¬i cÇm # thóy khãi ®ao ph¸p # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ thóy khãi nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # thóy khãi ®ao ph¸p # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt Ýt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # thóy khãi ®ao ph¸p # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(337,1) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng 
Msg2Player("Häc ®­îc kü n¨ng “ b¨ng t©m tiªn tö ” . ") 
return 0 
end 
end
