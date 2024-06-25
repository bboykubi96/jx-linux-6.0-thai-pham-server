-- script viet hoa By http://tranhba.com  Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com  # n¨m ®éc nguyÒn rña # cuèn ba # 
-- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng ®o¹n g©n hñ cèt 
-- script viet hoa By http://tranhba.com  n¨m ®éc , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(390) 
if(party ~= "wudu") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ n¨m ®éc 
Msg2Player("Ng­¬i cÇm # n¨m ®éc nhiÕp t©m thuËt # cuèn ba # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ n¨m ®éc nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # n¨m ®éc nhiÕp t©m thuËt # cuèn ba # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt Ýt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # n¨m ®éc nhiÕp t©m thuËt # cuèn ba # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(390,0) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng 
Msg2Player("Häc ®­îc kü n¨ng “ ®o¹n g©n hñ cèt ” . ") 
return 0 
end 
end
