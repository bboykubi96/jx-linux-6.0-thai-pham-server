-- script viet hoa By http://tranhba.com  Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com  # Th¸i cùc quyÒn phæ # cuèn ba # 
-- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng Thiªn §Þa V« Cùc 
-- script viet hoa By http://tranhba.com  Vâ §­¬ng , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(365) 
if(party ~= "wudang") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ Vâ §­¬ng 
Msg2Player("Ng­¬i cÇm # Th¸i cùc quyÒn phæ # cuèn ba # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ Vâ §­¬ng nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # Th¸i cùc quyÒn phæ # cuèn ba # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt Ýt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # Th¸i cùc quyÒn phæ # cuèn ba # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(365,1) 
Msg2Player("Häc ®­îc kü n¨ng “ Thiªn §Þa V« Cùc ” . ") 
return 0 
end 
end
