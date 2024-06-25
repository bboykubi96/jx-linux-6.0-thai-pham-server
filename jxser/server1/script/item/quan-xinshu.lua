-- script viet hoa By http://tranhba.com Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com # ngù t©m thuËt # 
-- script viet hoa By http://tranhba.com  häc ®­îc say tiªn lçi cèt kü n¨ng 
-- script viet hoa By http://tranhba.com  C«n L«n , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(394) 
if(party ~= "kunlun") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ C«n L«n 
Msg2Player("Ng­¬i cÇm # ngù t©m thuËt # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ C«n L«n nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # ngù t©m thuËt # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt Ýt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # ngù t©m thuËt # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(394,0) 
Msg2Player("Häc ®­îc kü n¨ng “ say tiªn lçi cèt ” . ") 
return 0 
end 
end
