-- script viet hoa By http://tranhba.com  Giang Nam khu la tiªu s¬n chiÕn ®Êu _ v©n bé s¬n ­ng .lua # tiªu diÖt h¸i hoa tÆc nhiÖm vô # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-28) 

function OnDeath() 
Uworld43 = GetTask(43) 
if (Uworld43 >= 60) and (Uworld43 < 69) then -- script viet hoa By http://tranhba.com  kh«ng cã giÕt ®ñ 10 c¸ 
		SetTask(43,Uworld43 + 1)
Msg2Player("Ng­¬i diÖt mét tªn v©n bé s¬n ­ng ") 
elseif (Uworld43 == 69) or (Uworld43 == 70) then -- script viet hoa By http://tranhba.com  ®· giÕt ®ñ 10 c¸ 
SetTask(43,70) 
Msg2Player("Ng­¬i diÖt mét tªn v©n bé s¬n ­ng , xem mét chót ­ng chñ cã c¸i g× ph¶n øng . ") 
end 
end 
