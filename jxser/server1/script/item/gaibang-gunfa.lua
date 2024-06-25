-- script viet hoa By http://tranhba.com Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com # C¸i Bang c«n ph¸p # 
-- script viet hoa By http://tranhba.com  häc ®­îc thiªn h¹ v« chã kü n¨ng 
-- script viet hoa By http://tranhba.com  C¸i Bang , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(359) 
if(party ~= "gaibang") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ C¸i Bang 
Msg2Player("Ng­¬i cÇm # C¸i Bang c«n ph¸p # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ C¸i Bang nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # C¸i Bang c«n ph¸p # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt Ýt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # C¸i Bang c«n ph¸p # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(359,1) 
Msg2Player("Häc ®­îc kü n¨ng “ thiªn h¹ v« chã ” . ") 
return 0 
end 
end
