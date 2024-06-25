-- script viet hoa By http://tranhba.com Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com # phi tiªu thuËt # cöu cung bay tinh # 
-- script viet hoa By http://tranhba.com  häc ®­îc cöu cung bay tinh kü n¨ng 
-- script viet hoa By http://tranhba.com  §­êng m«n , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(342) 
if(party ~= "tangmen") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ §­êng m«n 
Msg2Player("Ng­¬i cÇm # phi tiªu thuËt # cöu cung bay tinh # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ §­êng m«n nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # phi tiªu thuËt # cöu cung bay tinh # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt Ýt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # phi tiªu thuËt # cöu cung bay tinh # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(342,1) 
Msg2Player("Häc ®­îc kü n¨ng “ cöu cung bay tinh ” . ") 
return 0 
end 
end
