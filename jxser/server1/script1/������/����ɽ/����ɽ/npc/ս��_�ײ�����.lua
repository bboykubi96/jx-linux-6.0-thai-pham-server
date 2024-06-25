-- script viet hoa By http://tranhba.com  Giang Nam khu la tiªu s¬n chiÕn ®Êu _ l«i bé cuång lang .lua # tiªu diÖt h¸i hoa tÆc nhiÖm vô # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-28) 

function OnDeath() 
Uworld43 = GetTask(43) 
if (Uworld43 >= 20) and (Uworld43 < 29) then -- script viet hoa By http://tranhba.com  kh«ng cã giÕt ®ñ 10 c¸ 
		SetTask(43,Uworld43 + 1)
Msg2Player("Ng­¬i giÕt mét tªn l«i bé cuång lang ") 
elseif (Uworld43 == 29) or (Uworld43 == 30) then -- script viet hoa By http://tranhba.com  ®· giÕt ®ñ 10 c¸ 
SetTask(43,30) 
Msg2Player("Ng­¬i giÕt mét tªn l«i bé cuång lang , tíi xem mét chót lang chñ cã c¸i g× ph¶n øng . ") 
end 
end 
