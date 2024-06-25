-- script viet hoa By http://tranhba.com Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com # ThiÕu L©m quyÒn ph¸p # cuèn mét # 
-- script viet hoa By http://tranhba.com  häc ®­îc §¹t Ma ®é giang kü n¨ng 
-- script viet hoa By http://tranhba.com  ThiÕu L©m , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(318) 
if(party ~= "shaolin") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ ThiÕu L©m 
Msg2Player("Ng­¬i cÇm # ThiÕu L©m quyÒn ph¸p # cuèn mét # nghiªn cøu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ ThiÕu L©m nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ng­¬i cÇm # ThiÕu L©m quyÒn ph¸p # cuèn mét # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt İt , kh«ng hiÖu qu¶ g× . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ng­¬i ®· ®em # ThiÕu L©m quyÒn ph¸p # cuèn mét # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a häc kh«ng tíi bÊt kú vËt g× . ") 
return 1 
else 
AddMagic(318,1) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng 
Msg2Player("Häc ®­îc kü n¨ng “ §¹t Ma ®é giang ” . ") 
return 0 
end 
end
