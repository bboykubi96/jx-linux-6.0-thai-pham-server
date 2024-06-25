-- script viet hoa By http://tranhba.com  Created by fangjieying 2003-5-17 
-- script viet hoa By http://tranhba.com  # Th¸i Cùc kiÕm phæ # cuèn hai # 
-- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng ng­êi kiÕm hîp nhÊt 
-- script viet hoa By http://tranhba.com  Vâ §­¬ng , 80 cÊp trë lªn cã thÓ dïng 
function main(sel) 
party = GetLastAddFaction() 
skill = HaveMagic(368) 
if(party ~= "wudang") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ Vâ §­¬ng 
Msg2Player("Ngµi nghiªn cøu Th¸i Cùc kiÕm phæ - cuèn 2 ®· l©u , vÉn kh«ng cã lÜnh ngé c¸i g× ") 
return 1 
elseif(GetLever < 80) then -- script viet hoa By http://tranhba.com  lµ Vâ §­¬ng nh­ng ch­a tíi 80 cÊp 
Msg2Player("Ngµi nghiªn cøu Th¸i Cùc kiÕm phæ - cuèn 2 ®· l©u , lÜnh ngé rÊt İt . ") 
return 1 
elseif(skill ~= -1) then -- script viet hoa By http://tranhba.com  ®· häc qua nªn kü n¨ng 
Msg2Player("Ngµi nghiªn cøu Th¸i Cùc kiÕm phæ - cuèn 2 ®· l©u , nh­ng lµ vÉn kh«ng cã häc ®­îc c¸i g× ") 
return 1 
else 
AddMagic(368,1) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng 
Msg2Player("Häc ®­îc ng­êi kiÕm hîp nhÊt kü n¨ng . ") 
return 0 
end 
end
