-- script viet hoa By http://tranhba.com  nam nh¹c trÊn ng­êi ®i ®­êng ch¹y löa 
-- script viet hoa By http://tranhba.com  2004/4/17 tªn c©u ch¹y löa nhiÖm vô by fangjieying 

function main() 
Uworld76 = GetTask(76) 
if (Uworld76 == 10) then 
Talk(1,"","Mét con tuÊn m· ®øng d­íi tµng c©y , ®ang thô trø lç tai nghe ®ång b¹n ®Ých tiÕng kªu ") 
SetTask(76,20) 
Msg2Player("Xem ra con ngùa nµy bÞ bÖnh , ph¶i lµ cïng chuyÖn nµy cã liªn quan ") 
elseif (Uworld76 == 50) and (HaveItem(375) == 1) then -- script viet hoa By http://tranhba.com  ch÷a hÕt 
DelItem(375) 
SetTask(76,60) 
DelMagic(396) 
if (HaveMagic(397) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Þnh ph¶i kh«ng cã kü n¨ng ®Ých míi cho kü n¨ng 
AddMagic(397) 
end 
Msg2Player("Ng­¬i lÜnh ngé ®Õn vò ®­êng sèng l¹i t©m ph¸p ") 
Talk(1,"","Ng­¬i ®em m¸u dung hîp cho m· nuèt vµo , ®ång thêi vËn giã xu©n m­a mãc kü thuËt t©m ph¸p , ch¹y löa ¸nh m¾t cña dÇn dÇn s¸ng lªn . ®Õn b©y giê ng­¬i míi lÜnh ngé ®Õn m­a mãc sèng l¹i t©m ph¸p ") 
elseif (Uworld76 >10) and (Uworld76 < 50) then 
Talk(1,"","Ch¹y löa kªu mét tiÕng , gièng nh­ sÊm ®¸nh mét d¹ng ") 
elseif (Uworld76 > 50) then 
Talk(1,"","Ng­¬i y tèt l¾m ch¹y löa ®Ých bÖnh ") 
else 
Talk(1,"","Con ngùa nµy mao ®á nh­ m¸u , tªn gäi ' ch¹y löa '") 
end 
end 
