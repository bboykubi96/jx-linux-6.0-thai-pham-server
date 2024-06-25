-- script viet hoa By http://tranhba.com Create by yfeng 2004-3-15 
-- script viet hoa By http://tranhba.com Modified by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com # bÉy rËp thuËt # lo¹n hoµn kİch # 
-- script viet hoa By http://tranhba.com  häc ®­îc lo¹n hoµn kİch kü n¨ng 
-- script viet hoa By http://tranhba.com  §­êng m«n , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(351) 
if(party ~= "tangmen") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ §­êng m«n 
Msg2Player("Ng­¬i cÇm # bÉy rËp thuËt # lo¹n hoµn kİch # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ §­êng m«n nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # bÉy rËp thuËt # lo¹n hoµn kİch # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt İt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # bÉy rËp thuËt # lo¹n hoµn kİch # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(351,0) 
Msg2Player("Häc ®­îc kü n¨ng “ lo¹n hoµn kİch ” . ") 
return 0 
end 
end
