-- script viet hoa By http://tranhba.com Create by yfeng 2004-3-15 
-- script viet hoa By http://tranhba.com Modified by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com # tô tµi b¾n cung # m­a sa lª hoa # 
-- script viet hoa By http://tranhba.com  häc ®­îc m­a sa lª hoa kü n¨ng 
-- script viet hoa By http://tranhba.com  §­êng m«n , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(302) 
if(party ~= "tangmen") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ §­êng m«n 
Msg2Player("Ng­¬i cÇm # tô tµi b¾n cung # m­a sa lª hoa # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLevel() < 80) then -- script viet hoa By http://tranhba.com  lµ §­êng m«n nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # tô tµi b¾n cung # m­a sa lª hoa # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt Ýt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # tô tµi b¾n cung # m­a sa lª hoa # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(302,1) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng 
Msg2Player("Häc ®­îc kü n¨ng “ m­a sa lª hoa ” . ") 
return 0 
end 
end
